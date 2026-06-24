#!/usr/bin/env bash
# hooks/test/run-tests.sh — smoke tests for the v1 runtime hooks.
# Builds synthetic Claude Code hook payloads and asserts on hook output.
set -uo pipefail

HERE="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
HOOKS="$(cd -- "$HERE/.." && pwd)"
ROOT="$(cd -- "$HOOKS/.." && pwd)"
SLOP="$HOOKS/ai-slop-detector.sh"
ARCH="$HOOKS/archive-reminder.sh"

export CLAUDE_PROJECT_DIR="$ROOT"

pass=0
fail=0
failures=()

assert_contains() {
  local label="$1" haystack="$2" needle="$3"
  if printf '%s' "$haystack" | grep -qF -- "$needle"; then
    pass=$((pass + 1))
    printf '  ✓ %s\n' "$label"
  else
    fail=$((fail + 1))
    failures+=("$label — expected substring: $needle")
    printf '  ✗ %s\n    expected: %s\n' "$label" "$needle"
  fi
}

assert_empty() {
  local label="$1" haystack="$2"
  if [ -z "$haystack" ]; then
    pass=$((pass + 1))
    printf '  ✓ %s\n' "$label"
  else
    fail=$((fail + 1))
    failures+=("$label — expected empty output, got: ${haystack:0:200}")
    printf '  ✗ %s\n    got: %s\n' "$label" "${haystack:0:200}"
  fi
}

assert_max_ms() {
  local label="$1" elapsed="$2" budget="$3"
  if [ "$elapsed" -le "$budget" ]; then
    pass=$((pass + 1))
    printf '  ✓ %s (%dms ≤ %dms)\n' "$label" "$elapsed" "$budget"
  else
    fail=$((fail + 1))
    failures+=("$label — ${elapsed}ms exceeds ${budget}ms budget")
    printf '  ✗ %s (%dms > %dms)\n' "$label" "$elapsed" "$budget"
  fi
}

run_hook() {
  local hook="$1" tool="$2" file="$3" event="${4:-PostToolUse}"
  local payload
  payload="$(jq -n --arg event "$event" --arg tool "$tool" --arg path "$file" \
    '{hook_event_name: $event, tool_name: $tool, tool_input: {file_path: $path}}')"
  printf '%s' "$payload" | "$hook" 2>/dev/null
}

time_ms() {
  # Best-of-3 to filter cold-start jitter. Prints the minimum latency in ms.
  python3 -c '
import sys, subprocess, time
hook = sys.argv[1]
payload = sys.argv[2]
runs = []
for _ in range(3):
    t0 = time.perf_counter()
    subprocess.run([hook], input=payload, capture_output=True, text=True, timeout=5)
    runs.append(int((time.perf_counter() - t0) * 1000))
print(min(runs))
' "$@"
}

printf '\n== ai-slop-detector ==\n'

# Trip case
out="$(run_hook "$SLOP" Write "$HERE/fixtures/slop-trip.md")"
ctx="$(printf '%s' "$out" | jq -r '.hookSpecificOutput.additionalContext // ""' 2>/dev/null)"
assert_contains "trip: hard ban hits surfaced"  "$ctx" "hard ban hit"
assert_contains "trip: leverage flagged"        "$ctx" "leverage"
assert_contains "trip: delve flagged"           "$ctx" "delve"
assert_contains "trip: not just … false-pivot"  "$ctx" "not just"
assert_contains "trip: soft warn surfaced"      "$ctx" "soft warn"
assert_contains "trip: today's opener flagged"  "$ctx" "today"
assert_contains "trip: furthermore flagged"     "$ctx" "furthermore"

# Clean case
out="$(run_hook "$SLOP" Write "$HERE/fixtures/slop-clean.md")"
assert_empty "clean: no warnings emitted" "$out"

# Allow pragmas
out="$(run_hook "$SLOP" Write "$HERE/fixtures/slop-allow.md")"
ctx="$(printf '%s' "$out" | jq -r '.hookSpecificOutput.additionalContext // ""' 2>/dev/null)"
if [ -n "$ctx" ]; then
  if printf '%s' "$ctx" | grep -qiE 'leverage|robust|utilize|cutting-edge|paradigm[ -]shift|revolutionize|unleash'; then
    fail=$((fail + 1))
    failures+=("allow: pragmas should suppress these — got: $ctx")
    printf '  ✗ allow: pragmas should have suppressed banned terms\n    got: %s\n' "${ctx:0:400}"
  else
    pass=$((pass + 1))
    printf '  ✓ allow: pragmas suppressed banned terms (residual hits ok)\n'
  fi
else
  pass=$((pass + 1))
  printf '  ✓ allow: no warnings emitted\n'
fi

# Non-prose path is ignored
out="$(run_hook "$SLOP" Write "$ROOT/scripts/generate-marketplace.py")"
assert_empty "skip: non-prose extension ignored" "$out"

# Stop event with no recent edits should produce no output (best-effort)
payload='{"hook_event_name":"Stop","tool_name":"","tool_input":{}}'
out="$(printf '%s' "$payload" | "$SLOP" 2>/dev/null)"
# may be empty, may have warnings if other markdown was recently touched; just don't crash
if [ "$?" -eq 0 ] || [ -z "$out" ] || printf '%s' "$out" | jq -e . >/dev/null 2>&1; then
  pass=$((pass + 1))
  printf '  ✓ stop: hook ran without crashing\n'
else
  fail=$((fail + 1))
  failures+=("stop: hook produced invalid JSON")
  printf '  ✗ stop: invalid output\n'
fi

# Latency budget
result="$(time_ms "$SLOP" '{"hook_event_name":"PostToolUse","tool_name":"Write","tool_input":{"file_path":"'"$HERE"'/fixtures/slop-trip.md"}}')"
elapsed="$(printf '%s' "$result" | head -1)"
assert_max_ms "latency: slop-detector under 200ms" "$elapsed" 200

printf '\n== archive-reminder ==\n'

out="$(run_hook "$ARCH" Write "$HERE/fixtures/archive-trip.md")"
ctx="$(printf '%s' "$out" | jq -r '.hookSpecificOutput.additionalContext // ""' 2>/dev/null)"
assert_contains "trip: archive nudge surfaced" "$ctx" "archive-reminder"
assert_contains "trip: counts un-archived URLs" "$ctx" "URL(s) without"
assert_contains "trip: example.net listed" "$ctx" "example.net/follow-up"

out="$(run_hook "$ARCH" Write "$HERE/fixtures/archive-clean.md")"
assert_empty "clean: archived/silenced URLs ignored" "$out"

# Non-prose extension ignored
out="$(run_hook "$ARCH" Write "$ROOT/scripts/generate-marketplace.py")"
assert_empty "skip: non-prose extension ignored" "$out"

# Latency budget
result="$(time_ms "$ARCH" '{"hook_event_name":"PostToolUse","tool_name":"Write","tool_input":{"file_path":"'"$HERE"'/fixtures/archive-trip.md"}}')"
elapsed="$(printf '%s' "$result" | head -1)"
assert_max_ms "latency: archive-reminder under 200ms" "$elapsed" 200

printf '\n== summary ==\n'
printf '  passed: %d\n  failed: %d\n' "$pass" "$fail"
if [ "$fail" -gt 0 ]; then
  printf '\nfailures:\n'
  for f in "${failures[@]}"; do printf '  - %s\n' "$f"; done
  exit 1
fi
exit 0

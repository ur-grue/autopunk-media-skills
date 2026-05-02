#!/usr/bin/env bash
# hooks/ai-slop-detector.sh — Claude Code PostToolUse + Stop hook.
# Reads banned phrases from skills/editing/ai-writing-detox.md at runtime
# and surfaces matches as a warning via the additionalContext channel.
# Zero telemetry. Latency target <200ms. Fail-open: any error → silent exit 0.
set -uo pipefail

HERE="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
AWK_LIB="$HERE/ai-slop-detector.awk"

# Resolve the skill file. Project-local first, then per-user cache, then env override.
resolve_skill() {
  local candidates=()
  [ -n "${AUTOPUNK_DETOX_SKILL:-}" ] && candidates+=("$AUTOPUNK_DETOX_SKILL")
  [ -n "${CLAUDE_PROJECT_DIR:-}" ] && candidates+=("$CLAUDE_PROJECT_DIR/skills/editing/ai-writing-detox.md")
  candidates+=("$PWD/skills/editing/ai-writing-detox.md")
  candidates+=("$HOME/.claude/autopunk/ai-writing-detox.md")
  for c in "${candidates[@]}"; do
    [ -r "$c" ] && { printf '%s' "$c"; return 0; }
  done
  return 1
}

SKILL="$(resolve_skill)" || exit 0
[ -r "$AWK_LIB" ] || exit 0
command -v jq >/dev/null 2>&1 || exit 0

INPUT="$(cat 2>/dev/null || true)"
EVENT="$(printf '%s' "$INPUT" | jq -r '.hook_event_name // ""' 2>/dev/null)"
TOOL="$(printf '%s' "$INPUT" | jq -r '.tool_name // ""' 2>/dev/null)"

files=()
case "$EVENT" in
  PostToolUse)
    case "$TOOL" in
      Write|Edit|MultiEdit)
        path="$(printf '%s' "$INPUT" | jq -r '.tool_input.file_path // empty' 2>/dev/null)"
        [ -n "$path" ] && [ -r "$path" ] && files+=("$path")
        ;;
      *) exit 0 ;;
    esac
    ;;
  Stop|SubagentStop)
    # Best-effort final pass: prose files modified in the last 30 min in cwd.
    root="${CLAUDE_PROJECT_DIR:-$PWD}"
    while IFS= read -r f; do
      files+=("$f")
    done < <(find "$root" -type f \( -iname '*.md' -o -iname '*.txt' -o -iname '*.docx' \) -mmin -30 2>/dev/null \
      | grep -Ev '/(node_modules|\.git|dist|build|target|venv|\.venv|\.next|\.cache)/' || true)
    ;;
  *) exit 0 ;;
esac

# Filter to prose extensions; skip code paths defensively.
prose=()
for f in "${files[@]:-}"; do
  [ -z "${f:-}" ] && continue
  case "$f" in
    *.md|*.MD|*.txt|*.TXT|*.docx|*.DOCX) prose+=("$f") ;;
  esac
done
[ "${#prose[@]}" -eq 0 ] && exit 0

report="$(printf '%s\n' "${prose[@]}" | LC_ALL=C awk -v skill="$SKILL" -f "$AWK_LIB" 2>/dev/null || true)"
[ -z "$report" ] && exit 0

# Cap output length so we never balloon the agent context.
max_chars=4000
if [ "${#report}" -gt "$max_chars" ]; then
  report="${report:0:$max_chars}
… (truncated; fix the visible hits and the rest will surface on the next save)"
fi

jq -n --arg msg "$report" --arg event "${EVENT:-PostToolUse}" \
  '{hookSpecificOutput: {hookEventName: $event, additionalContext: $msg}}'

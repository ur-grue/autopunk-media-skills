#!/usr/bin/env bash
# hooks/archive-reminder.sh — Claude Code PostToolUse hook.
# After Write/Edit/MultiEdit on prose files, surface URLs that don't have a
# Wayback / Archive.today sibling. Emits a one-line nudge via additionalContext.
# Silence per URL with `<!-- noarchive -->` on the same line.
# Zero telemetry. Latency target <200ms. Fail-open: any error → silent exit 0.
set -uo pipefail

command -v jq >/dev/null 2>&1 || exit 0

INPUT="$(cat 2>/dev/null || true)"
EVENT="$(printf '%s' "$INPUT" | jq -r '.hook_event_name // ""' 2>/dev/null)"
TOOL="$(printf '%s' "$INPUT" | jq -r '.tool_name // ""' 2>/dev/null)"

[ "$EVENT" = "PostToolUse" ] || exit 0
case "$TOOL" in Write|Edit|MultiEdit) ;; *) exit 0 ;; esac

path="$(printf '%s' "$INPUT" | jq -r '.tool_input.file_path // empty' 2>/dev/null)"
[ -n "$path" ] && [ -r "$path" ] || exit 0
case "$path" in *.md|*.MD|*.txt|*.TXT) ;; *) exit 0 ;; esac

report="$(awk '
  function trim_url(u) {
    gsub(/[.,;:!?\047")>}\]]+$/, "", u)
    return u
  }
  function is_archive(u) {
    return (u ~ /web\.archive\.org/ || u ~ /archive\.(today|ph|is|li)/)
  }
  BEGIN { in_code = 0; n_urls = 0; n_arch = 0 }
  /^```/ { in_code = !in_code; next }
  in_code { next }
  {
    if ($0 ~ /<!--[[:space:]]*noarchive[[:space:]]*-->/) next
    s = $0
    while (match(s, /https?:\/\/[^[:space:]<>"\047)>}\]]+/)) {
      u = trim_url(substr(s, RSTART, RLENGTH))
      if (is_archive(u)) {
        archives[n_arch++] = u
      } else {
        if (!(u in seen_urls)) {
          seen_urls[u] = NR
          urls[n_urls++] = u
        }
      }
      s = substr(s, RSTART + RLENGTH)
    }
  }
  END {
    nudge_n = 0
    for (i = 0; i < n_urls; i++) {
      u = urls[i]
      archived = 0
      for (j = 0; j < n_arch; j++) {
        if (index(archives[j], u) > 0) { archived = 1; break }
      }
      if (!archived) {
        nudge[nudge_n++] = u
      }
    }
    if (nudge_n == 0) exit
    print "🗄  archive-reminder — " nudge_n " URL(s) without a Wayback / Archive.today sibling:"
    for (i = 0; i < nudge_n && i < 20; i++) print "  · " nudge[i]
    if (nudge_n > 20) print "  · … and " (nudge_n - 20) " more"
    print ""
    print "Add archive links under a `## Sources` block or silence one with `<!-- noarchive -->` on the same line."
  }
' "$path" 2>/dev/null || true)"

[ -z "$report" ] && exit 0

jq -n --arg msg "$report" --arg event "$EVENT" \
  '{hookSpecificOutput: {hookEventName: $event, additionalContext: $msg}}'

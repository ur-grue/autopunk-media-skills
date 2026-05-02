#!/usr/bin/env bash
# scripts/install-hooks.sh — opt-in per-user installer for the autopunk runtime hooks.
# Merges the ai-slop-detector + archive-reminder hooks into ~/.claude/settings.json
# and copies the banned-phrase skill into ~/.claude/autopunk/ so the hook can find
# it from any project. Idempotent. Backs up settings.json before writing.
#
# Usage:
#   bash scripts/install-hooks.sh           # interactive, asks before writing
#   bash scripts/install-hooks.sh --yes     # non-interactive
#   bash scripts/install-hooks.sh --uninstall
set -euo pipefail

HERE="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
ROOT="$(cd -- "$HERE/.." && pwd)"
HOOKS_SRC="$ROOT/hooks"
SKILL_SRC="$ROOT/skills/editing/ai-writing-detox.md"

CLAUDE_DIR="$HOME/.claude"
SETTINGS="$CLAUDE_DIR/settings.json"
INSTALL_DIR="$CLAUDE_DIR/autopunk"
SLOP_DEST="$INSTALL_DIR/ai-slop-detector.sh"
ARCH_DEST="$INSTALL_DIR/archive-reminder.sh"
AWK_DEST="$INSTALL_DIR/ai-slop-detector.awk"
SKILL_DEST="$INSTALL_DIR/ai-writing-detox.md"

YES=0
UNINSTALL=0
for arg in "$@"; do
  case "$arg" in
    --yes|-y)   YES=1 ;;
    --uninstall|--remove) UNINSTALL=1 ;;
    *) printf 'unknown arg: %s\n' "$arg" >&2; exit 2 ;;
  esac
done

require() {
  command -v "$1" >/dev/null 2>&1 || { printf 'missing required tool: %s\n' "$1" >&2; exit 1; }
}
require jq
require awk

confirm() {
  [ "$YES" -eq 1 ] && return 0
  printf '%s [y/N] ' "$1"
  read -r ans
  case "$ans" in y|Y|yes|YES) return 0 ;; *) return 1 ;; esac
}

backup() {
  [ -f "$SETTINGS" ] || return 0
  local stamp; stamp="$(date +%Y%m%d-%H%M%S)"
  cp "$SETTINGS" "$SETTINGS.bak.$stamp"
  printf '  · backed up existing settings → %s\n' "$SETTINGS.bak.$stamp"
}

ensure_settings_object() {
  if [ ! -f "$SETTINGS" ]; then
    printf '{}\n' > "$SETTINGS"
  elif ! jq -e 'type == "object"' "$SETTINGS" >/dev/null 2>&1; then
    printf 'error: %s exists but is not a JSON object\n' "$SETTINGS" >&2
    exit 1
  fi
}

do_install() {
  printf 'autopunk-media-skills runtime hooks installer\n'
  printf '  hooks → %s\n' "$INSTALL_DIR"
  printf '  settings → %s\n' "$SETTINGS"
  printf '\nThis will:\n'
  printf '  1. copy %s to %s/\n' "ai-slop-detector.{sh,awk}, archive-reminder.sh" "$INSTALL_DIR"
  printf '  2. copy the ai-writing-detox skill so the hook can find it from any project\n'
  printf '  3. merge a `hooks` block into %s\n' "$SETTINGS"
  printf '\nClaude Code will prompt you to approve the hook commands the next time it runs.\n'

  confirm 'proceed?' || { printf 'cancelled\n'; exit 0; }

  mkdir -p "$INSTALL_DIR"
  cp "$HOOKS_SRC/ai-slop-detector.sh" "$SLOP_DEST"  && chmod 0755 "$SLOP_DEST"
  cp "$HOOKS_SRC/ai-slop-detector.awk" "$AWK_DEST" && chmod 0644 "$AWK_DEST"
  cp "$HOOKS_SRC/archive-reminder.sh" "$ARCH_DEST" && chmod 0755 "$ARCH_DEST"
  cp "$SKILL_SRC" "$SKILL_DEST"                    && chmod 0644 "$SKILL_DEST"
  printf '  · copied hooks + skill to %s\n' "$INSTALL_DIR"

  ensure_settings_object
  backup

  local merged
  merged="$(jq --arg slop "$SLOP_DEST" --arg arch "$ARCH_DEST" --arg skill "$SKILL_DEST" '
    .hooks = (.hooks // {}) |
    .hooks.PostToolUse = ((.hooks.PostToolUse // []) | map(select(.__autopunk != true))) +
      [{
        __autopunk: true,
        matcher: "Write|Edit|MultiEdit",
        hooks: [
          { type: "command", command: ("AUTOPUNK_DETOX_SKILL=" + ($skill|@sh) + " " + ($slop|@sh)) },
          { type: "command", command: ($arch|@sh) }
        ]
      }] |
    .hooks.Stop = ((.hooks.Stop // []) | map(select(.__autopunk != true))) +
      [{
        __autopunk: true,
        hooks: [
          { type: "command", command: ("AUTOPUNK_DETOX_SKILL=" + ($skill|@sh) + " " + ($slop|@sh)) }
        ]
      }]
  ' "$SETTINGS")"
  printf '%s\n' "$merged" > "$SETTINGS"
  printf '  · merged hooks into settings.json\n'
  printf '\ninstalled. Claude Code will ask you to approve the hook commands on first run.\n'
  printf 'to remove later: bash scripts/install-hooks.sh --uninstall\n'
}

do_uninstall() {
  printf 'removing autopunk runtime hooks\n'
  if [ -f "$SETTINGS" ]; then
    backup
    local stripped
    stripped="$(jq '
      if .hooks then
        .hooks |= with_entries(
          .value |= (if type == "array" then map(select(.__autopunk != true)) else . end)
        )
      else . end
    ' "$SETTINGS")"
    printf '%s\n' "$stripped" > "$SETTINGS"
    printf '  · removed __autopunk hook entries from %s\n' "$SETTINGS"
  fi
  rm -f "$SLOP_DEST" "$ARCH_DEST" "$AWK_DEST" "$SKILL_DEST"
  rmdir "$INSTALL_DIR" 2>/dev/null || true
  printf 'done.\n'
}

if [ "$UNINSTALL" -eq 1 ]; then
  do_uninstall
else
  do_install
fi

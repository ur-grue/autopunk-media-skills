# Runtime hooks (v1)

Runtime guardrails for Claude Code. Two hooks ship in v1, both registered as
`PostToolUse` regex passes. They run after Claude writes or edits a file and
surface warnings via the agent's `additionalContext` channel — no blocking.

| Hook | Fires on | What it checks |
|---|---|---|
| [`ai-slop-detector.sh`](./ai-slop-detector.sh) | `PostToolUse` (`Write`/`Edit`/`MultiEdit`) on `*.md` / `*.txt` / `*.docx`, plus a best-effort `Stop` final pass | banned phrases parsed at runtime from `skills/editing/ai-writing-detox.md` (Hard ban → loud warning, Soft warn → soft nudge), plus em-dash density |
| [`archive-reminder.sh`](./archive-reminder.sh) | `PostToolUse` (`Write`/`Edit`/`MultiEdit`) on `*.md` / `*.txt` | URLs in the just-edited file that don't have a Wayback / Archive.today sibling |

Both hooks are bash + awk + jq, dependency-free, and target <200ms per
invocation. Zero telemetry — no fire counts, no analytics, no network calls.

## Install

Two install paths. Pick one.

### Per-repo (this skill library)

`.claude/settings.json` in this repo already registers both hooks. Open the
repo in Claude Code; Claude Code will prompt you the first time to approve
the hook commands. Approve them and the hooks fire on every prose write.

### Per-user (every project you touch)

```bash
bash scripts/install-hooks.sh
```

This:

1. Copies the hook scripts and a snapshot of `ai-writing-detox.md` to
   `~/.claude/autopunk/`.
2. Merges a `hooks` block into `~/.claude/settings.json` (existing settings
   are preserved; the file is backed up before write).
3. Tells you to expect Claude Code's first-run approval prompt.

`--yes` skips the confirmation prompt. `--uninstall` reverses the install.

### Security note (read this)

Hooks run **arbitrary shell commands** in your terminal whenever the
matching events fire. Claude Code's first-run gate (it asks you to approve
each hook command on first launch) is your defence — never approve hook
commands you haven't audited.

These two scripts are short on purpose. Read them before you approve them:

- [`ai-slop-detector.sh`](./ai-slop-detector.sh) (~70 lines)
- [`ai-slop-detector.awk`](./ai-slop-detector.awk) (~140 lines, the matcher)
- [`archive-reminder.sh`](./archive-reminder.sh) (~75 lines)

If you re-vendor or modify them, audit the diff before re-approving.

## Silencing matches

False positives happen. Both hooks have explicit, documented escape hatches.

### `ai-slop-detector`

The skill at `skills/editing/ai-writing-detox.md` documents three escape
hatches; the hook honours all three:

- **Inline pragma** — scope is the next paragraph:
  ```
  <!-- detox: allow utilize -->
  The press release said the platform would "utilize" machine learning.
  ```
- **Block pragma** — wrap a region:
  ```
  <!-- detox: allow-start -->
  > "Our cutting-edge platform will revolutionize newsrooms."
  <!-- detox: allow-end -->
  ```
- **Front-matter** — per-file allowlist:
  ```yaml
  ---
  detox_allow: [utilize, leverage]
  ---
  ```

Plus a per-skill / per-file disable via `hook_overrides`:

```yaml
---
hook_overrides:
  ai-slop-detector: skip          # disable entirely for this file
---
```

…or only narrow the allowlist:

```yaml
---
hook_overrides:
  ai-slop-detector:
    allow: [leverage, robust]
---
```

### `archive-reminder`

Silence one URL with an inline comment on the same line:

```
This was reported on https://example.com/story <!-- noarchive -->
```

URLs inside fenced code blocks are already ignored. URLs that point to
`web.archive.org` or `archive.today` / `archive.ph` / `archive.is` are
treated as archives, and the hook checks whether other URLs appear inside
those archive URLs (treating `https://web.archive.org/web/2025/https://example.com/x`
as an archive of `https://example.com/x`).

## Smoke tests

```bash
bash hooks/test/run-tests.sh
```

The runner builds synthetic Claude Code hook payloads, fires the hooks
against fixtures in `hooks/test/fixtures/`, and asserts on the output —
hard-ban hits surface as `‼`, soft warns as `·`, archived URLs are
suppressed, latency stays under 200ms.

## Where the banned list lives

`skills/editing/ai-writing-detox.md`. The hook reads it at runtime under
the stable headings `## Hard ban` and `## Soft warn`. Per-bullet format:

```
- `phrase` — explanation (context: sentence-start)
```

Don't rename those headings, don't nest the lists, and keep one phrase per
bullet wrapped in backticks at the start of the line. The hook uses the
backticked span as the regex pattern (case-insensitive, word-boundary
aware). Variable parts inside a phrase use `…` as the wildcard token-run
(the hook expands it to `[^[:space:]]+([[:space:]]+[^[:space:]]+){0,10}`).

Trailing `(context: ...)` scopes — `sentence-start`, `sentence-end`,
`heading`, `anywhere` — are honoured. Absent scope means body-text anywhere.

## Out of scope (deferred to v2)

- `pre-publish-checklist` — the trigger surface is open-ended.
- `source-attribution-check` — needs an LLM call inside the hook; different
  design.
- Cursor / Codex prompt-level fallback — until a real consumer asks.
- Telemetry / fire-count dashboards.

See [`AUT-19`](../../) (feasibility memo) and the `ROADMAP.md` follow-up
items for context.

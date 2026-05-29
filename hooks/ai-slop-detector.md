---
name: ai-slop-detector
hook_event: PostToolUse
blocking: false
severity: warning
version: 1.0
composes_with:
  - skills/editing/ai-writing-detox/SKILL.md
---

# AI slop detector

## What this hook does

Scans text written or edited during a session for AI-flavoured language — banned words, throat-clearing intros, false-inclusive openers, and the "not just X — Y" construction. Fires a non-blocking warning after any write or edit tool use so the writer can fix the tell before it ships.

The hook reads its word lists from the `ai-writing-detox` skill's **Hard ban** and **Soft warn** sections. That skill is the single source of truth for what counts as AI slop in this project.

## When this hook fires

- **Event:** PostToolUse (after any Edit or Write tool call that touches a `.md` file under `skills/`, `docs/`, or the repo root)
- **Condition:** The written or edited text contains one or more matches against the Hard ban or Soft warn lists defined in `skills/editing/ai-writing-detox/SKILL.md`
- **Scope:** Body text only. Frontmatter YAML values, code blocks (fenced with triple backticks), and inline code spans are excluded from scanning.

## What the hook checks

**Hard ban** (always flagged): `delve`, `utilize`, `leverage`, `robust`, `seamless`, `cutting-edge`, `unleash`, `harness`, `streamline`, `holistic`, `synergy`, `tapestry`, `realm`, `landscape`, `paradigm`, `revolutionize`, `game-changer`, `bespoke`, `meticulously`, `vibrant`, `bustling`, `embark`, `journey`, `dive into`, `dive deep`, `unlock`, `empower`, and the false-pivot constructions `not just … …`, `not merely … but …`, `it's not about … it's about …`, `more than just …`.

**Soft warn** (flagged as a nudge): throat-clearing openers (`In this section, we will`, `It is worth noting that`, `It goes without saying`), false-inclusive openers (`Whether you're a … or a …`), marketing intensifiers (`truly`, `actually`, `simply`, `essentially`), academic-padding openers (`furthermore`, `moreover`, `additionally`), summary tics (`In conclusion`, `To summarize`), and em-dash density above three per 200-word window.

Full lists with explanations and context scopes are in `skills/editing/ai-writing-detox/SKILL.md` under the **Hard ban** and **Soft warn** headings.

## Silencing false positives

Some matches are intentional — a banned word inside a direct quote, a code sample, or a piece that is *about* corporate jargon. Use the pragma system documented in `ai-writing-detox`:

- **Inline:** `<!-- detox: allow utilize -->` on the line above the passage (scopes to the next paragraph).
- **Block:** `<!-- detox: allow-start -->` … `<!-- detox: allow-end -->` around a section.
- **Per-file:** frontmatter key `detox_allow: [utilize, leverage]`.

## Example output

```
⚠ ai-slop-detector (PostToolUse · non-blocking)

  skills/youtube/scripting/full-script-writer/SKILL.md

  Hard ban (2 hits):
    Line 34: "…designed to streamline the creator's workflow"
             → Try: simplify, shorten, cut steps
    Line 51: "…not just a script — a performance blueprint"
             → Make a direct claim, or cut the false-pivot.

  Soft warn (1 hit):
    Line 12: "In this section, we will walk through…"
             → Throat-clearing opener. Just say the thing.

  Fix these before the text ships. See ai-writing-detox for alternatives.
```

## Behaviour notes

- This hook advises. It does not block the tool call or revert the edit.
- Hard ban matches appear first, soft warn matches second. Each match shows the line number, the offending phrase in context, and the one-line fix from `ai-writing-detox`.
- If no matches are found, the hook stays silent — no "all clear" message.
- The hook is a pattern match, not a model call. It cannot tell `landscape` (banned metaphor) from `landscape` (a photograph orientation). Use context scopes and pragmas to disambiguate.

## Related skills

- [ai-writing-detox](../skills/editing/ai-writing-detox/SKILL.md) — source of truth for all banned/warned patterns
- [copy-editor](../skills/editing/copy-editor/SKILL.md) — broader editorial pass
- [tone-consistency-checker](../skills/editing/tone-consistency-checker/SKILL.md) — register and voice consistency

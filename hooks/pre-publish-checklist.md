---
name: pre-publish-checklist
hook_event: Stop
blocking: false
severity: checklist
version: 1.0
composes_with:
  - skills/editing/ai-writing-detox/SKILL.md
  - skills/magazine-journalism/editing/passive-voice-checker/SKILL.md
  - skills/editing/copy-editor/SKILL.md
  - skills/magazine-journalism/editing/fact-check-prompt/SKILL.md
  - skills/magazine-journalism/editing/house-style-enforcer/SKILL.md
---

# Pre-publish checklist

## What this hook does

Surfaces a six-item editorial checklist before a writing session ends. The checklist covers the most common points-of-failure in AI-assisted media writing — the gaps that a busy writer or producer is likeliest to skip when a draft reads "good enough."

This is the last line of defence before text leaves the working environment.

## When this hook fires

- **Event:** Stop (when the agent session is ending or the user signals that a writing task is complete)
- **Condition:** The session involved at least one write or edit to a file matching `skills/**/*.md`, `docs/**/*.md`, or any root-level `.md` file.
- **Does not fire:** If the session made no edits to content files (e.g., only YAML config changes, only code changes).

## The checklist

```
────────────────────────────────────────────────────
  Pre-publish checklist (6 items)
────────────────────────────────────────────────────

  1. □ AI slop      Has the text been checked for banned words
                    and AI-register tells?
                    → Run ai-writing-detox or check ai-slop-detector
                      warnings from this session.

  2. □ Attribution  Is every quote, statistic, and paraphrased
                    claim attributed to a named source?
                    → Run unattributed-claims-checker or check
                      attribution-check warnings from this session.

  3. □ Archives     Has every cited URL been archived?
                    → Check archive-on-cite-reminder warnings,
                      or save manually at web.archive.org.

  4. □ Voice        Is the passive-voice ratio below threshold?
                    → Run passive-voice-checker or check
                      passive-voice-warning output from this session.

  5. □ House style  Does the text follow sentence-case headings,
                    active voice, short sentences, and Anglo-Saxon
                    verbs over Latinate ones?
                    → Run house-style-enforcer or copy-editor.

  6. □ Example      Is the example output realistic, complete,
     quality       and generic enough to use without editing —
                    while untraceable to any real person, project,
                    or organisation?
                    → Re-read the example as if you were a
                      journalist seeing it for the first time.

────────────────────────────────────────────────────
  This checklist advises. It does not block session end.
────────────────────────────────────────────────────
```

## Example output

```
⚠ pre-publish-checklist (Stop · non-blocking)

  You edited 3 content files this session:
    - skills/youtube/scripting/full-script-writer/SKILL.md
    - skills/podcast/post-production/show-notes-generator/SKILL.md
    - docs/workflows/youtube-video-launch.md

  ┌──────────────────────────────────────────────────┐
  │  Pre-publish checklist                           │
  │                                                  │
  │  1. □ AI slop — 2 warnings fired this session    │
  │  2. □ Attribution — no warnings fired            │
  │  3. □ Archives — 1 reminder fired this session   │
  │  4. □ Voice — no warnings fired                  │
  │  5. □ House style — not checked this session     │
  │  6. □ Example quality — review manually          │
  │                                                  │
  │  Items 1 and 3 had warnings. Review before push. │
  └──────────────────────────────────────────────────┘
```

## Behaviour notes

- This hook advises. It does not block the session from ending.
- The checklist references warnings from the other four hooks in this set. If those hooks fired during the session, the checklist notes which items had warnings and which were clean.
- Items that require human judgement (like example quality) always show as unchecked — the hook cannot verify these automatically.
- The checklist appears once at session end, not after every edit. For continuous checking during a session, rely on the four PostToolUse hooks.
- If no content files were edited, the checklist does not appear — it would be noise.

## Related skills

- [ai-writing-detox](../skills/editing/ai-writing-detox/SKILL.md) — AI language cleanup
- [passive-voice-checker](../skills/magazine-journalism/editing/passive-voice-checker/SKILL.md) — passive voice audit
- [copy-editor](../skills/editing/copy-editor/SKILL.md) — full editorial pass
- [fact-check-prompt](../skills/magazine-journalism/editing/fact-check-prompt/SKILL.md) — fact-checking workflow
- [house-style-enforcer](../skills/magazine-journalism/editing/house-style-enforcer/SKILL.md) — house style enforcement

---
name: passive-voice-warning
hook_event: PostToolUse
blocking: false
severity: warning
version: 1.0
default_threshold: 25
composes_with:
  - skills/editing/passive-voice-checker.md
---

# Passive voice warning

## What this hook does

Counts passive-voice constructions in written or edited text and fires a non-blocking warning when the frequency exceeds a configurable threshold. The default is 25% — meaning more than one in four sentences uses passive voice.

This hook is the lightweight, write-time companion to the `passive-voice-checker` skill. The skill does a deep audit with rewrites; this hook does a fast count and nudges the writer when the ratio looks high.

## When this hook fires

- **Event:** PostToolUse (after any Edit or Write tool call that touches a `.md` file under `skills/`, `docs/`, or the repo root)
- **Condition:** The passive-voice ratio in the edited or written section exceeds the configured threshold.

## Configuration

The threshold is set per-file in frontmatter or globally:

- **Per-file:** Add `passive_voice_threshold: 30` to the skill's frontmatter to raise the threshold for that file (useful for skills where a higher passive ratio is expected, such as legal-brief skills).
- **Global default:** 25% (one passive sentence per four). Adjust in hook configuration if your house style has a different standard.

## What the hook checks

1. Scans each sentence in the edited section for passive-voice constructions — defined as any sentence where the grammatical subject receives the action rather than performs it (typically: a form of "to be" + past participle where the agent is absent or relegated to a `by` phrase).
2. Counts the total sentences and the passive sentences. Computes the ratio.
3. If the ratio exceeds the threshold, fires the warning with the count, the ratio, and the three most prominent passive sentences as examples.

## Example output

```
⚠ passive-voice-warning (PostToolUse · non-blocking)

  skills/tv-documentary/scripting/commentary-writer.md

  Passive voice: 8 of 22 sentences (36%) — threshold is 25%.

  Examples:
    Line 19: "The footage was reviewed by the production team."
    Line 24: "A decision was made to cut the opening sequence."
    Line 31: "The interview was conducted in the subject's home."

  Run passive-voice-checker for a full audit with rewrites.
```

## Behaviour notes

- This hook advises. It does not block the tool call or revert the edit.
- The hook fires only when the threshold is exceeded. Below-threshold files get no message.
- The hook scans the section that was edited, not the entire file. If an edit touches lines 10–30, only those lines are counted.
- Passive voice inside direct quotes is counted toward the ratio but not shown as an example — altering a source's words is the journalist's call.
- The hook uses pattern matching (forms of "to be" + past participle), not a model call. It may miss unusual passive constructions or false-flag sentences like "The building was old" (a state, not a passive action). For a precise audit, use the `passive-voice-checker` skill.

## Related skills

- [passive-voice-checker](../skills/editing/passive-voice-checker.md) — full audit with line-by-line rewrites
- [copy-editor](../skills/editing/copy-editor.md) — broader editorial pass including voice
- [structure-flow-checker](../skills/editing/structure-flow-checker.md) — checks narrative flow and structure

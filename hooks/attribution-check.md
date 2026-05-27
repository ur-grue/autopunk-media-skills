---
name: attribution-check
hook_event: PostToolUse
blocking: false
severity: warning
version: 1.0
composes_with:
  - skills/editing/unattributed-claims-checker.md
  - skills/magazine-journalism/fact-checking/source-credibility-scorer.md
---

# Attribution check

## What this hook does

Flags quoted material, paraphrased claims, and statistics that appear in written or edited text without a named source. Fires a non-blocking warning after any write or edit so the writer can add attribution before the text ships.

Attribution gaps are among the most common editorial failures in AI-assisted writing. An LLM can produce a grammatically perfect quote with no source, or cite a statistic with no origin — and neither reads as obviously wrong to a rushed editor. This hook catches the gap at write time.

## When this hook fires

- **Event:** PostToolUse (after any Edit or Write tool call that touches a `.md` file under `skills/`, `docs/`, or the repo root)
- **Condition:** The written or edited text contains one or more of the patterns below without a source attribution within the same sentence or the immediately following sentence.

## What the hook checks

1. **Direct quotes** — text enclosed in quotation marks (`"…"` or `'…'` when used as speech marks, not apostrophes) without a named speaker within the same sentence or the sentence before/after.
2. **Attributed-claim phrases** — constructions like `according to`, `sources say`, `experts say`, `studies show`, `research suggests`, `data shows` where the source is generic rather than named. "According to a recent study" flags; "according to the Pew Research Center's 2024 report" does not.
3. **Statistics without origin** — any number presented as a claim (`X% of`, `one in Y`, `N people`) without a named source, date, or methodology reference in the surrounding two sentences.
4. **Paraphrased claims** — sentences starting with constructions like `Critics argue that`, `Supporters say`, `The industry believes` where the actor is a vague collective rather than a named person or organisation.

## Example output

```
⚠ attribution-check (PostToolUse · non-blocking)

  skills/magazine-journalism/writing/reportage-structure.md

  Unattributed material (3 flags):
    Line 42: "The policy has been a disaster from day one."
             → Direct quote with no named speaker.
    Line 58: "Studies show that 73% of local newsrooms…"
             → Statistic with no named study, date, or methodology.
    Line 71: "Critics argue that the merger will reduce coverage."
             → Vague collective attribution. Name the critic or cut.

  Add sources or mark as illustrative. See unattributed-claims-checker
  for a full-text audit.
```

## Behaviour notes

- This hook advises. It does not block the tool call or revert the edit.
- The hook scans body text only. Frontmatter, code blocks, and the "Example" sections of skill files are excluded — example outputs are illustrative by nature and do not need real attribution.
- If no unattributed material is found, the hook stays silent.
- The hook does not verify that a named source is real or accurate. It checks only that a source is present. For credibility scoring, use the `source-credibility-scorer` skill.
- In skill template files where example quotes are generic and illustrative, add `<!-- attribution: example -->` above the block to suppress the warning.

## Related skills

- [unattributed-claims-checker](../skills/editing/unattributed-claims-checker.md) — full-text audit for unsourced claims
- [source-credibility-scorer](../skills/magazine-journalism/fact-checking/source-credibility-scorer.md) — evaluates named sources for reliability
- [fact-check-prompt](../skills/magazine-journalism/fact-checking/fact-check-prompt.md) — broader fact-checking workflow

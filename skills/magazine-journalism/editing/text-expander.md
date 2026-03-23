---
name: text-expander
status: stable
category: magazine-journalism
subcategory: editing
version: 1.0
eval_score: 4.39
tags: [journalism, editing, expanding, detail, development, word-count]
---

# Text Expander

## What This Skill Does
Identifies where a short article or passage is thin on detail, context, or evidence, and flags specific expansion opportunities with suggested additions — without fabricating information the writer did not provide.

## When To Use This Skill
- A piece is under its target word count and the editor needs it longer, but you are not sure where to add substance
- A draft reads rushed — key points are asserted but not developed, and the piece needs more depth
- You have additional notes, quotes, or data that need to be woven into an existing short draft
- A sidebar or brief needs to be upgraded to a fuller feature and you want to see where the gaps are

## What You Need To Provide
**Required:** The text to be expanded; the target word count or the approximate number of words to add.

**Optional:** Additional material to integrate (unused quotes, background research, statistics, anecdotes); specific sections the editor wants developed ("expand the third paragraph with more context"); the publication type (news brief, feature, analysis) — this affects where expansion is most appropriate.

## How Claude Approaches This
1. **Diagnoses the thinness.** Reads the draft and identifies where it is underdeveloped: claims without evidence, transitions that skip steps, sources mentioned but not quoted, context assumed but not provided, and conclusions that arrive too quickly. Produces a gap analysis before expanding.

2. **Proposes expansion points.** For each gap, specifies what kind of material would strengthen the passage: a supporting example, a statistic, a quote, historical context, a counterpoint, or a transitional paragraph. If the user provided additional material, maps it to the appropriate gaps.

3. **Expands with provided material only.** When additional notes, quotes, or data are supplied, integrates them into the draft at the identified expansion points. Matches the existing voice, register, and sentence rhythm. Does not invent facts, quotes, or statistics — if no additional material is available for a gap, flags it as "needs reporting" rather than filling it with fabricated content.

4. **Marks what was added.** Delivers the expanded text with new material clearly indicated — either through inline markers or a change log — so the writer can see exactly what was added and verify it before publication.

## Output Format
Two parts. First: a gap analysis listing 3-6 expansion opportunities, each with a location, the type of material needed, and whether the user's supplied material covers it. Second: the expanded text with new material marked in **bold** so the writer can review additions at a glance. Word counts (original and expanded) stated at the top. If the target cannot be reached with the material provided, states how many additional words of reported content are still needed.

```
**Original:** [X] words → **Expanded:** [Y] words ([Z] words added)
**Target:** [T] words — [Reached / Needs approximately N more words of reported content]

**Gap Analysis**
1. [Location]: [What is missing] — [Covered by supplied material / Needs reporting]
2. [Location]: [What is missing] — [Covered by supplied material / Needs reporting]

---

[Expanded text with **new material in bold**]
```

## Quality Criteria
- [ ] Gap analysis correctly identifies the weakest points in the original — not just places where words could be added
- [ ] No facts, quotes, or statistics are fabricated — all new content comes from user-supplied material or is flagged as needing reporting
- [ ] Expanded text preserves the original writer's voice and register
- [ ] New material is integrated smoothly — additions do not read as patches bolted onto the original
- [ ] Bold markers clearly distinguish added content from original text
- [ ] Word count target is met or the shortfall is honestly reported with specific guidance on what type of content is still needed
- [ ] The piece reads better after expansion — additions improve substance, not just length

## Example

### Input
**Target:** Expand to approximately 350 words
**Additional material:** Quote from a transport analyst: "The problem is not that cities lack cycling infrastructure — it's that the infrastructure they build is designed for confident cyclists, not for the nervous majority who would ride if they felt safe."
**Text (180 words):**

---

Cities across the region are investing heavily in cycling infrastructure, but ridership numbers remain stubbornly flat. Despite new bike lanes, expanded docking stations, and public awareness campaigns, the percentage of commuters who cycle to work has barely moved in three years.

Transport officials point to several factors: weather, the perception that cycling is dangerous, and the last-mile problem — most people live too far from their workplace to cycle the entire distance. Some officials also acknowledge that infrastructure alone may not be enough to change behaviour that has been shaped by decades of car-centric urban planning.

---

### Output

**Original:** 180 words → **Expanded:** 342 words (162 words added)
**Target:** 350 words — Reached (within 2%)

**Gap Analysis**
1. Para 1: States ridership is flat but gives no figures — a specific statistic would strengthen the claim. — Needs reporting
2. Para 1-2 transition: Jumps from the problem to official explanations without developing the contrast between investment and results. — Covered by supplied quote
3. Para 2: "Perception that cycling is dangerous" is stated but not explored — the supplied analyst quote directly addresses this. — Covered by supplied quote
4. Para 2: Ends on car-centric planning without any forward-looking element — a closing sentence on what alternative approaches exist would give the passage direction. — Needs reporting

---

Cities across the region are investing heavily in cycling infrastructure, but ridership numbers remain stubbornly flat. Despite new bike lanes, expanded docking stations, and public awareness campaigns, the percentage of commuters who cycle to work has barely moved in three years. **The gap between spending and results has prompted a growing debate among planners about whether the current approach to cycling infrastructure is fundamentally misconceived.**

Transport officials point to several factors: weather, the perception that cycling is dangerous, and the last-mile problem — most people live too far from their workplace to cycle the entire distance. **But some analysts argue the issue runs deeper than logistics. "The problem is not that cities lack cycling infrastructure — it's that the infrastructure they build is designed for confident cyclists, not for the nervous majority who would ride if they felt safe," said one regional transport analyst. The distinction matters: protected lanes separated from traffic by physical barriers attract a broader range of riders than painted lanes on busy roads, but they cost significantly more and require reallocating road space from cars — a move most city councils have been reluctant to make.**

Some officials also acknowledge that infrastructure alone may not be enough to change behaviour that has been shaped by decades of car-centric urban planning. **How cities address that deeper challenge — through zoning reform, school-route planning, or employer incentives — may determine whether the current investment translates into ridership or remains an expensive symbol of good intentions.**

## Known Limitations
- This skill will not fabricate content. If the original text is thin because the reporting is incomplete, the skill will identify the gaps but cannot fill them with invented material. The writer must do additional reporting.
- Expansion works best when the user provides additional material (quotes, data, notes). Without it, the skill is limited to transitional improvements, contextual framing, and flagging what needs to be gathered — which adds some words but may not reach an ambitious target.
- The skill adds substance but cannot fix a structurally broken piece. If the article's architecture is the problem, run structure-checker first, then expand.

## Related Skills
- [text-condenser](text-condenser.md) — the inverse operation: cut a piece to a shorter target word count
- [structure-checker](structure-checker.md) — diagnose structural issues before expanding
- [copy-editor-assistant](copy-editor-assistant.md) — run a copy edit after expansion to catch any inconsistencies introduced by the additions

---
name: text-condenser
status: stable
category: magazine-journalism
subcategory: editing
version: 1.0
eval_score: 4.50
tags: [journalism, editing, cutting, word-count, condensing, tight-writing]
---

# Text Condenser

## What This Skill Does
Cuts an article or passage to a target word count by removing redundancies, tightening prose, and eliminating low-value sentences — while preserving the piece's key information, structure, and voice.

## When To Use This Skill
- An article is over its allotted word count and needs to be cut before submission or layout
- You need to produce a shorter version of a published piece for a different platform (newsletter, sidebar, syndication)
- A draft is flabby and you want to see where the excess is before doing a manual edit
- An editor has asked for a specific cut ("take 300 words out of this") and you want a starting point

## What You Need To Provide
**Required:** The full text to be condensed; the target word count or the number of words to cut (e.g., "cut to 1,200 words" or "remove 400 words").

**Optional:** Passages or information that must be preserved (e.g., "keep the opening anecdote intact," "the statistics in paragraph 5 are essential"); the reason for the cut (layout space, pacing, editorial tightness) — this affects which strategy Claude prioritises; whether you want a clean condensed version, a tracked-changes version showing what was cut, or both.

## How Claude Approaches This
1. **Measures the gap.** Calculates the current word count and the number of words that need to be removed. This determines the strategy: a 10% cut calls for line-level tightening; a 30%+ cut requires removing entire passages or restructuring.

2. **Identifies expendable material first.** Before touching any prose, flags the lowest-value content: redundant restatements, throat-clearing openings, examples that duplicate a point already made, attribution padding ("he went on to say that"), and transitional filler. These are cut first because they cost nothing editorially.

3. **Tightens at the sentence level.** After removing expendable material, works through remaining prose to compress: replaces wordy constructions with tighter alternatives, converts passive to active where it saves words, eliminates adverbs and adjectives that add emphasis but not information. Preserves the writer's voice — tightens their style rather than replacing it.

4. **Protects the architecture.** Ensures the condensed version retains the article's structural logic: the lede still sets up the piece, evidence still follows claims, the ending still resolves or provokes. Does not cut a paragraph that serves as a structural hinge even if it is not the most interesting content. Preserves any passages the user flagged as essential.

5. **Reports what was done.** After delivering the condensed text, provides a brief cut log: how many words were removed, which passages were cut or significantly shortened, and any editorial trade-offs the writer should be aware of (e.g., "Removed the third expert quote — the piece now has two sources instead of three").

## Output Format
The condensed article text, followed by a cut summary. The condensed text is delivered clean — ready to use as-is. The cut summary is a short bulleted list (3-6 items) noting the major changes. If the user requested tracked changes, the output includes a version with removed text marked in ~~strikethrough~~ before the clean version. Word counts (original and final) are stated at the top.

```
**Original:** [X] words → **Condensed:** [Y] words ([Z] words cut)

[Clean condensed text]

---
**Cut Summary**
- [What was removed or shortened, and why]
- [What was removed or shortened, and why]
- [Any editorial trade-off to be aware of]
```

## Quality Criteria
- [ ] Final word count is within 2% of the stated target
- [ ] The writer's voice is preserved — the condensed version sounds like the same author, not a rewrite
- [ ] No factual information is introduced that was not in the original
- [ ] The structural logic of the piece is intact — lede, evidence, resolution still flow correctly
- [ ] User-flagged passages are preserved verbatim or near-verbatim
- [ ] The cut summary accurately describes what was removed and flags any editorial trade-offs
- [ ] Cuts prioritise low-value material first — important reporting is not sacrificed to hit the count

## Example

### Input
**Target:** Cut to 200 words
**Preserve:** The opening sentence and the statistic about teacher turnover
**Text (310 words):**

---

The school district has spent three years and $4.2 million trying to solve a problem that keeps getting worse. Teacher turnover in the district's lowest-income schools now exceeds 35 percent annually — more than double the state average and triple the rate at the district's wealthiest campuses.

The initiatives have been varied and, by most accounts, well-intentioned. A mentorship programme launched in 2023 paired new teachers with experienced colleagues. A retention bonus of $3,000 per year was introduced for staff at high-turnover schools. Professional development days were restructured to give teachers more autonomy over their training. An exit interview process was formalised to capture why people leave.

Despite all of this, the turnover rate has not improved. In fact, it has increased by two percentage points since the initiatives began. Superintendent Diana Levin acknowledged the results were disappointing but said the district was committed to continuing the programmes. "We believe the foundation we've built will show results over time," she said.

Teachers who have left tell a different story. In interviews conducted for this report, former staff consistently cited the same three factors: unmanageable class sizes, insufficient support for students with behavioural needs, and a pervasive sense that administrative decisions are made without consulting the people in classrooms. The mentorship programme and the bonus, several said, were appreciated but irrelevant to the core reasons they resigned.

"It's not about money or mentors," said one former teacher who left after six years. "It's about being asked to do an impossible job and being told you're not trying hard enough when you fail."

---

### Output

**Original:** 310 words → **Condensed:** 198 words (112 words cut)

The school district has spent three years and $4.2 million trying to solve a problem that keeps getting worse. Teacher turnover in the district's lowest-income schools now exceeds 35 percent annually — more than double the state average and triple the rate at the district's wealthiest campuses.

The initiatives have included a mentorship programme, a $3,000 annual retention bonus, restructured professional development, and formalised exit interviews. Despite this, turnover has increased by two percentage points since the programmes began. Superintendent Diana Levin said the district was committed to continuing. "We believe the foundation we've built will show results over time," she said.

Teachers who have left cite different reasons. In interviews conducted for this report, former staff consistently named unmanageable class sizes, insufficient support for students with behavioural needs, and a sense that decisions are made without consulting classroom teachers. The bonus and mentorship, several said, were appreciated but irrelevant to why they resigned.

"It's not about money or mentors," said one former teacher. "It's about being asked to do an impossible job and being told you're not trying hard enough when you fail."

---
**Cut Summary**
- Compressed the four-initiative paragraph from a detailed list into a single summary sentence (saved ~60 words)
- Removed Levin's full attribution padding and trimmed her quote introduction (saved ~20 words)
- Tightened the former-teacher interview paragraph by cutting repetitive phrasing (saved ~30 words)
- Preserved: opening sentence verbatim, 35% turnover statistic, and both direct quotes

## Known Limitations
- For cuts exceeding 40% of the original word count, the output will necessarily lose substantive content — not just filler. The cut summary flags these trade-offs, but the writer must decide which sacrifices are editorially acceptable.
- The skill preserves voice but cannot perfectly replicate a highly distinctive prose style under aggressive compression. For writers with a strong stylistic signature, manual review of the condensed version is recommended.
- This skill condenses existing text. It does not rewrite or restructure a piece from scratch — for that, work with the structure-checker first to identify what should stay and what should go, then condense.

## Related Skills
- [text-expander](text-expander.md) — the inverse operation: expand a short passage to a target word count
- [structure-checker](structure-checker.md) — assess the article's architecture before deciding what to cut
- [copy-editor-assistant](copy-editor-assistant.md) — run a copy edit after condensing to catch any issues introduced by the cuts

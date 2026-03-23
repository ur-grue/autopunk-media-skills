---
name: version-comparator
status: stable
category: magazine-journalism
subcategory: editing
version: 1.0
eval_score: 4.44
tags: [journalism, editing, comparison, versions, tracking, revisions]
---

# Version Comparator

## What This Skill Does
Compares two versions of an article and produces a structured change report — highlighting substantive edits, additions, deletions, and tone shifts — so the editor or writer can quickly understand what changed and assess whether the revisions improved the piece.

## When To Use This Skill
- A writer has submitted a revised draft and you need to see what actually changed before approving it
- You want to compare your own first and second drafts to track your revision patterns
- An article has been through an editorial pass and you want to verify that no meaning was altered unintentionally
- Legal or compliance review requires documentation of what changed between versions

## What You Need To Provide
**Required:** Version A (the earlier draft) and Version B (the later draft), clearly labelled.

**Optional:** The type of comparison you want (substantive changes only, all changes including minor wording, or a specific focus such as "check whether any factual claims were altered"); any context about what the revision was supposed to address (e.g., "the editor asked for a stronger opening and shorter middle section").

## How Claude Approaches This
1. **Aligns the two versions.** Maps Version A paragraphs to their corresponding paragraphs in Version B, accounting for reordering, merging, splitting, and deletion. Identifies new paragraphs in Version B that have no counterpart in Version A.

2. **Classifies every change.** Categorises each difference into one of five types:
   - **Substantive edit** — meaning, emphasis, or factual content was changed
   - **Addition** — new material not present in Version A
   - **Deletion** — material from Version A removed in Version B
   - **Reordering** — content moved to a different position
   - **Cosmetic edit** — wording changed but meaning preserved (tightening, style adjustment, grammar fix)

3. **Assesses impact.** For substantive edits, additions, and deletions, notes whether the change strengthens, weakens, or neutrally alters the piece. This assessment is brief and specific — not a general opinion but a targeted observation (e.g., "Removing the third source weakens the evidence base for the central claim").

4. **Produces the change report.** Delivers a structured, scannable report that an editor can read in under two minutes for a typical article-length comparison. Groups changes by type rather than by document order, so the editor can prioritise substantive changes first.

5. **Summarises the revision.** Ends with an overall assessment: how many changes of each type, whether the revision achieved its stated goal (if one was provided), and any concerns — such as meaning shifts that may have been unintentional or factual claims that were altered without annotation.

## Output Format
A structured change report grouped by change type. Each entry includes the location, the Version A text, the Version B text, the classification, and a brief impact note for substantive changes. Followed by a summary.

```
**Version Comparison Report**
*Version A: [X] words | Version B: [Y] words | Net change: [+/-Z] words*

**Substantive Edits**
1. (Para [N]): "[Version A text]" → "[Version B text]"
   Impact: [Brief assessment]

**Additions**
1. (Para [N]): "[New text in Version B]"
   Impact: [Brief assessment]

**Deletions**
1. (Para [N] in Version A): "[Removed text]"
   Impact: [Brief assessment]

**Reordering**
1. [Description of what moved and from where to where]

**Cosmetic Edits**
1. (Para [N]): "[Version A text]" → "[Version B text]"

---
**Summary:** [Total changes by type. Whether the revision achieved its stated goal. Any concerns.]
```

## Quality Criteria
- [ ] Every substantive change between the two versions is identified — none are missed
- [ ] Changes are correctly classified — cosmetic edits are not inflated to substantive, and substantive edits are not dismissed as cosmetic
- [ ] Impact assessments are specific and defensible, not vague ("this is better")
- [ ] Reordered content is tracked accurately — not misidentified as simultaneous deletion and addition
- [ ] The summary honestly assesses whether the revision improved the piece
- [ ] Word counts for both versions are accurate
- [ ] The report is scannable — an editor can find the most important changes within 30 seconds

## Example

### Input
**Comparison type:** Substantive changes only (skip cosmetic)
**Context:** Editor asked the writer to strengthen the opening and cut the background section.

**Version A (280 words):**

---

Climate adaptation planning has become an increasingly important topic for local governments across the country. Many cities are now beginning to develop strategies to address the long-term impacts of changing weather patterns on infrastructure, public health, and emergency services.

The city of Garfield Park released its first climate adaptation plan last month, becoming the smallest municipality in the state to produce such a document. The 45-page plan identifies flooding, extreme heat, and wildfire smoke as the three primary risks facing the community over the next two decades.

Climate adaptation planning emerged as a formal discipline in the early 2000s, drawing on research from environmental science, urban planning, and public health. The Intergovernmental Panel on Climate Change first recommended that local governments develop adaptation strategies in its 2007 assessment report, and the practice has grown steadily since. In the United States, most adaptation planning has been led by large coastal cities with obvious exposure to sea-level rise, but inland and smaller communities have begun to follow.

The Garfield Park plan recommends upgrading stormwater drainage in three neighbourhoods, installing cooling centres at public libraries, and creating a real-time air-quality notification system linked to the county's emergency alert network.

---

**Version B (210 words):**

---

The city of Garfield Park — population 28,000 — released its first climate adaptation plan last month, becoming the smallest municipality in the state to produce one. The 45-page document names flooding, extreme heat, and wildfire smoke as the three primary risks facing the community over the next twenty years.

Until recently, climate adaptation planning in the country was led almost exclusively by large coastal cities. Garfield Park's plan signals that smaller, inland communities are beginning to take the same risks seriously — often with fewer resources and less institutional support.

The plan recommends upgrading stormwater drainage in three neighbourhoods, installing cooling centres at public libraries, and creating a real-time air-quality notification system linked to the county's emergency alert network. The total estimated cost is $6.4 million over five years — a figure the city manager called "significant but not impossible."

---

### Output

**Version Comparison Report**
*Version A: 280 words | Version B: 210 words | Net change: -70 words*

**Substantive Edits**
1. (Para 1 in A → Para 1 in B): The generic throat-clearing opening ("Climate adaptation planning has become an increasingly important topic...") was replaced with a direct lede naming the city and its population.
   Impact: Strengthens the opening significantly — the reader arrives at the news immediately instead of wading through context.

2. (Para 2 in A → Para 1 in B): "identifies flooding, extreme heat, and wildfire smoke" → "names flooding, extreme heat, and wildfire smoke"; "two decades" → "twenty years."
   Impact: Minor substantive — "names" is slightly more direct than "identifies." Spelling out "twenty years" is a style choice; no meaning change.

**Additions**
1. (Para 2 in B): "Garfield Park's plan signals that smaller, inland communities are beginning to take the same risks seriously — often with fewer resources and less institutional support."
   Impact: Adds analytical framing that was absent in Version A. This sentence does the work the deleted background section was trying to do, but in one sentence rather than a full paragraph.

2. (Para 3 in B): "The total estimated cost is $6.4 million over five years — a figure the city manager called 'significant but not impossible.'"
   Impact: New factual information and a new source quote not present in Version A. Strengthens the piece — adds specificity and a human voice.

**Deletions**
1. (Para 1 in A): Entire opening paragraph removed ("Climate adaptation planning has become an increasingly important topic for local governments...").
   Impact: Improves pacing. The deleted paragraph was generic context that delayed the news.

2. (Para 3 in A): Entire background paragraph removed (history of climate adaptation planning from the early 2000s, IPCC reference, US context).
   Impact: Achieves the editor's goal of cutting the background section. The essential point — that this was previously a large-city practice — is preserved in one sentence in Version B's second paragraph. The historical detail (2007 IPCC report, early 2000s origins) is lost but was not essential to the story.

**Reordering**
None — the remaining content follows the same logical sequence.

---
**Summary:** 2 substantive edits, 2 additions, 2 deletions. The revision achieves both editorial goals: the opening is now direct and newsworthy (leads with the city rather than generic context), and the background section has been cut from a full paragraph to a single sentence without losing the essential point. The addition of cost data and a city manager quote in Version B introduces new information not present in Version A — the editor should verify this was sourced and not fabricated during revision.

## Known Limitations
- The skill compares the text as provided but cannot verify whether changes are factually accurate. If Version B introduces new statistics or quotes that were not in Version A, the skill flags them as additions but cannot confirm they are correct — the editor must verify independently.
- For very long articles (3,000+ words) with extensive revisions, the change report may become lengthy. In those cases, request "substantive changes only" to keep the output focused on what matters most.
- Reordering detection works well for paragraph-level moves but may struggle with sentence-level rearrangements within a paragraph that was also substantially rewritten. In those cases, the skill may classify the change as a combined edit/addition rather than a reorder.

## Related Skills
- [copy-editor-assistant](copy-editor-assistant.md) — run a copy edit on the final version after reviewing the comparison
- [structure-checker](structure-checker.md) — verify the revised version's structural logic independently
- [multi-author-harmonizer](multi-author-harmonizer.md) — if different versions were written by different people, harmonise the final version's voice

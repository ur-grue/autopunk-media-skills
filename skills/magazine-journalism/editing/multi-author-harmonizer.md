---
name: multi-author-harmonizer
status: stable
category: magazine-journalism
subcategory: editing
version: 1.0
eval_score: 4.44
tags: [journalism, editing, harmonization, multi-author, consistency, voice, tone]
---

# Multi-Author Harmonizer

## What This Skill Does
Reviews a text written or assembled by multiple authors and produces a detailed inconsistency report — flagging voice shifts, terminology mismatches, tonal clashes, and formatting discrepancies — with specific harmonisation recommendations for each.

## When To Use This Skill
- Multiple reporters contributed sections to a single article or special report and the result reads like a patchwork
- A roundtable, panel response, or collaborative opinion piece needs to read as one coherent document
- An editor has merged content from different writers into a single feature and needs to identify where the seams show
- A publication's annual report, special issue, or series compilation needs voice consistency across contributor sections

## What You Need To Provide
**Required:** The full combined text, with sections attributed to different authors if possible (e.g., "Section 1 by Author A, Section 2 by Author B"). If author boundaries are unknown, the skill will attempt to detect voice shifts.

**Optional:** The target voice or style to harmonise toward (e.g., "match the tone of Section 1," "align to our house style," or "aim for formal analytical register"); the publication type; any specific concerns (e.g., "the middle section feels more casual than the rest").

## How Claude Approaches This
1. **Profiles each voice.** Reads the full text and identifies distinct stylistic signatures: sentence length patterns, formality level, use of first person vs. third person, degree of hedging, attribution style, punctuation habits (em dashes, semicolons, parentheticals), and vocabulary register. If author boundaries are labelled, profiles each author's section. If not, identifies where the voice shifts.

2. **Flags inconsistencies.** Produces a categorised list of discrepancies:
   - **Terminology mismatches** — the same concept called different things in different sections (e.g., "participants" in one section, "subjects" in another, "respondents" in a third)
   - **Tone shifts** — passages that are noticeably more formal, casual, academic, or conversational than the surrounding text
   - **Structural format differences** — one section uses subheadings while another does not; one uses bullet points while another uses running prose; attribution styles differ
   - **Register clashes** — mixing of registers within the same piece (e.g., academic hedging in one section alongside assertive opinion-writing in another)

3. **Recommends a target voice.** If the user has not specified a target, analyses which voice is dominant or strongest and recommends harmonising toward it. Explains the rationale — usually the voice that best serves the piece's purpose and audience.

4. **Provides specific fixes.** For each flagged inconsistency, gives a concrete recommendation: the original text, the harmonised alternative, and a brief note on what was adjusted. Recommendations aim to preserve each author's contribution while smoothing the seams between them.

5. **Identifies unfixable issues.** Some multi-author problems cannot be solved by surface harmonisation — for example, two sections that make contradictory arguments, or a section that is pitched at a fundamentally different audience. Flags these as requiring editorial decisions rather than copy-level fixes.

## Output Format
A structured report with four sections: voice profiles, flagged inconsistencies (categorised and ordered by severity), harmonisation recommendations (with before/after text), and an overall assessment. Does not deliver a full rewrite — provides targeted fixes the editor can apply.

```
**Multi-Author Harmonisation Report**
*Sections analysed: [N] | Distinct voices detected: [N]*

**Voice Profiles**
- Section 1 ([Author/location]): [2-3 sentence characterisation]
- Section 2 ([Author/location]): [2-3 sentence characterisation]

**Recommended Target Voice:** [Which voice to harmonise toward and why]

**Flagged Inconsistencies**

*Terminology*
1. "[Term A]" (Section 1) vs. "[Term B]" (Section 3) → Standardise to "[chosen term]"

*Tone*
1. (Section [N], Para [N]): "[Original passage]" — [Description of tonal mismatch]
   → Harmonised: "[Adjusted passage]"

*Format*
1. [Description of structural discrepancy] → [Recommendation]

**Overall Assessment:** [2-3 sentences on severity of inconsistencies, feasibility of harmonisation, and any editorial decisions needed]
```

## Quality Criteria
- [ ] Voice profiles accurately characterise each section's distinct stylistic features — not vague generalisations
- [ ] Flagged inconsistencies are genuine — not surface-level variations that are normal in professional prose
- [ ] Terminology mismatches are correctly identified and the recommended standard term is the best choice for the piece
- [ ] Harmonised alternatives preserve each author's substantive contribution — they change voice, not meaning
- [ ] The recommended target voice is well-reasoned and serves the piece's audience and purpose
- [ ] Unfixable issues (contradictions, audience mismatches) are honestly flagged as editorial decisions
- [ ] The report is structured so an editor can work through it systematically, starting with the highest-priority items

## Example

### Input
**Text (3 sections, 390 words total):**
**Target voice:** Not specified — recommend one.

---

**Section 1 — Author A:**
The housing market in the region has entered a phase of sustained correction. After eighteen months of declining transaction volumes and a 14 percent drop in median sale prices, analysts now characterise the market as having moved from overvaluation to equilibrium. Whether it overshoots into undervaluation will depend on interest rate decisions expected in the fourth quarter.

**Section 2 — Author B:**
Talk to anyone trying to buy a home right now and you'll hear the same thing: it's still too expensive. Sure, prices are down from the peak — but mortgages are brutal, and the places that are actually affordable tend to be in areas where nobody wants to live. The correction that economists keep celebrating hasn't trickled down to the people who need it most.

**Section 3 — Author C:**
It is worth noting that the supply-side dynamics remain considerably more complex than headline figures suggest. New housing starts have declined by approximately 22% year-on-year, whilst planning approvals for multi-unit developments have simultaneously increased by 9%, indicating a bifurcation in the market between single-family and multi-unit construction. This divergence has implications for long-term affordability projections that are not yet fully reflected in current policy discussions.

---

### Output

**Multi-Author Harmonisation Report**
*Sections analysed: 3 | Distinct voices detected: 3*

**Voice Profiles**
- Section 1 (Author A): Measured analytical tone. Mid-length sentences, third-person, formal but accessible. Uses specific figures without over-explaining. Register: broadsheet business journalism.
- Section 2 (Author B): Conversational and direct. Short sentences, second-person address ("you'll hear"), colloquial phrasing ("mortgages are brutal"). Register: columnist or op-ed voice.
- Section 3 (Author C): Academic and cautious. Long sentences, heavy hedging ("it is worth noting," "not yet fully reflected"), British spelling conventions ("whilst"), passive constructions. Register: policy paper or academic journal.

**Recommended Target Voice:** Author A's register — formal but accessible analytical journalism. It is the best fit for a publication covering the housing market for an informed general audience. Author B's voice is too casual for a multi-author report, and Author C's voice is too academic. Author A strikes the middle ground.

**Flagged Inconsistencies**

*Terminology*
1. "Transaction volumes" (Section 1) vs. "trying to buy a home" (Section 2) vs. "new housing starts" (Section 3) — all reference market activity but at different levels of specificity. → Standardise to precise terms with brief plain-language context where needed: "transaction volumes (the number of homes sold)" on first use.
2. "Correction" (Section 1) vs. "correction" (Section 2, used sarcastically) — same word, different intent. → In Section 2, replace the sarcastic usage with a direct statement: "The price decline that economists describe as a correction has not made homes affordable for most buyers."

*Tone*
1. (Section 2, full section): Second-person address and colloquial phrasing clash sharply with the analytical register of Sections 1 and 3.
   → Harmonised version of opening: "Buyers searching for homes in the current market report a persistent gap between headline price corrections and their lived experience. Prices have fallen from their peak, but mortgage costs remain high, and the properties within reach of median-income buyers are disproportionately located in less desirable areas."
2. (Section 3, opening): "It is worth noting that" is throat-clearing that adds no information.
   → Harmonised: "The supply-side dynamics are more complex than headline figures suggest."
3. (Section 3): "Whilst" — British English spelling inconsistent with Sections 1 and 2.
   → Standardise to "while" throughout.

*Register*
1. (Section 3): "Bifurcation" and "implications for long-term affordability projections that are not yet fully reflected in current policy discussions" — academic register inconsistent with the broadsheet journalism tone of the target voice.
   → Harmonised: "...indicating a split in the market between single-family homes and apartment construction. This gap has implications for long-term affordability that current policy discussions have not yet addressed."

*Format*
1. Section 1 uses percentage figures with the percent symbol implied in word form ("14 percent"); Section 3 uses "22%" and "9%". → Standardise to one format throughout — "22 percent" to match Section 1's approach (AP style).

**Overall Assessment:** Three sharply distinct voices that currently read as three separate articles stitched together. The inconsistencies are significant but fixable at the copy level — the substantive content in all three sections is complementary rather than contradictory. Harmonising to Author A's register requires substantial rewriting of Section 2 (tone overhaul) and moderate editing of Section 3 (de-academicising). Section 1 can remain largely as-is. Estimated editorial effort: 45-60 minutes for an experienced editor.

## Known Limitations
- The skill harmonises voice and style but cannot resolve substantive contradictions between authors. If Section 1 argues the market is recovering and Section 2 argues it is not, that is an editorial problem, not a harmonisation problem — the skill will flag it but cannot decide which argument wins.
- For texts with more than four distinct voices, the harmonisation report becomes long and the number of cross-section inconsistencies grows exponentially. In those cases, consider harmonising in pairs rather than all at once.
- Harmonisation inevitably flattens individual voice. The skill aims to preserve each author's ideas while smoothing stylistic differences, but some personality and colour will be lost. This is an inherent trade-off of multi-author editing, not a fixable limitation.

## Related Skills
- [copy-editor-assistant](copy-editor-assistant.md) — run a copy edit after harmonisation to catch any issues introduced by the changes
- [house-style-enforcer](house-style-enforcer.md) — enforce a specific publication style sheet across all sections
- [version-comparator](version-comparator.md) — compare the harmonised version against the original to verify no meaning was changed

---
name: house-style-enforcer
status: stable
category: magazine-journalism
subcategory: editing
version: 1.0
eval_score: 4.4
tags: [journalism, editing, style-guide, house-style, consistency, standardization]
---

# House Style Enforcer

## What This Skill Does
Reviews copy against a defined house style guide and returns a structured list of every deviation, with the correct form per the house style and a reference to the specific rule violated.

## When To Use This Skill
- You're editing a piece for a publication with a detailed house style and want to ensure full compliance before the piece goes to layout
- A freelancer has submitted copy that needs to be brought into house style before editing
- You're building or maintaining a house style guide and want to test-run it against real copy
- You're onboarding a new writer and want to show them exactly how your style differs from AP or Chicago with annotated examples

## What You Need To Provide
**Required:** The draft text (or section) to be reviewed; the house style rules to enforce (paste the relevant rules as a list — e.g., "We use single quotes, not double quotes for all quotations," "Job titles are lowercase when following a name," "Dates: day month year, no commas (15 March 2026)").
**Optional:** The broader style standard the house style is based on (e.g., "AP base, with the following overrides"); any known problem areas in this specific draft; whether you want a clean corrected version of the text in addition to the flagged list.

## How Claude Approaches This
1. Maps each house style rule provided to its category (punctuation, capitalization, date/number format, quotation conventions, etc.) and applies each rule systematically to the full draft.
2. Flags every instance where the draft deviates from the specified rule — including cases where the writer uses the correct form in some places but not others (inconsistency within the piece, not just violation of the rule).
3. For each flagged item: quotes the original, gives the corrected form, and cites the specific rule it violates. If a rule could be interpreted two ways, flags the ambiguity and asks for clarification rather than making an arbitrary choice.

## Output Format
Two-part output:
1. **Deviations list** — numbered items in document order, each with: original text, corrected form, rule violated
2. **Consistency check** — any rule that the writer got right in some places but wrong in others (listed separately so the editor knows which inconsistencies to watch for in future copy from this writer)

Optional third section: **Clean corrected excerpt** (requested explicitly). Total flagged items: proportional to draft length and house style specificity — a 1,000-word draft checked against 15 rules might yield 5–25 flagged items.

## Quality Criteria
- [ ] Every deviation from a stated rule is caught — no omissions of clearly applicable rules
- [ ] Consistency violations are listed separately from absolute rule violations
- [ ] Each flag cites the specific rule, not just "house style says"
- [ ] Ambiguous cases are flagged as questions, not resolved arbitrarily
- [ ] If no deviations are found for a particular rule, this is stated explicitly (so the editor knows it was checked)

## Example

### Input
**House style rules provided:**
1. Single quotation marks for all direct quotes (not double quotes)
2. Dates in day-month-year format, no commas: "15 March 2026" (not "March 15, 2026")
3. Job titles lowercase when following a name: "Sarah Okonkwo, director of communications" (not "Director of Communications")
4. Spell out numbers one through ten; numerals for 11 and above
5. "per cent" as two words (not "percent" or "%")
6. Oxford comma in all lists of three or more items
7. Publication names in italics, not quotation marks
8. "UK" not "U.K." (no periods in country abbreviations)

**Draft excerpt (280 words):**

---

The report, published in "The Financial Review" on March 15, 2026, found that seven out of 10 respondents reported declining confidence in the sector.

"The numbers are stark," said Emma Lau, Senior Policy Analyst at the Centre for Economic Research. "We haven't seen figures like this since 2008."

By February 2026, 3 central banks in the G7 had implemented emergency rate adjustments, compared to only one in the previous 12 months. The Central Bank of New Zealand, the Bank of Canada, and the Swedish Riksbank all made adjustments of more than 50 basis points, a threshold analysts described as "significant."

The U.K. was notably absent from the group. James Holt, Chief Economist at Barlow Financial, attributed this to "a deliberate strategy of watchful waiting" — a phrase he said he first used in a lecture at Oxford in September 2025.

The findings were broadly consistent with earlier research published in "Economic Quarterly" and "Global Markets Review," both of which had flagged systemic fragility as early as 2022.

---

### Output

**House Style Deviations**

1. **Para 1:** `"The Financial Review"` → *The Financial Review* — *Rule 7: Publication names in italics, not quotation marks.*

2. **Para 1:** `March 15, 2026` → `15 March 2026` — *Rule 2: Day-month-year format, no comma.*

3. **Para 1:** `7 out of 10` — ambiguous. If "seven out of 10" was the intended reading (numeral 10 correct per Rule 4), the word "seven" is correct. But "7" violates Rule 4 (numbers one through ten spelled out). Correct to: `seven out of 10`. *Rule 4.*
   **Note:** "10" is correct as a numeral (above the spell-out threshold) — do not change.

4. **Para 2:** `"The numbers are stark,"` → `'The numbers are stark,'` — *Rule 1: Single quotation marks for direct quotes.*

5. **Para 2:** `Senior Policy Analyst` → `senior policy analyst` — *Rule 3: Job titles lowercase when following a name.*

6. **Para 3:** `3 central banks` → `three central banks` — *Rule 4: Numbers one through ten spelled out.*

7. **Para 3:** `50 basis points` — Rule 4 applies to general numbers; "basis points" is a financial unit. Flagged for editor judgment: does your house style treat basis points as a general number or a financial unit with numeral convention? If general: "fifty basis points." If financial units follow numeral convention: "50 basis points" is correct. *Ambiguity — see note.*

8. **Para 3:** `"significant."` (the word significant in quotes) → `'significant.'` — *Rule 1: Single quotation marks.*

9. **Para 4:** `U.K.` → `UK` — *Rule 8: No periods in country abbreviations.*

10. **Para 4:** `Chief Economist` → `chief economist` — *Rule 3.*

11. **Para 4:** `"a deliberate strategy of watchful waiting"` → `'a deliberate strategy of watchful waiting'` — *Rule 1.*

12. **Para 5:** `"Economic Quarterly"` → *Economic Quarterly* — *Rule 7.*

13. **Para 5:** `"Global Markets Review"` → *Global Markets Review* — *Rule 7.*

---

**Consistency Check**

- *Quotation marks (Rule 1):* Used double quotes throughout. Consistent within the draft, but consistently wrong. Watch for this writer's default — may require explicit instruction, not just a single correction.

---

**Rules Checked With No Deviations Found**

- Rule 5 (per cent): "percent" does not appear in this excerpt — not applicable.
- Rule 6 (Oxford comma): No list of three or more items in this excerpt — not applicable.

---

## Known Limitations
- This skill enforces the rules you provide. If your house style guide is incomplete, ambiguous, or contradictory, the output will reflect those gaps. Before using this skill, ensure your style rules are written as clear, binary decisions — not as general preferences or principles.
- Some style decisions are genuinely context-dependent and cannot be resolved by a rule alone (e.g., whether a number is a "financial unit" or a general number). These cases are flagged as ambiguities for editor judgment rather than resolved arbitrarily.
- This skill does not make content edits while enforcing style — it will not rewrite a sentence for clarity while correcting a capitalization error. For combined copy editing and style enforcement, run both the Copy Editor Assistant and House Style Enforcer passes.

## Related Skills
- [copy-editor-assistant](../editing/copy-editor-assistant.md)
- [fact-check-prompt](../editing/fact-check-prompt.md)
- [interview-transcript-editor](../writing/interview-transcript-editor.md)

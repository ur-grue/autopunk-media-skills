---
name: copy-editor-assistant
status: stable
category: magazine-journalism
subcategory: editing
version: 1.0
eval_score: 4.5
tags: [journalism, editing, copy-editing, grammar, consistency, style]
---

# Copy Editor Assistant

## What This Skill Does
Reviews a draft article and returns a structured list of grammatical errors, style inconsistencies, and clarity issues — each flagged with a specific suggested correction and a brief rationale.

## When To Use This Skill
- You need a copy edit pass and don't have an editor available
- You want a systematic pre-submission check before sending a draft to an editor
- You're copy editing a piece written by someone else and want to work from a flagged list rather than reading through cold
- You're working on a tight deadline and need to prioritize the most significant issues in a long draft

## What You Need To Provide
**Required:** The draft text (or the section you want reviewed); the style standard you're writing to (AP, Chicago, Guardian, house style, or "general professional journalism").
**Optional:** Specific areas of concern (e.g., "I'm not confident about the punctuation in complex sentences," "check all hyphenation," "flag any passive voice that weakens a sentence"); word count of the piece (helps calibrate the depth of the review); whether this is a first draft (light touch) or a final draft (thorough line edit).

## How Claude Approaches This
1. Reads the full draft and categorizes issues into three tiers: Tier 1 (errors — things that are wrong by the stated style standard and must be changed), Tier 2 (inconsistencies — things that are used two different ways in the same piece and need to be made consistent), and Tier 3 (suggestions — things that are not wrong but would benefit from rewording for clarity or flow).
2. For each flagged item: quotes the original text, provides the correction, and gives a one-line rationale citing the rule or reason (not just "fix this").
3. Returns items in document order so the writer can work through them linearly. Ends with a brief summary: how many Tier 1, 2, and 3 items, and an overall verdict on the draft's readiness (ready to submit, needs one more pass, requires significant line editing).
4. After the summary, provides a "Next Step" note: work through Tier 1 items first (in document order), run fact-check-prompt separately for any statistical or attributed claims, and confirm with the specific publication's house style guide if using general AP/Chicago standards

## Output Format
Numbered list of flagged items, each formatted as:
- **[Tier 1/2/3] [Location cue — e.g., "Para 3"]:** "Original text" → "Corrected text" — *Rationale*

Summary paragraph at the end. No rewriting of full paragraphs — corrections are targeted and specific. For a typical 1,500-word draft, expect 8–20 flagged items depending on draft quality. Output ends with a "Next Step" note: address all Tier 1 items before submission, run fact-check-prompt for claim verification, and check any house-style-enforcer rules if submitting to a publication with a bespoke style sheet.

## Quality Criteria
- [ ] Every flagged item includes an original text quote, a correction, and a rationale — none of the three omitted
- [ ] Tier classifications are accurate — editorial suggestions not misclassified as errors
- [ ] Location cues are specific enough to find the relevant passage in the draft
- [ ] No items flagged that are correct by the stated style standard
- [ ] Summary verdict is honest — does not always say "minor issues only" when the draft has significant problems
- [ ] Output includes at least one concrete next action the user can take immediately (work through Tier 1 items, run fact-check-prompt, or verify house style before submitting)

## Example

### Input
**Style standard:** AP Style
**Draft type:** Final draft, pre-submission
**Draft excerpt (320 words):**

---

The number of people working remotely full-time has more than doubled since 2019, according to data from the Bureau of Labor statistics. At the same time, commercial real estate vacancies in downtown districts have reached record highs in many US cities — a correlation that urban planners say is not coincidental.

"This is a structural shift, not a blip," says Dr. Martina Flores, an urban economist at Westfield University. "The cities that are adapting fastest are the ones who are re-thinking what a downtown is for."

The trend has accelerated particularly quickly in mid-sized cities, which lack the tourist and cultural infrastructure that help larger metros like New York or Chicago weather occupancy downturns. In cities like Columbus, Ohio, Salt Lake City, and Raleigh, North Carolina, office vacancy rates have climbed to 22 to 28 percent in central business districts, compared to a pre-pandemic baseline of roughly 10 percent.

City officials in several of these metros have launched adaptive reuse initiatives — converting vacant office space to residential units. But the economics are difficult: many office buildings were built to layouts and infrastructure standards that make residential conversion enormously expensive. A 2023 report from the Urban Land Institute estimated that only about 15 percent of existing US office stock is suitable for straightforward conversion without major structural work.

Some cities are taking a different approach. Instead of converting office space to housing, they are incentivizing the transformation of downtown cores into mixed-use districts — with light manufacturing, arts facilities, co-working space and food markets replacing the monoculture of offices that defined these areas for decades.

---

### Output

**Copy Edit Report — Remote Work / Downtown Vacancy Draft**
*Style standard: AP Style | Draft stage: Final*

---

1. **[Tier 1] Para 1:** "Bureau of Labor statistics" → "Bureau of Labor Statistics" — *AP capitalizes the full formal name of federal agencies; "Statistics" is part of the proper noun.*

2. **[Tier 1] Para 1:** "US cities" → "U.S. cities" — *AP uses periods in "U.S." as a modifier before a noun.*

3. **[Tier 1] Para 2:** "Dr. Martina Flores" → "Martina Flores" on first reference — *AP style does not use courtesy titles (Dr., Mr., Ms.) on first reference for non-medical doctors in news copy. Acceptable to add "urban economist" identification instead.*

4. **[Tier 1] Para 2:** "the ones who are re-thinking" → "the ones that are rethinking" — *AP hyphenation: "rethink" is not hyphenated as a standard compound verb. Also: "ones who" applies to people; "ones that" is preferred for a general category reference in this context.*

5. **[Tier 2] Para 3:** "mid-sized cities" — later in para 5 this appears as "mixed-use districts" (correctly hyphenated as a modifier). Confirm "mid-sized" hyphenation is intentional and consistent with any other mid- compounds in the full piece.*

6. **[Tier 1] Para 3:** "New York or Chicago" — if this is an exhaustive list of two, no comma needed; if part of a longer pattern, confirm serial comma usage is consistent with AP (no Oxford comma in AP).*

7. **[Tier 2] Para 3:** "22 to 28 percent" — AP style uses numerals for percentages with "percent" spelled out (not %). Verify this is consistent throughout the full draft, particularly in any data-heavy paragraphs not included here.*

8. **[Tier 3] Para 4:** "enormously expensive" → consider "prohibitively expensive" — *Not an error, but "enormously" is informal relative to the register of the rest of the piece; "prohibitively" is more precise to the economic argument being made.*

9. **[Tier 1] Para 5:** "co-working space and food markets" — if this is an AP-style list of three or more items, add a comma after "co-working space": "co-working space, and food markets" is incorrect in AP (no serial comma); "co-working space and food markets" is correct only as a two-item list. Verify whether this is meant to be a two-item list or whether items were inadvertently omitted.*

---

**Summary**

6 Tier 1 errors (must correct before submission), 2 Tier 2 inconsistencies (verify consistency across the full draft), 1 Tier 3 suggestion (optional). The draft reads cleanly overall — the issues are primarily style-standard compliance rather than clarity or grammar problems. Ready to submit after Tier 1 corrections are applied and Tier 2 items are verified against the full piece.

---

## Known Limitations
- This skill applies the stated style standard (AP, Chicago, etc.) consistently, but cannot enforce a bespoke publication house style unless you provide the specific rules. For house style, use the House Style Enforcer skill with your style sheet.
- Copy editing AI works well on grammar, punctuation, and consistency but is less reliable on register, voice, and idiom — subtle choices that make prose feel natural in a specific publication's voice. A human editor's judgment remains essential for those elements.
- This skill does not fact-check claims. Statistical figures, proper nouns, and attributions that appear correct grammatically may still be factually wrong. Run the Fact Check Prompt skill separately.

## Related Skills
- [house-style-enforcer](../editing/house-style-enforcer.md)
- [fact-check-prompt](../editing/fact-check-prompt.md)
- [interview-transcript-editor](../writing/interview-transcript-editor.md)

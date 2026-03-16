---
name: fact-check-prompt
status: stable
category: magazine-journalism
subcategory: editing
version: 1.0
eval_score: 4.4
tags: [journalism, editing, fact-checking, verification, accuracy]
---

# Fact Check Prompt

## What This Skill Does
Generates a systematic fact-checking checklist from a draft article, categorizing every verifiable claim by type and priority, with the specific verification question and recommended source type for each.

## When To Use This Skill
- You've finished a draft and want to ensure you haven't missed any checkable claim before submitting
- You're fact-checking a piece written by another reporter and need a structured inventory of everything that requires verification
- You're on deadline and need to triage — identify which claims carry the most risk and need to be checked first
- You're training a new researcher or fact-checker and want a model for what a systematic check looks like

## What You Need To Provide
**Required:** The draft article text (or the section to be fact-checked); the publication type (news, magazine feature, investigative, profile, opinion with reported elements).
**Optional:** Which claims you're already confident about (to exclude from the list); any specific high-risk areas you're concerned about (statistics from a single source, historical claims, legal statements); the publication's fact-checking standard (light editorial check vs. full verification with source documentation).

## How Claude Approaches This
1. Reads through the draft and extracts every verifiable claim — statistics, dates, names and titles, institutional descriptions, historical facts, legal statements, causal claims ("X caused Y"), and direct quotes attributed to named sources.
2. Categorizes claims by risk level: High (statistics, specific numbers, legal or medical claims, anything that could expose the publication to a defamation claim), Medium (biographical details, historical claims, institutional descriptions), Low (widely known facts, claims easily verified in seconds).
3. For each claim: writes the verification question in plain language, recommends the source type (primary document, official record, academic paper, direct confirmation with named source, etc.), and flags any claim where the draft text itself is ambiguous or internally inconsistent — separate from whether the underlying fact is correct.

## Output Format
Three-section checklist organized by risk level: High Priority, Medium Priority, Low Priority. Each item formatted as:
- **Claim:** [exact quote from draft]
- **Check:** [the verification question]
- **Source type:** [what kind of source resolves this]
- **Flag:** [any internal ambiguity or consistency note, if applicable]

Summary at the end: total item count by risk level, estimated checking time, and any structural fact concerns (e.g., a single source underpins multiple high-risk claims).

## Quality Criteria
- [ ] Every numerical claim in the draft appears in the checklist
- [ ] Every named source's title and institutional affiliation appears in the checklist
- [ ] High, Medium, and Low categorizations are accurate — medical or legal claims never classified below High
- [ ] Verification questions are specific enough to hand to a researcher without further explanation
- [ ] Internal inconsistencies in the draft are flagged separately from external fact errors
- [ ] No claims omitted because they "seem obviously correct"

## Example

### Input
**Draft type:** Magazine feature
**Excerpt (450 words):**

---

In 2019, roughly 3.6 percent of full-time US workers were working primarily from home, according to the Bureau of Labor Statistics. By 2023, that figure had risen to nearly 28 percent. The shift has reshaped commercial real estate markets, particularly in cities with large technology and financial sectors.

Professor Elena Varga, who chairs the Department of Urban Economics at Northfield University, has been studying downtown vacancy trends since 2018. "We've never seen this kind of structural dislocation in commercial real estate outside of a major war or economic depression," she says. "The difference is that this one was self-inflicted — we had the technology to work remotely before COVID, we just chose not to use it."

The City of Portland, Oregon, saw its downtown office vacancy rate reach 32 percent in the second quarter of 2024, up from 6.5 percent in 2019, according to commercial real estate firm Cushman & Wakefield. City officials have proposed a $45 million adaptive reuse fund to subsidize the conversion of office space to housing. The fund was approved by the Portland City Council in December 2024.

Adaptive reuse is more complicated than it sounds. Most commercial office buildings built in the US between 1970 and 2000 were designed with deep floor plates — sometimes 60 to 80 feet from window to core — that make natural light and ventilation difficult in residential units. A 2022 study from Columbia University's Urban Planning department found that of 1,400 commercial buildings evaluated across 12 US cities, only 17 percent had floor plates suitable for straightforward residential conversion.

The economics are also challenging. The average cost per unit of adaptive reuse conversion in the US was approximately $350,000 in 2023, compared to $220,000 for new construction in a comparable location, according to the National Association of Realtors.

---

### Output

**Fact-Check Checklist — Remote Work / Downtown Vacancy Feature**

---

**HIGH PRIORITY** *(verify before publication)*

1. **Claim:** "roughly 3.6 percent of full-time US workers were working primarily from home" (2019)
   **Check:** Is 3.6% the correct BLS figure for full-time remote work in 2019? Confirm methodology — "primarily from home" may have a specific BLS definition that affects comparability with the 2023 figure.
   **Source type:** Bureau of Labor Statistics — American Time Use Survey or Current Population Survey; confirm exact series.
   **Flag:** The 2019 and 2023 figures need to come from the same BLS survey series for the comparison to be valid. Verify both are from the same source.

2. **Claim:** "By 2023, that figure had risen to nearly 28 percent"
   **Check:** Is 28% the correct figure? Cross-check against BLS data and any Pew, Gallup, or McKinsey studies that may give a different figure.
   **Source type:** BLS primary data; if from a secondary source, trace to the original.
   **Flag:** "Nearly 28 percent" is imprecise. What is the actual figure? If it's 26% or 27%, "nearly 28" is defensible; if it's 24%, it is not.

3. **Claim:** "Professor Elena Varga, who chairs the Department of Urban Economics at Northfield University"
   **Check:** Confirm current title and institutional affiliation. Has she been at Northfield continuously since 2018?
   **Source type:** Direct confirmation with source or university directory. Check if "chairs" is current (department chair appointments rotate).

4. **Claim:** Portland downtown office vacancy "reach 32 percent in the second quarter of 2024, up from 6.5 percent in 2019, according to Cushman & Wakefield"
   **Check:** Verify both figures from the cited Cushman & Wakefield report. Confirm the Q2 2024 report exists and the 32% is the correct figure for downtown Portland specifically (not metro-wide).
   **Source type:** Cushman & Wakefield market report — request the specific report cited.

5. **Claim:** "$45 million adaptive reuse fund" approved by Portland City Council in December 2024
   **Check:** Confirm fund amount, approval date, and council vote. Is it a fund, or a proposed budget line? Is it approved or still pending as of publication date?
   **Source type:** Portland City Council meeting minutes, December 2024; official city press release.

6. **Claim:** Columbia University study found "17 percent had floor plates suitable for straightforward residential conversion" — 1,400 buildings across 12 cities, 2022
   **Check:** Confirm the study exists, its publication year, sample size (1,400), geographic scope (12 cities), and the 17% finding.
   **Source type:** Columbia University Urban Planning department — identify the specific study title and authors; access the publication directly.

7. **Claim:** "average cost per unit of adaptive reuse conversion... approximately $350,000 in 2023... compared to $220,000 for new construction" — attributed to National Association of Realtors
   **Check:** Confirm both figures from NAR. Verify "comparable location" methodology — this comparison is only valid if both figures use the same geographic market.
   **Source type:** NAR research report; confirm the specific publication and year.

---

**MEDIUM PRIORITY**

8. **Claim:** Varga "has been studying downtown vacancy trends since 2018"
   **Check:** Confirm with source — is 2018 accurate, or was it an approximation she used in conversation?
   **Source type:** Direct confirmation with source.

9. **Claim:** US office buildings "built... between 1970 and 2000 were designed with deep floor plates — sometimes 60 to 80 feet from window to core"
   **Check:** Confirm this is an accurate architectural generalization. Are the 60–80 foot figures sourced, or are they the writer's paraphrase?
   **Source type:** Architecture or real estate reference; or trace to the Columbia study if that's where the figure originated.

---

**LOW PRIORITY**

10. **Claim:** "The City of Portland, Oregon" — standard reference, verify city name and state are correctly given (Portland, Maine is a common confusion in copy).

---

**Summary**

9 claims flagged total: 7 High Priority, 2 Medium, 1 Low. Estimated checking time: 3–5 hours for a thorough first pass on High Priority items.

**Structural concern:** Items 1 and 2 depend on each other — if the BLS figures come from different survey series, the statistical comparison that opens the piece is invalid. This should be the first check made.

---

## Known Limitations
- This skill identifies and categorizes checkable claims — it does not perform the verification itself. Claude does not have access to real-time databases, subscription research services, or government data portals. Every item on the checklist requires a human fact-checker to verify against primary sources.
- For direct quotes attributed to named sources, this skill flags them for verification but cannot confirm whether a source actually said the words in the draft. That requires the original recording or notes.
- Opinion pieces and columns present a different fact-checking standard than reported pieces. For opinion, only reported elements (statistics, named facts, attributions) require verification — the author's argument and interpretation do not.

## Related Skills
- [copy-editor-assistant](../editing/copy-editor-assistant.md)
- [house-style-enforcer](../editing/house-style-enforcer.md)
- [research-brief-creator](../ideation/research-brief-creator.md)

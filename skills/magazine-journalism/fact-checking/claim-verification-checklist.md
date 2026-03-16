---
name: claim-verification-checklist
status: stable
category: magazine-journalism
subcategory: fact-checking
version: 1.0
eval_score: 4.5
tags: [journalism, fact-checking, verification, editing]
---

# Claim Verification Checklist

## What This Skill Does
Generates a point-by-point checklist of every verifiable claim in a draft article, categorized by claim type and accompanied by the specific evidence needed to confirm each one.

## When To Use This Skill
- A story is close to publication and needs a systematic fact-check before the editor or legal team sees it
- You are the assigning editor and want to hand a reporter a clear list of what still needs to be verified
- You have inherited a draft from another writer and need to understand what is sourced and what is asserted
- You want to ensure no factual claims slip through on deadline without a documented verification method

## What You Need To Provide
**Required:** The full text of the draft article or a detailed section-by-section summary
**Optional:** A note on which claims are already verified (so the checklist can mark them as such); the publication's fact-checking standard (minimal, standard, or rigorous); the story type (news, investigation, profile, feature)

## How Claude Approaches This
1. Reads the draft and extracts every claim that is factually verifiable — distinguishing factual assertions from opinions, characterizations, and attributed quotes
2. Categorizes each claim by type: statistical, biographical, chronological, attribution (quote or paraphrase), official record, scientific, or legal
3. For each claim, specifies the minimum evidence standard needed for verification — primary source, secondary corroboration, expert confirmation, or documentary proof
4. Flags highest-risk claims: those that are specific, potentially defamatory, or that directly contradict public statements by named individuals
5. Closes with a "Next Step" note: which High-risk item to verify first, estimated time to clear the checklist, and whether libel-check-brief should be run alongside for any drafts containing allegations against named individuals

## Output Format
Numbered checklist. Each item: Claim (exact quote from draft) | Claim Type | Required Evidence | Risk Level (Low / Medium / High). Grouped by section of the article. Followed by a Summary section noting total claim count, High-risk count, and items already marked as verified. Length scales with article length — typically 400–800 words for a 1,500-word article. Output ends with a "Next Step" note: which High-risk claim to verify first, how long the full check is likely to take, and whether libel-check-brief should be run on the same draft.

## Quality Criteria
- [ ] Every specific, verifiable claim in the draft is captured — no omissions
- [ ] Claims are reproduced accurately from the draft, not paraphrased
- [ ] Evidence requirements are specific — not "needs a source" but "needs the original 2023 court filing" or "needs confirmation from the named agency's press office"
- [ ] High-risk claims are correctly identified — specificity, named individuals, and contradiction of official positions all elevate risk
- [ ] Summary gives an accurate picture of the draft's overall verification status
- [ ] Output includes at least one concrete next action the user can take immediately (start with the highest-risk item, run libel-check-brief, or confirm the structural concern noted in the summary)

## Example

### Input
Draft excerpt: A 900-word investigative feature about rising injury rates among warehouse workers at large fulfillment centers.

Key passages:
- "Warehouse injury rates have increased 32 percent over the past five years, according to federal labor statistics."
- "Workers at fulfillment centers are nearly three times more likely to be injured on the job than employees at traditional retail warehouses."
- "The company declined to comment."
- "In 2022, the company settled a workplace safety complaint with OSHA for $187,000 — one of the largest penalties in the region that year."
- "Former safety manager Diane Park, who left the company in 2021, told this reporter the injury tracking system was deliberately manipulated to underreport incidents."
- "The company had a recordable injury rate of 7.4 per 100 workers in 2023, compared to an industry average of 4.1."

### Output

**Claim Verification Checklist — Warehouse Injury Investigation**

---

**Section: Lede and Statistics**

1. **Claim:** "Warehouse injury rates have increased 32 percent over the past five years"
   **Type:** Statistical
   **Required Evidence:** Pull the exact BLS (Bureau of Labor Statistics) data series (NAICS code for warehousing and storage, 2019–2024). Confirm the 32% figure matches the published injury and illness rate tables. Note the precise metric used (DART rate, TCIR, or recordable incidents).
   **Risk Level:** Medium — specific percentage requires exact sourcing; common error is comparing different metrics across years.

2. **Claim:** "Workers at fulfillment centers are nearly three times more likely to be injured than employees at traditional retail warehouses"
   **Type:** Statistical / Comparative
   **Required Evidence:** Identify the exact study or dataset making this comparison. "Nearly three times" is a specific multiplier — confirm the source, methodology, and publication date. If this comes from an advocacy group or union report rather than a government source, note the affiliation.
   **Risk Level:** High — comparative injury rate claims are frequently contested; methodology matters.

**Section: Company Specifics**

3. **Claim:** "The company declined to comment"
   **Type:** Attribution / Process
   **Required Evidence:** Document the outreach: date, method (email/phone/formal letter), recipient name or title, and absence of response or explicit decline. Keep correspondence on file.
   **Risk Level:** Low — standard process claim, but outreach must be documented.

4. **Claim:** "In 2022, the company settled a workplace safety complaint with OSHA for $187,000"
   **Type:** Official Record / Legal
   **Required Evidence:** Pull the OSHA inspection record from OSHA's public enforcement database (osha.gov). Confirm the settlement amount, year, and citation classification. Verify this is a settlement, not a penalty under appeal.
   **Risk Level:** High — specific dollar figure and year; legal records must match exactly. "One of the largest penalties in the region that year" requires comparative data — pull OSHA regional enforcement data for 2022 to verify.

5. **Claim:** "The company had a recordable injury rate of 7.4 per 100 workers in 2023"
   **Type:** Statistical / Official Record
   **Required Evidence:** Confirm whether this figure comes from OSHA 300 logs (which may be obtained by request or public filing), a regulatory filing, or a leak. If from a source, state that attribution clearly. If from public data, cite the exact filing.
   **Risk Level:** High — specific internal metric; if obtained from a leaked document, consult legal before publication.

**Section: Source Testimony**

6. **Claim:** Former safety manager "Diane Park...told this reporter the injury tracking system was deliberately manipulated to underreport incidents"
   **Type:** Attribution / Allegation
   **Required Evidence:** Confirm recording or contemporaneous notes exist for this interview. This is a serious allegation of intentional misconduct against the named company. The word "deliberately" is legally significant. Corroboration required: at least one additional source making the same or similar allegation, or documentary evidence of the manipulation. Company must be given right of reply specifically to this allegation before publication.
   **Risk Level:** High — named source making misconduct allegation; defamation exposure if not corroborated and right-of-reply not documented.

---

**Summary**
- Total verifiable claims: 6
- High risk: 4
- Medium risk: 1
- Low risk: 1
- Items pre-verified by reporter: 0 (assume none unless marked)

*Recommend legal review before publication given the specific misconduct allegation in item 6 and the contested statistical claims in items 1 and 2.*

## Known Limitations
- This skill identifies verifiable claims but cannot verify them. It is a roadmap for fact-checking, not a substitute for it.
- Opinion, characterization, and attributed quotes are generally excluded from the checklist — but the skill may miss some edge cases where attributed opinions contain embedded factual assertions.
- For very long articles (3,000+ words), the checklist can become unwieldy. Consider running the skill on one section at a time.
- The skill cannot assess whether a claim is already verified from context not included in the draft text. Mark verified claims explicitly in the input to get a clean working checklist.

## Related Skills
- [statistics-fact-checker](./statistics-fact-checker.md)
- [libel-check-brief](../legal/libel-check-brief.md)
- [source-credibility-brief](./source-credibility-brief.md)

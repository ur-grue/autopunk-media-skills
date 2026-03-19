---
name: statistics-verifier
status: beta
category: research
subcategory: facts-context
version: 1.0
eval_score: null
tags: [statistics, fact-checking, data, verification, numbers]
---

# Statistics Verifier

## What This Skill Does
Runs a structured checklist over every statistic in your draft — flagging figures that look wrong, comparisons that may mislead, and numbers that need a primary source before they are safe to publish.

## When To Use This Skill
- Your draft contains multiple statistics and you want a systematic check before it goes to an editor
- You received data from a press release, report, or PR contact and want to check whether the framing holds up
- A statistic in your story involves a percentage, a rate, a change over time, or a comparison — any of which are easy to misrepresent accidentally
- You are fact-checking someone else's draft and need a structured method rather than reading it cold
- A story is about to publish and you want a final safety pass on all numbers

## What You Need To Provide
**Required:** The full draft text, or at minimum every sentence containing a statistic. For each figure, provide the source you used — paste the relevant excerpt or describe it (e.g. "government report, page 12: 'unemployment rose to 7.4%'").

**Optional:** The type of story (news report, feature, documentary script, social media post). Any statistics you already know are contested. The intended audience, if it affects how precise the language needs to be.

## How Claude Approaches This

1. Extracts every statistic from the text — numbers, percentages, rates, rankings, comparisons, and any claim described in quantitative terms even without a specific figure ("doubled," "most," "the highest in a decade").
2. For each statistic, runs it through a standard checklist covering six common failure modes: missing source, wrong base figure, misleading percentage framing, time period mismatch, cherry-picked comparison, and unit confusion.
3. Rates each statistic on a three-level flag system: **Publish** (no problems found with what you have provided), **Check before publishing** (potential issue identified — specific action required), or **Do not publish as written** (clear problem that makes the statistic inaccurate or misleading in its current form).
4. For every flagged statistic, gives a plain-language explanation of what the problem is and exactly what the journalist needs to do to resolve it — including what to ask a source, what document to look for, or how to reframe the sentence.

## Output Format
A numbered list of every statistic found, each followed by: the flag level, the specific issue (if any), and the recommended action. After the list, a one-paragraph summary: overall picture of the draft's statistical health, the highest-priority fix, and a confidence rating (Low / Medium / High) for the draft as a whole. Total length scales with the number of statistics — roughly 100 words per flagged figure. Plain language throughout; no statistical jargon without immediate explanation.

## Quality Criteria
- [ ] Every quantitative claim in the draft is extracted and addressed — nothing skipped
- [ ] Each flag is specific: it names the exact problem, not a generic warning like "verify this"
- [ ] The recommended action for each flagged statistic is concrete enough to act on without further guidance
- [ ] The skill distinguishes between statistics Claude can assess from what was provided and statistics that require external verification Claude cannot perform
- [ ] The output does not invent alternative figures or claim to know the correct number — it identifies the problem and points toward where the correct number can be found

## Example

### Input
**Story type:** News report for a regional news website

**Draft excerpt:**
"Youth unemployment in the region has doubled over the past two years, reaching 18% — the worst rate in the country. Local officials say the figure is misleading because many young people are in part-time work or training schemes. Meanwhile, the national rate stands at 9%, meaning young people here are twice as likely to be out of work as their peers elsewhere. The regional council has spent £4.2 million on job creation programmes since 2021, though critics say that amounts to less than £200 per unemployed young person."

**Sources provided:**
- Regional statistics office report: "Youth unemployment (ages 16–24) in the region: 18.3% as of Q3 last year. Figure for Q3 two years prior: 9.1%."
- National statistics authority: "National youth unemployment rate (ages 16–24): 9.2% as of Q3 last year."
- Council press release: "£4.2 million committed to the WorkReady programme since its launch in 2021."
- No source provided for "worst rate in the country" claim or for the per-person spending figure.

### Output

**1. "Youth unemployment has doubled over the past two years"**
Flag: CHECK BEFORE PUBLISHING
The regional statistics office gives 9.1% two years ago and 18.3% now. That is a near-doubling (ratio: 2.01x) so "doubled" is defensible, but only just. The report likely refers to Q3-to-Q3 — confirm the comparison uses the same quarter in both years to avoid seasonal distortion. Recommended action: confirm the exact comparison periods with the statistics office and consider changing "doubled" to "nearly doubled" or "risen by 101%" to be precise.

**2. "Reaching 18%"**
Flag: PUBLISH (with minor caveat)
The regional statistics office reports 18.3%, which rounds correctly to 18%. No issue with the figure itself, but note your source says Q3 of last year — if the report is recent, flag this as last year's data in the story, not current.

**3. "The worst rate in the country"**
Flag: DO NOT PUBLISH AS WRITTEN
No source has been provided for this claim. A ranking claim requires a complete dataset of all regions or a direct statement from the national statistics authority. A single region's figure cannot itself establish a national ranking. Recommended action: check whether the national statistics authority publishes a regional breakdown table. If no such table exists or the region does not rank first, remove or soften the claim ("one of the highest rates," "among the worst-performing regions").

**4. "The national rate stands at 9%, meaning young people here are twice as likely to be out of work"**
Flag: CHECK BEFORE PUBLISHING
Two issues. First, the national figure is 9.2%, not 9% — a minor but correctable inaccuracy. Second, "twice as likely" is mathematically correct (18.3% vs 9.2% ≈ 1.99x) but only if both figures use the same definition of "youth" and "unemployed." Confirm both use the ILO unemployment definition and the same 16–24 age band — if the regional figure uses a different age bracket, the comparison breaks. Recommended action: check methodology footnotes in both reports for age band and definition consistency; correct "9%" to "9.2%."

**5. "£4.2 million on job creation programmes since 2021"**
Flag: PUBLISH
Matches the council press release. No issue. Note this is committed funding, not necessarily spent — if the distinction matters for your story, check whether the full amount has been disbursed.

**6. "Less than £200 per unemployed young person"**
Flag: DO NOT PUBLISH AS WRITTEN
No source provided. This figure requires knowing the total number of unemployed young people in the region at a specific point in time — it is a derived calculation, not a figure that appears in any of your sources. If the calculation is wrong, it is a significant error. Recommended action: obtain the absolute number of unemployed 16–24-year-olds from the regional statistics office and perform the calculation explicitly: £4,200,000 divided by that figure. Show the working in your notes.

**Summary:** This draft has two statistics that must not publish as written (the national ranking claim and the per-person spending figure) and two that need source confirmation before publishing (the doubling claim and the national comparison). Two figures are clear. Overall confidence in the statistical layer of this draft as submitted: **Low**. Resolve the ranking claim and the per-person calculation first — both carry the highest risk of factual challenge after publication.

## Known Limitations
- Claude cannot access external websites, databases, or documents. Every assessment is based solely on what you paste into this session. If a source excerpt is incomplete or paraphrased, the assessment will be limited accordingly.
- Claude cannot independently verify whether a statistic is correct — it can only check internal consistency, plausibility, sourcing, and framing. The flag "Publish" means no problems were found with what you provided, not that the figure is confirmed accurate.
- Statistics involving specialised methodology (econometric models, medical trials, environmental measurements) may require a subject-matter expert to review even after this checklist passes.
- This skill works best when source excerpts are pasted in full. If you only name a source without providing the relevant text, the assessment for that figure will be limited to plausibility checks.

## Related Skills
- [source-cross-referencer](./source-cross-referencer.md)
- [statistics-fact-checker](../../magazine-journalism/fact-checking/statistics-fact-checker.md)
- [claim-verification-checklist](../../magazine-journalism/fact-checking/claim-verification-checklist.md)
- [dataset-summary-writer](../data-statistics/dataset-summary-writer.md)

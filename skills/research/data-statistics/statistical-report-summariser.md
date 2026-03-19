---
name: statistical-report-summariser
status: beta
category: research
subcategory: data-statistics
version: 1.0
eval_score: null
tags: [statistics, summarising, plain-language, research, data]
---

# Statistical Report Summariser

## What This Skill Does
Translates the key findings of a statistical report into plain, journalist-ready language — pulling out the numbers that matter, explaining what they mean, and flagging anything that needs verification before publication.

## When To Use This Skill
- You have received a government statistics release, academic research paper, or international agency report and need to understand it quickly before an interview or editorial meeting
- You want a plain-language brief to share with colleagues who did not read the full report
- You need to identify the two or three headline figures that are both accurate and genuinely newsworthy before writing your story
- You are covering a beat (health, economics, crime, environment) where statistical reports arrive regularly and you need a repeatable workflow for processing them
- You want to check whether a report's own summary accurately reflects its underlying data before quoting from it

## What You Need To Provide
**Required:** The full text of the statistical report (paste the text, or paste the executive summary plus relevant tables if the full document is very long). Include the report title, publishing body, and publication date.

**Optional:** Your story angle or the specific question you are trying to answer; the audience for your piece (general public, specialist readership, broadcast); any figures you have already noticed that you want specifically addressed; the word limit for your eventual article.

## How Claude Approaches This
1. Reads the report structure first — identifying the publishing body, methodology notes, sample size or data source, and the time period covered — so the summary is grounded in the right context.
2. Extracts the three to five findings most likely to be newsworthy, ranked by magnitude of change, unexpected direction, or direct relevance to the stated story angle. Avoids leading with figures buried in appendices unless they are clearly the most significant.
3. Translates each finding into one plain-language sentence: the number, what it measures, the comparison point (year-on-year, vs. a benchmark, vs. another group), and what direction it moved. No passive voice, no jargon.
4. Flags any figures that require caution before publication: provisional data, small sample sizes, non-standard methodology, year-on-year comparisons affected by prior-year anomalies, or findings the report itself qualifies as preliminary.
5. Produces the summary in a format ready to paste into a briefing document, story notes, or directly into an article draft.

## Output Format
A structured brief of 300–500 words, organised as: (1) a two-sentence report overview (who published it, what it covers, when), (2) three to five headline findings as short numbered paragraphs — each figure + plain explanation + comparison point, (3) a "Handle with care" section listing any figures that need verification or carry caveats, (4) a one-line suggested citation. Written at a level suitable for a general-interest audience unless a specialist readership is specified. No bullet-point overload — findings are written as full sentences so they can be lifted into copy.

## Quality Criteria
- [ ] Every number quoted is taken directly from the report — no figures inferred or extrapolated
- [ ] Each headline finding includes a comparison point (e.g., up from X last year, compared with a national average of Y) so the number has context
- [ ] Plain-language explanations avoid statistical jargon (significance, confidence interval, regression) unless the term is defined immediately after
- [ ] The "Handle with care" section flags at least one real caveat from the report's own methodology notes
- [ ] The brief could be handed to a reporter who has not read the source document and they would not misquote the data
- [ ] Suggested citation includes publishing body, report title, and publication date

## Example

### Input
Report title: "Annual Road Safety Statistics — Provisional Figures"
Publishing body: National Road Safety Authority (fictitious agency)
Publication date: March 2026

Executive summary text (pasted):
"Total road fatalities in 2025 stood at 1,247, a decrease of 8.3% compared with 1,360 in 2024. Fatalities among motorcyclists fell by 14% (from 312 to 268), while pedestrian fatalities rose by 6% (from 183 to 194). Young drivers aged 17–24 accounted for 31% of all fatalities despite representing 11% of licence holders. Rural road fatalities (defined as roads outside urban speed limit zones) accounted for 58% of the total, up from 54% in 2024. All figures are provisional pending coroner confirmation and are subject to revision in the final annual report, expected July 2026."

Story angle: We are writing about progress on road safety for a general-audience national newspaper.

### Output
**Report overview**

The National Road Safety Authority's provisional road safety statistics for 2025 show the overall death toll on public roads fell for the second consecutive year. The figures cover all recorded road fatalities in 2025 and are based on police reports, pending final coroner confirmation due in July 2026.

**Headline findings**

1. **Overall fatalities fell to 1,247 — down 8% on the previous year.** In 2024, 1,360 people died on the roads. The 2025 figure is the lowest recorded since the authority began publishing annual data in this format.

2. **Motorcyclist deaths dropped sharply, by 14%.** The number of riders killed fell from 312 to 268. The report does not attribute this to a single cause, but notes it coincides with the rollout of mandatory advanced rider training in two regions.

3. **Pedestrian deaths moved in the opposite direction, rising 6%.** 194 pedestrians were killed in 2025, up from 183 in 2024. The report flags this as an area requiring further monitoring but offers no causal explanation in the provisional release.

4. **Young drivers are heavily over-represented.** Drivers aged 17–24 account for 31% of all fatalities while holding only 11% of licences — nearly three times their share of the licence-holding population.

5. **Rural roads account for a growing share of deaths.** 58% of fatalities occurred on roads outside urban speed limit zones, up from 54% the year before. The report defines "rural" by speed limit zone, not road classification.

**Handle with care**

- All figures are **provisional**. The authority explicitly states they are subject to revision when coroner confirmation is complete (expected July 2026). Quote them as provisional, not final.
- The year-on-year motorcycle comparison (−14%) is large enough that it may attract attention, but the report does not establish a causal link to any policy or initiative. Do not imply one without independent confirmation.
- The rural road definition (based on speed limit zones) may differ from how other agencies or international bodies classify rural roads, making direct international comparison unreliable.

**Citation**
National Road Safety Authority, "Annual Road Safety Statistics — Provisional Figures", March 2026.

## Known Limitations
- This skill works on text you paste in directly. It cannot read PDFs, spreadsheets, or linked documents — you must copy and paste the relevant sections. For very long reports, paste the executive summary plus any tables relevant to your angle.
- Statistical reports sometimes bury the most significant finding in a technical annex rather than the executive summary. If you suspect the headline figure in the press release differs from the underlying data, paste the relevant table alongside the summary so Claude can check for inconsistencies.
- This skill identifies figures and explains them; it does not fact-check them against external sources. A figure that appears in the report will be reported as given. Independent verification against the underlying dataset remains the journalist's responsibility.

## Related Skills
- [statistics-researcher](./statistics-researcher.md)
- [public-database-guide](./public-database-guide.md)
- [official-data-finder](./official-data-finder.md)
- [dataset-summary-brief](../../data-journalism/analysis/dataset-summary-brief.md)
- [statistics-explainer](../../data-journalism/analysis/statistics-explainer.md)

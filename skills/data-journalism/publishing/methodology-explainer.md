---
name: methodology-explainer
status: stable
category: data-journalism
subcategory: publishing
version: 1.0
eval_score: 4.5
tags: [methodology, transparency, data journalism, publication, editorial]
---

# Methodology Explainer

## What This Skill Does
Writes a plain-language explanation of a data journalism methodology — what data was used, where it came from, how it was processed, and what the analysis found — suitable for publication alongside a data story.

## When To Use This Skill
- You have completed a data analysis and need a methodology box or explainer to accompany the published article
- An editor requires a methodology statement for editorial transparency or legal protection
- You are preparing a data story for a publication that requires published methodologies as standard
- You want to write the methodology in language that non-specialist readers can understand, without omitting the detail that expert readers need

## What You Need To Provide
**Required:** A description of the data used (source, time period, scope). The analysis steps you performed (what you calculated, how you grouped or filtered data, any joins or merges with other datasets). The key findings. Any known limitations or caveats in the data or analysis.
**Optional:** How the data was obtained (FOI, open data, licensed); what software or tools were used; whether the data was independently verified; whether any external expert reviewed the methodology.

## How Claude Approaches This
1. Structures the methodology in the order a reader needs it: what data was used, how it was obtained, what was done with it, and what the results mean — followed by honest caveats.
2. Writes for two audiences simultaneously: the general reader who wants a short, reassuring summary that the journalism is solid, and the specialist reader who needs enough detail to reproduce or challenge the methodology.
3. Balances transparency with accessibility — avoids statistical jargon unless necessary, and always explains it when used.

## Output Format
A methodology statement of 300–500 words structured under four headings: Data Sources, How We Analysed It, What We Found, and Caveats and Limitations. Tone: clear, direct, confident but honest. Written in first-person plural ("we obtained," "we analysed") or third-person ("the analysis used"), according to publication style. No jargon unexplained.

## Quality Criteria
- [ ] Every data source is identified with institution name and time period
- [ ] The analysis steps are described in plain language that a non-statistician can follow
- [ ] At least one genuine limitation is disclosed — not a generic disclaimer
- [ ] The key finding is stated clearly and connected to the methodology
- [ ] The statement is short enough to be read alongside a news article (not an academic paper)

## Example

### Input
Data used: National hospital waiting time records obtained via Freedom of Information request to the National Health Statistics Agency. Dataset covered Q1 2019 to Q3 2024, all 47 regional health authorities, all medical specialties.
Analysis: Calculated median and 90th-percentile wait times per authority per quarter. Compared 2019 Q3 (pre-pandemic baseline) to 2024 Q3 to measure change. Ranked authorities by median wait time in 2024 Q3. Calculated the gap between highest and lowest authority as a ratio.
Key finding: The highest-waiting authority (North Coastal) now has a median wait 2.2 times longer than the lowest-waiting authority (Central Metro). In 2019, that ratio was 1.4.
Limitations: Data does not capture outcomes — we cannot say whether patients deteriorated while waiting. Duration_on_market field was 40% incomplete and was excluded from analysis.
Tools: Python (pandas), verified in Excel.

### Output
**Data Sources**

The analysis is based on hospital waiting time records obtained via a Freedom of Information request to the National Health Statistics Agency. The dataset covers 22 consecutive quarters from January 2019 to September 2024 and includes records for all 47 regional health authorities across all medical specialties. The records were received in February 2026.

**How We Analysed It**

For each health authority, we calculated median waiting times and 90th-percentile waiting times — the point below which 90% of patients are seen. We used the 90th-percentile figure alongside the median because it captures the experience of the longest-waiting patients, which median figures alone can obscure.

We compared each authority's figures for Q3 2024 against Q3 2019, which we used as the pre-pandemic baseline. To measure inequality between authorities, we calculated the ratio of the highest-waiting authority's median to the lowest-waiting authority's median. Analysis was conducted in Python and independently verified in Excel.

**What We Found**

The gap between the longest and shortest-waiting authorities has grown substantially since 2019. In Q3 2024, the highest-waiting health authority has a median wait 2.2 times longer than the lowest — compared to a ratio of 1.4 in 2019. North Coastal Authority recorded the longest median wait at 68 days; Central Metro recorded the shortest at 31 days.

**Caveats and Limitations**

The data records how long patients wait, not what happens to them while they wait. We cannot conclude from this data alone that longer waits caused patient harm — that would require outcome data, which was not available. One field in the dataset (days listed on market) was approximately 40% incomplete; this field was excluded from all analysis.

Waiting time data reflects completed waits — patients still waiting at the time of the data extract are not included, which means current wait times may be underrepresented, particularly for longer waiters.

*The full dataset and analysis code are available on request.*

## Known Limitations
- This skill writes the methodology from the analysis description provided. If the analysis contained errors that are not disclosed in the input, the methodology statement will not flag them. The journalist is responsible for the accuracy of the underlying analysis.
- For highly technical analyses (regression models, machine learning, complex spatial joins), the plain-language summary may not provide sufficient detail for statistical experts to fully reproduce the work. A separate technical appendix may be needed for peer review or academic publication.
- First-person and passive-voice conventions differ by publication. The skill defaults to first-person plural ("we analysed") — adjust to match house style.

## Related Skills
- [statistics-explainer](../analysis/statistics-explainer.md)
- [data-corrections-writer](./data-corrections-writer.md)
- [data-footnote-writer](./data-footnote-writer.md)

---
name: data-footnote-writer
status: stable
category: data-journalism
subcategory: publishing
version: 1.0
eval_score: 4.4
tags: [footnotes, sourcing, data journalism, publication standards, accuracy]
---

# Data Footnote Writer

## What This Skill Does
Writes precise, publication-standard footnotes for data claims in a finished article — citing sources accurately, explaining how figures were derived where necessary, and flagging any caveats that qualified readers need to know.

## When To Use This Skill
- An article contains data claims that need formal sourcing in footnotes or endnotes
- An editor or fact-checker has asked for sources to be footnoted before publication
- You are writing a long-form data feature, annual report, or policy brief where footnoted sourcing is standard
- You want to ensure every quantitative claim in a piece is traceable to its source

## What You Need To Provide
**Required:** The data claims from the article that need footnotes (the exact sentences or figures). The source for each claim — dataset name, institution, publication date, and URL or file reference. Whether the figure was taken directly from the source or derived through analysis.
**Optional:** The publication format (academic, journalism, policy report) and its citation style if known; any methodological notes that should appear in the footnote rather than the body text.

## How Claude Approaches This
1. For each claim, identifies whether the figure is a direct quote from a source or a calculated/derived figure — and adjusts the footnote language accordingly ("Source: X" for direct quotes; "Calculated from X using [method]" for derived figures).
2. Writes each footnote to the minimum length required for the claim to be reproduced or verified — no padding, no duplication of the body text.
3. Numbers the footnotes in the order they appear in the article and formats them consistently.

## Output Format
Numbered footnotes, one per data claim, formatted as: source information first, then derivation note if applicable, then caveat if applicable. Each footnote is one to three sentences. Consistent citation style throughout. At the end, a complete list of all sources cited.

## Quality Criteria
- [ ] Every quantitative claim in the input has a corresponding footnote
- [ ] Footnotes distinguish between direct citations and derived figures
- [ ] Source information is complete: institution, publication name, date, and URL or file reference
- [ ] Derived figures include a brief description of the calculation method
- [ ] No footnote duplicates information already clear from the body text
- [ ] Footnotes are numbered in the order they appear in the article

## Example

### Input
Article claims requiring footnotes:
1. "North Coastal Authority had the longest median orthopaedic waiting time among all 47 regional health authorities in Q3 2024, at 68 days." Source: National Health Statistics Agency quarterly waiting time dataset, Q3 2024 release, downloaded February 2026 from [agency open data portal]. Figure taken directly from the dataset.

2. "The gap between the highest and lowest-waiting authority has widened by 57% since 2019 — from a ratio of 1.4 to 2.2." Source: Same dataset, but this figure was calculated by the journalist: ratio derived by dividing North Coastal median (68 days) by Central Metro median (31 days) for Q3 2024, compared to the equivalent ratio for Q3 2019 (47 days / 34 days = 1.38).

3. "One in four patients in North Coastal Authority waited more than 18 weeks for orthopaedic treatment in Q3 2024." Source: Same dataset. Calculated as: patients waiting over 18 weeks (3,100) divided by total waiting (12,400) = 25%.

### Output
**Footnotes**

¹ National Health Statistics Agency, *Quarterly Hospital Waiting Time Statistics*, Q3 2024, published December 2024. Available at: [agency open data portal]. Figure cited is the median waiting time for orthopaedic treatment at North Coastal Authority, as published in the dataset.

² National Health Statistics Agency, *Quarterly Hospital Waiting Time Statistics*, Q3 2019 and Q3 2024 (same source as note 1). The ratio cited is calculated by dividing the median waiting time for the highest-waiting authority (North Coastal: 68 days in Q3 2024; 47 days in Q3 2019) by the median for the lowest-waiting authority (Central Metro: 31 days in Q3 2024; 34 days in Q3 2019). Ratios: Q3 2024 = 2.19; Q3 2019 = 1.38. Percentage increase in gap: 59%. Figure rounded to 57% in body text due to rounding of underlying medians; see full dataset for unrounded values.

³ National Health Statistics Agency, *Quarterly Hospital Waiting Time Statistics*, Q3 2024 (same source as note 1). Calculated as patients waiting more than 18 weeks for orthopaedic treatment at North Coastal Authority (3,100) as a proportion of total orthopaedic patients waiting at that authority (12,400): 25.0%.

---

**Sources cited**

- National Health Statistics Agency. *Quarterly Hospital Waiting Time Statistics*, Q3 2019 and Q3 2024. Published December 2024. [Agency open data portal URL].

## Known Limitations
- This skill writes footnotes based on the sources and derivation methods described in the input. If the derivation method contains an error, the footnote will document that error rather than correct it. Verify all calculations before finalising footnotes.
- Some publication citation styles (Chicago, APA, MLA, house styles) have specific formatting requirements that this skill does not automatically apply. Review footnotes against the required style guide before publication.
- For derived figures that involve multiple steps or multiple datasets, the footnote may need to be longer than the one-to-three sentence guideline to be verifiable. In these cases, a supplementary methodology note linked from the footnote may be more appropriate than a single long footnote.

## Related Skills
- [methodology-explainer](./methodology-explainer.md)
- [data-corrections-writer](./data-corrections-writer.md)
- [statistics-explainer](../analysis/statistics-explainer.md)

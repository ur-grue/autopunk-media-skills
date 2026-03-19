---
name: derived-metrics-calculator
status: beta
category: research
subcategory: data-statistics
version: 1.0
eval_score: null
tags: [data, statistics, metrics, percentages, per-capita, journalism-math]
---

# Derived Metrics Calculator

## What This Skill Does
Takes raw numbers you provide and calculates derived figures — percentage changes, per-capita rates, index values, or ratios — with plain-language explanations ready to drop into a story.

## When To Use This Skill
- You have two raw figures and need the percentage change between them (e.g. year-on-year budget shifts)
- You need to convert an absolute number into a rate per 100,000 people for meaningful comparison
- You want to express a ratio or share in a form that is immediately understandable to a general audience
- You have multiple data points and want to know which shows the sharpest change relative to its baseline
- A source has given you raw totals but your editor asks for a "per person" or "per household" figure

## What You Need To Provide
**Required:** The raw numbers you want to work with, clearly labelled (e.g. "hospital beds 2019: 42,000 / 2023: 38,500 / population: 5.2 million")
**Optional:** The unit of analysis you want the rate expressed in (per 1,000, per 100,000, etc.); the geographic or time scope; the type of derived metric you want (percentage change, per-capita rate, share of total, index); any known data caveats you want flagged

## How Claude Approaches This
1. Reads the raw figures and identifies which type of calculation is most useful and most defensible for the journalistic context
2. Performs the calculation step by step, showing workings so you can check them before publishing
3. Rounds to an appropriate number of significant figures for a general audience (usually 1–2 decimal places)
4. Writes one or two ready-to-use sentences expressing the result in plain language suitable for a news article
5. Flags any caveats — rounding effects, population estimate uncertainty, or comparability issues between time periods — that should be disclosed or checked with a source

## Output Format
Short structured response: labelled calculation block showing the arithmetic; one or two plain-language sentences for direct use in copy; a brief caveats note (2–4 bullet points). Total length: under 300 words. Tone is clear and precise — written for a journalist, readable by any audience.

## Quality Criteria
- [ ] Every step of the arithmetic is shown and checkable without specialist knowledge
- [ ] The plain-language sentence matches the numeric result exactly — no rounding or framing inconsistency
- [ ] The metric type chosen (rate, change, share) is appropriate to the data provided
- [ ] At least one caveat is noted where the data or calculation has a known limitation
- [ ] Output is usable in a story without further reformatting

## Example

### Input
Reported road fatalities in a mid-sized country: 3,840 in 2019 and 2,970 in 2023. Population in 2023: 8.6 million. I need the percentage change between the two years, and the 2023 fatality rate per 100,000 people.

### Output

**Percentage change, 2019 to 2023**

Formula: ((2,970 − 3,840) ÷ 3,840) × 100
= (−870 ÷ 3,840) × 100
= **−22.7%**

Ready-to-use sentence:
> Road deaths fell by 22.7 percent between 2019 and 2023, from 3,840 fatalities to 2,970.

---

**2023 fatality rate per 100,000 people**

Formula: (2,970 ÷ 8,600,000) × 100,000
= **34.5 per 100,000**

Ready-to-use sentence:
> In 2023, the country recorded 34.5 road deaths per 100,000 people — a figure that allows direct comparison with international safety benchmarks.

---

**Caveats**
- Population figure is the reported 2023 estimate; if the actual figure differs, re-run the per-capita calculation
- The percentage change does not account for population growth between 2019 and 2023; a population-adjusted rate comparison would be more rigorous for a long-form piece
- Confirm with the source agency whether the 2019 and 2023 counts use the same fatality definition (e.g. deaths within 30 days vs. at scene)

## Known Limitations
- This skill performs calculations on numbers you supply — it cannot retrieve or verify the source figures itself; always confirm raw data with the originating agency before publishing
- For complex statistical operations (regression, confidence intervals, significance testing) use a data journalist or statistical software; this skill handles arithmetic-level derived metrics only
- Percentage-change calculations can be misleading when baseline numbers are very small; the output will flag this but the editorial judgement call is yours

## Related Skills
- [statistics-researcher](./statistics-researcher.md)
- [trend-identifier](./trend-identifier.md)
- [cross-country-data-comparer](./cross-country-data-comparer.md)
- [statistical-report-summariser](./statistical-report-summariser.md)

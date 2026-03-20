---
name: basic-statistics-calculator
status: stable
category: data-journalism
subcategory: analysis
version: 1.0
eval_score: 4.39
tags: [data-journalism, statistics, calculations, analysis, numbers, percentages, averages]
---

# Basic Statistics Calculator

## What This Skill Does
Performs and explains basic statistical calculations — percentages, percentage changes, per-capita rates, averages, medians, and ratios — from data you provide, showing the working so you can verify it and use the figures confidently in a story.

## When To Use This Skill
- You have raw numbers from a dataset, report, or public record and need to calculate percentages, rates, or changes for your story
- You want to double-check a statistic before publishing — paste the source figures and have the calculation verified step by step
- You are writing a data-driven story and need to express a finding as a per-capita rate, a percentage change, or a comparison ratio that readers will understand
- You are not confident in your math and want the working shown so you can follow the logic and catch any errors

## What You Need To Provide
**Required:** The raw numbers or data points; the calculation you need (percentage, percentage change, per-capita rate, average, median, ratio, or "tell me what is most useful for this story"); the context — what these numbers represent and where they come from.

**Optional:** The population or base figure for per-capita calculations; the time period the data covers; the comparison you want to make (year-over-year, city-to-city, before-and-after); the audience level (general public, specialist readers, other journalists); how you plan to use the result (headline figure, in-text comparison, chart label).

## How Claude Approaches This

1. **Confirms the inputs and the ask.** Restates the numbers provided, what they represent, and what calculation is being requested. This step catches misunderstandings before any math is done — if the user provided annual figures but asked for a monthly rate, that discrepancy is flagged here.

2. **Performs the calculation with full working shown.** Every step of the arithmetic is written out in plain language and with the formula. Nothing is hidden in a black box. The journalist can follow each step, check it against the source data, and verify the result independently. Rounding decisions are stated explicitly (e.g., "rounded to one decimal place").

3. **Interprets the result in plain English.** After the math, writes one sentence explaining what the number means in the context of the story. This is the sentence a journalist could use in their article — clear, accurate, and free of statistical jargon. If the result is surprising or potentially misleading without context, that is flagged.

4. **Flags caveats and common pitfalls.** Notes any issues with the calculation: small sample sizes that make percentages misleading, base-rate effects that make percentage changes deceptive, denominators that changed between periods (making direct comparison unreliable), or the difference between correlation and causation if the user is implying a causal relationship.

5. **Suggests a second calculation when relevant.** If a single figure tells an incomplete story — for example, a percentage change without the absolute numbers, or an average that hides a skewed distribution — suggests the additional calculation and explains why it matters for editorial accuracy.

## Output Format

A structured calculation report of 200-400 words. Opens with "Inputs" (restating the data), then "Calculation" (step-by-step working with formula), then "Result" (the final figure), then "In Plain English" (one sentence for the story), then "Caveats" (any statistical warnings). If a second calculation is suggested, it follows the same structure. Tone is precise and educational — written for a journalist who is competent but not a statistician.

```
**Inputs**
[Restated data and what was asked]

**Calculation**
[Step-by-step working with formula]

**Result:** [Final figure]

**In Plain English:** [One usable sentence for the story]

**Caveats**
- [Any statistical warnings or context needed]

**Additional Calculation (if relevant)**
[Same structure]
```

## Quality Criteria
- [ ] All arithmetic is correct and verifiable — every step of the working is shown
- [ ] The formula used is stated explicitly, not just the result
- [ ] The "In Plain English" sentence is accurate, clear, and usable in a news article without further editing
- [ ] Rounding decisions are stated and appropriate for the context (not rounding 49.7% to 50% without noting it)
- [ ] Caveats are specific to the calculation — not generic warnings about statistics
- [ ] If the data is too small or unreliable for the requested calculation, this is flagged clearly rather than producing a misleading number
- [ ] The skill does not editorialize — it provides the math and the context, not an opinion about what the numbers mean politically or socially

## Example

### Input
**Data:** In 2019, the city recorded 340 reported burglaries. In 2024, the city recorded 285 reported burglaries. The city's population was 210,000 in 2019 and 225,000 in 2024.

**Calculation needed:** Percentage change in burglaries, and per-capita burglary rate for both years, so I can write accurately about whether burglary has actually declined.

**Context:** I am writing a local news story about crime trends. The police chief has claimed that "burglary is down significantly."

### Output

**Inputs**
- Burglaries: 340 (2019) and 285 (2024)
- Population: 210,000 (2019) and 225,000 (2024)
- Requested: percentage change in raw burglaries + per-capita rate for both years

---

**Calculation 1: Percentage Change in Reported Burglaries**

Formula: ((New Value - Old Value) / Old Value) x 100

((285 - 340) / 340) x 100
= (-55 / 340) x 100
= -16.2%

**Result:** Reported burglaries fell 16.2% between 2019 and 2024.

**In Plain English:** The city recorded 16% fewer burglaries in 2024 than in 2019, dropping from 340 to 285 reported incidents.

---

**Calculation 2: Per-Capita Burglary Rate (per 10,000 residents)**

Formula: (Number of burglaries / Population) x 10,000

2019: (340 / 210,000) x 10,000 = 16.2 burglaries per 10,000 residents
2024: (285 / 225,000) x 10,000 = 12.7 burglaries per 10,000 residents

Percentage change in per-capita rate: ((12.7 - 16.2) / 16.2) x 100 = -21.6%

**Result:** The per-capita burglary rate fell from 16.2 to 12.7 per 10,000 residents — a 21.6% decline.

**In Plain English:** After adjusting for population growth, the burglary rate fell 22% over five years — from roughly 16 burglaries per 10,000 residents to roughly 13.

---

**Caveats**
- The raw number fell 16%, but the per-capita rate fell 22%. The difference matters: the city's population grew by 15,000 people during this period. Using the raw number alone understates the decline because it does not account for the larger population base. The per-capita figure is more accurate for a "has burglary gone down?" story.
- These are *reported* burglaries, not total burglaries. Changes in reporting rates — due to shifts in policing practice, public trust, or insurance claim behavior — can affect the numbers independently of actual crime trends. If reporting rates changed between 2019 and 2024, the decline may be partly statistical rather than real.
- A five-year comparison using only the start and end points can be misleading if there was a spike or dip in the middle. If burglaries surged to 500 in 2021 and then fell sharply, the trend story is very different from a steady decline. Request the year-by-year figures if available.

## Known Limitations
- Claude performs arithmetic reliably for straightforward calculations (percentages, averages, ratios, per-capita rates) but is not a statistical software package. For regression analysis, significance testing, confidence intervals, or anything involving large datasets, use dedicated tools (Excel, R, Python) and use this skill only to verify and explain the outputs.
- This skill works with the data provided and cannot assess data quality. If the source figures are wrong, the calculation will be correctly performed on incorrect inputs. Always verify source data against primary documents before publishing.
- The "In Plain English" sentence is designed for general news audiences. For specialist publications (financial press, scientific journals), the phrasing may need adjustment to meet field-specific conventions for reporting statistics.

## Related Skills
- [statistics-explainer](statistics-explainer.md) — explain a statistical concept or finding to a general audience
- [data-story-finder](data-story-finder.md) — identify the newsworthy story within a dataset
- [dataset-summary-brief](dataset-summary-brief.md) — summarize a full dataset before running specific calculations
- [methodology-explainer](../publishing/methodology-explainer.md) — write the methodology section explaining how calculations were performed

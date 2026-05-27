---
name: data-outlier-finder
status: beta
category: data-journalism
subcategory: analysis
version: 1.0
eval_score: null
tags: [data-journalism, analysis, outliers, anomalies, investigation]
---

# Data outlier finder

## What this skill does
Identifies unusual values, unexpected patterns, and potential stories hidden in a dataset by systematically checking for statistical outliers and contextual anomalies.

## When to use this skill
- You have a dataset and want to know where the stories are before you start reporting
- An editor asks "what's surprising in this data?" and you need a structured answer
- You are fact-checking a claim and want to verify whether the cited figure is genuinely unusual
- You received a data dump (FOI response, leaked spreadsheet, public database) and need to triage it for newsworthy patterns

## What you need to provide
**Required:**
- The dataset or a representative sample (paste the data, describe the columns, or share summary statistics)
- What the data measures and where it comes from

**Optional:**
- What you expect to find (so Claude can flag deviations from your assumptions)
- Known context that might explain outliers (e.g., "2020 data will be distorted by COVID")
- Whether you want statistical outliers only or also contextual anomalies (values that are technically valid but editorially surprising)

## How Claude approaches this
1. Identifies the key numeric columns and their expected ranges
2. Flags statistical outliers — values more than 2 standard deviations from the mean, or in the top/bottom 5% of the distribution
3. Checks for contextual anomalies — sudden changes between time periods, values that contradict known patterns, or categories that break expected rankings
4. For each outlier, states: what the value is, why it's unusual, and what reporting question it raises
5. Prioritizes findings by editorial potential — leads with the outliers most likely to be stories, not just noise

## Output format
A numbered list of findings, ordered by editorial potential. Each finding includes:
- **The value** and where it appears in the dataset
- **Why it's unusual** (statistical context or comparison)
- **The reporting question** it raises — what a journalist should check next

Ends with a short summary: how many outliers were found, how many are likely noise vs. potential stories, and what additional data would help confirm the findings.

## Quality criteria
- [ ] Each outlier is identified with its exact value, location in the dataset, and comparison point
- [ ] Statistical and contextual outliers are distinguished — the reader knows which is which
- [ ] Each finding includes a concrete reporting question, not just "this is unusual"
- [ ] Known distortions (COVID, policy changes, data collection breaks) are acknowledged, not flagged as discoveries
- [ ] Findings are prioritized by editorial potential, not listed in spreadsheet order

## Example

### Input
Dataset: Annual per-capita healthcare spending (USD, PPP-adjusted) for 30 OECD countries, 2018–2023. Source: OECD Health Statistics. I want to find anything surprising that could anchor a comparative healthcare story for a general-interest magazine.

### Output

**Finding 1: The United States remains a dramatic outlier at $12,555 per capita (2023)**
The US spends 2.3× the OECD median ($5,460). This gap has widened, not narrowed, since 2018 (+18% vs. OECD median +12%). The editorial angle isn't the outlier itself — that's well known — but the acceleration. The gap is growing faster than most readers assume.
*Reporting question:* What specific cost categories are driving the widening gap? Is it pharmaceuticals, administrative overhead, or specialist fees?

**Finding 2: Turkey's spending jumped 34% between 2021 and 2023**
From $1,650 to $2,210 — the fastest growth rate in the dataset by a wide margin. The OECD average grew 8% over the same period. This is not a statistical artefact; the increase is consistent across both years.
*Reporting question:* Is this driven by post-earthquake health infrastructure spending, a policy expansion, or currency/PPP adjustment effects? Check whether the increase appears in nominal local-currency terms or only in PPP-adjusted dollars.

**Finding 3: Japan's spending barely moved (+2%) despite an aging population**
Japan spent $4,691 in 2023, up from $4,587 in 2018. In a country where 29% of the population is over 65, flat healthcare spending is the outlier — it contradicts the standard assumption that aging populations drive cost increases.
*Reporting question:* Is Japan suppressing costs through price controls, care rationing, or efficiency gains? Or is the flat figure masking a shift from public to out-of-pocket spending?

**Finding 4: Luxembourg appears as a statistical outlier at $7,890, but it's probably noise**
Luxembourg's small population (660,000) and high cross-border workforce distort per-capita calculations. Many people receiving care in Luxembourg aren't counted in the population denominator. This is a known measurement issue in OECD data.
*Reporting question:* None — flag this as a data limitation rather than a story.

**Summary:** 4 outliers identified in 180 data points (30 countries × 6 years). Finding 1 is well-trodden but the acceleration angle is fresh. Finding 2 is the strongest lead for original reporting — under-covered and verifiable. Finding 3 is a strong counterintuitive angle for a feature. Finding 4 is noise. Additional data that would help: spending broken down by cost category (hospitals, pharma, admin) and out-of-pocket vs. public expenditure splits.

## Known limitations
- Cannot run statistical calculations on raw data. Works from summary statistics, described datasets, or pasted tables. For large datasets, provide aggregated summaries rather than row-level data.
- Outlier detection is based on described distributions and contextual knowledge, not automated statistical tests. Results should be verified with proper statistical tools before publication.
- Cannot access live databases or APIs. Works with the data you provide in the conversation.
- Context-dependent anomalies (e.g., knowing that Turkey had an earthquake in 2023) rely on Claude's training data. Very recent events may not be reflected.

## Related skills
- [data-story-finder](data-story-finder.md)
- [statistics-explainer](statistics-explainer.md)
- [chart-type-advisor](../visualization/chart-type-advisor.md)
- [methodology-explainer](../publishing/methodology-explainer.md)

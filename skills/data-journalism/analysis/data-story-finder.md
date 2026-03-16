---
name: data-story-finder
status: stable
category: data-journalism
subcategory: analysis
version: 1.0
eval_score: 4.5
tags: [data, story development, analysis, news judgement]
---

# Data Story Finder

## What This Skill Does
Identifies the newsworthy story or stories hidden inside a dataset before any writing begins — surfacing angles, outliers, trends, and comparisons that are genuinely publishable.

## When To Use This Skill
- You have a dataset but are unsure which part of it is actually news
- You need to pitch a data story to an editor and want compelling angles, not just descriptions
- You want to stress-test a dataset before committing reporting time to a particular angle
- A PR or institution has released data and you want to find what they are not publicising

## What You Need To Provide
**Required:** A description of what the dataset contains — column headers, row count, time period covered, and source. Include a small representative sample (5–20 rows) if possible.
**Optional:** The institution or event the data came from; any story hypothesis you already have; publication type and audience.

## How Claude Approaches This
1. Reads the dataset description and sample to understand the structure, variables, and coverage period.
2. Applies five standard news-value lenses: magnitude, change over time, geographic variation, outliers, and hidden/buried comparisons.
3. Generates a ranked list of potential story angles with a plain-language summary of what makes each newsworthy, what data point supports it, and what additional reporting would be needed to publish it.

## Output Format
A structured document with: a one-paragraph overview of what the dataset does and doesn't show, followed by three to six numbered story angles. Each angle includes: a one-sentence story pitch, the specific data point or pattern that supports it, a confidence note (strong / tentative / requires verification), and one or two reporting questions to pursue next. Plain language throughout — no statistical jargon unless necessary, and always explained when used.

## Quality Criteria
- [ ] At least three distinct angles, not variations of the same angle
- [ ] Every angle is grounded in a specific data point from the sample, not a generalisation
- [ ] Confidence ratings are honest — tentative findings are marked as such
- [ ] No angle claims significance beyond what the data actually shows
- [ ] Reporting questions are concrete and actionable, not generic

## Example

### Input
Dataset: National hospital waiting time records, quarterly figures for 47 regional health authorities over five years (2019–2024). Columns: authority name, region, quarter, specialty, median wait days, 90th-percentile wait days, total patients waiting, patients waiting over 18 weeks, year-on-year change. Source: national health statistics agency. Sample rows included (3 rows):
- North Coastal Authority, Northern Region, Q3 2024, Orthopaedics, 68 days median, 142 days 90th pct, 12,400 waiting, 3,100 over 18 weeks, +22% YoY
- Central Metro Authority, Central Region, Q3 2024, Orthopaedics, 31 days median, 74 days 90th pct, 18,900 waiting, 1,800 over 18 weeks, -4% YoY
- Eastern Plains Authority, Eastern Region, Q3 2024, Orthopaedics, 55 days median, 118 days 90th pct, 6,200 waiting, 1,400 over 18 weeks, +9% YoY

### Output
**Dataset Overview**

This dataset covers five years of waiting time performance across all 47 regional health authorities, broken down by medical specialty and quarter. It is strong enough to support trend stories, regional comparison stories, and specialty-specific investigations. Key limitation: the data shows volume and duration of waits but not outcomes — it cannot tell you whether patients deteriorated while waiting, only that they waited.

---

**Story Angles**

**1. The postcode lottery in orthopaedics (STRONG)**
Patients in North Coastal Authority wait more than twice as long as those in Central Metro for the same orthopaedic treatment — 68 days versus 31 days median, despite North Coastal treating fewer patients overall. This is a classic postcode lottery story with a clear human hook.
- Data support: North Coastal median 68 days vs Central Metro 31 days, Q3 2024
- Reporting next: Is this pattern consistent across years or a Q3 anomaly? What explains Central Metro's performance — funding, staffing, outsourcing?

**2. North Coastal's 22% single-year spike (STRONG)**
A 22% year-on-year increase in orthopaedic waits at North Coastal is a significant deterioration worth investigating as a standalone story. The question is whether this is a one-authority crisis or part of a wider northern-region pattern.
- Data support: +22% YoY, North Coastal, Q3 2024
- Reporting next: Pull Northern Region figures for all authorities — is this isolated or systemic? Any staffing changes or facility closures in the period?

**3. The 90th-percentile story — the worst-case waits (STRONG)**
Median figures flatter performance. The 90th-percentile column tells you what the longest-waiting one in ten patients actually experiences. At North Coastal, that figure is 142 days — nearly five months. This is the real human-impact number and often ignored in official reporting.
- Data support: 90th-pct 142 days vs 68-day median, North Coastal Q3 2024
- Reporting next: Build a five-year trend of 90th-percentile waits nationally. Is the gap between median and 90th pct widening — i.e. are long waits becoming more extreme?

**4. One authority bucking the trend (TENTATIVE — requires full dataset)**
Central Metro shows a 4% year-on-year improvement in orthopaedics while most others are worsening. If this pattern holds across specialties and multiple years, there is a "what are they doing right?" story worth telling.
- Data support: -4% YoY, Central Metro Q3 2024 (single data point — verify across full dataset)
- Reporting next: Does Central Metro outperform on other specialties too? Is there a policy or operational change in the past two years that could explain it?

**5. The 18-weeks threshold story (TENTATIVE — needs policy context)**
A significant proportion of patients are breaching the 18-week treatment target across all three sample authorities. North Coastal: 3,100 of 12,400 (25%). Central Metro: 1,800 of 18,900 (9.5%). This disparity may be publishable if a national target exists for this threshold.
- Data support: See figures above
- Reporting next: Confirm the legal or policy status of the 18-week target in this health system. Is 25% a record high for North Coastal? What were the pre-pandemic comparators?

## Known Limitations
- The skill can only work with the data described — it cannot identify stories that would require joining this dataset to another (e.g. correlating waits with patient outcomes or funding levels). That joining step requires the journalist to do additional data work first.
- If the sample provided is not representative of the full dataset, angles may not hold up when the complete data is analysed. Always verify with the full file before publishing.
- This skill does not perform statistical significance testing. Differences flagged as "strong" are editorially significant based on magnitude, not statistically validated.

## Related Skills
- [statistics-explainer](./statistics-explainer.md)
- [dataset-summary-brief](./dataset-summary-brief.md)
- [polling-analysis-writer](./polling-analysis-writer.md)

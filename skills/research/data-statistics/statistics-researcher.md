---
name: statistics-researcher
status: beta
category: research
subcategory: data-statistics
version: 1.0
eval_score: null
tags: [statistics, research, data, journalism, fact-checking]
---

# Statistics Researcher

## What This Skill Does
Compiles a structured set of credible, ready-to-cite statistics on a specific topic, sourced from recognised institutions, government databases, and peer-reviewed research.

## When To Use This Skill
- You are writing an article, script, or report and need hard numbers to support your angle
- You are entering an interview or editorial meeting and want to arrive with solid data points
- You are fact-checking a claim and need to locate the official figure and its source
- You need to compare a statistic across multiple time periods or geographies
- A source has quoted a number and you want to verify it against primary data

## What You Need To Provide
**Required:** The topic or question you want statistics on (e.g. "youth unemployment in southern Europe" or "plastic waste produced by the packaging industry globally").
**Optional:** Geographic scope (global, national, regional); time range (last 5 years, since 2010); preferred source types (government data, academic studies, NGO reports); how many statistics you need; the publication or broadcast format this is for.

## How Claude Approaches This
1. Parses the topic into its core measurable dimensions — what quantities are likely to exist, what institutions would track them, and at what geographic and temporal granularity.
2. Identifies the most credible primary source categories for the topic: national statistical agencies, UN system bodies, World Bank, OECD, peer-reviewed meta-analyses, sector-specific regulators, or major survey organisations.
3. Retrieves or reconstructs the most current and widely cited figures for each dimension, noting the year of measurement, the methodology used (survey, administrative data, modelling), and the exact source and publication.
4. Flags any statistics that are contested, derived from modelling assumptions, or frequently misquoted — and explains why they need additional care when used in reporting.
5. Presents the findings as a numbered reference list, each entry formatted for direct use in a story: the figure, what it measures, the source, and a plain-language note on its reliability.

## Output Format
A numbered list of 5–10 statistics, each formatted as:

**[Statistic]** — [Source name, year]. [One sentence on what this measures and any important caveats.]

Followed by a short "Source notes" section flagging any figures that carry methodological caveats or where more recent data may exist. Total length: 400–700 words. Tone: precise and neutral — written for a journalist, not a statistician.

## Quality Criteria
- [ ] Every statistic includes a named source and year of measurement
- [ ] No figure is presented without a plain-language explanation of what it actually measures
- [ ] Contested or modelled statistics are clearly flagged as such
- [ ] Statistics are specific enough to be directly quotable in a published story
- [ ] At least one statistic addresses change over time, not just a single point-in-time figure
- [ ] Output distinguishes between estimates, projections, and measured observations

## Example

### Input
Topic: global food waste
Scope: global and EU-level
Time range: most recent available
Format: long-read magazine feature
Statistics needed: 6–8

### Output

**1. Approximately one third of all food produced for human consumption globally is lost or wasted each year — around 1.3 billion tonnes.** — Food and Agriculture Organization of the United Nations (FAO), 2011; widely cited in subsequent UNEP reports through 2024. This is the foundational estimate for the sector. Note: "food loss" (occurring during production and supply chain) and "food waste" (at retail and consumer level) are combined in this figure; some sources report them separately.

**2. Food loss and waste generates roughly 8–10% of global greenhouse gas emissions — more than the aviation and shipping sectors combined.** — UN Environment Programme (UNEP), Food Waste Index Report, 2021. This figure includes land-use emissions from producing food that is never eaten.

**3. In the European Union, an estimated 59 million tonnes of food is wasted annually, at a cost of approximately €132 billion.** — Eurostat / European Commission, 2022 baseline data. The EU Farm to Fork Strategy adopted this figure as its benchmark. The measurement methodology was standardised across member states in 2020, so pre-2020 EU comparisons should be made with caution.

**4. Households account for the largest share of EU food waste — around 54% of the total, or roughly 32 million tonnes per year.** — Eurostat, 2022. This is a measured figure, not a model estimate, collected under the EU Waste Statistics Regulation.

**5. If food waste were a country, it would be the third largest emitter of greenhouse gases in the world, after the United States and China.** — FAO, 2013 (updated framing widely used in IPCC AR6, 2022). Journalists should note this is an illustrative comparison, not a direct measurement of a single entity's emissions.

**6. Global food waste at the consumer and retail level amounts to approximately 931 million tonnes per year.** — UNEP Food Waste Index Report, 2021. This figure covers only consumer and retail waste, not upstream losses; it is the most current measured estimate and supersedes earlier FAO figures for this segment.

**7. Reducing food waste by 50% by 2030 is Target 12.3 of the UN Sustainable Development Goals — a commitment made by 193 member states.** — United Nations, SDG 12.3, 2015. Progress tracking is conducted by Champions 12.3, a coalition of executives and officials; their annual reports provide the most current country-level data on progress.

**Source notes:** The FAO 2011 figure (Statistic 1) remains the most widely cited global total, but it was based on modelling rather than direct measurement. UNEP's 2021 Index is the current methodological standard for consumer-level waste and used direct data collection where available. For any story requiring up-to-date EU country-level comparisons, Eurostat's annual Waste Statistics publication is the primary source.

## Known Limitations
- Claude can retrieve statistics from well-documented, widely published sources but cannot access paywalled databases, proprietary industry reports, or real-time data feeds — for those, you will need direct database access or a librarian.
- Statistics on fast-moving topics (inflation, unemployment, conflict-related figures) may have been updated since Claude's knowledge cutoff; always verify the current figure against the original source before publication.
- For highly localised data (a specific city, province, or sector niche), reliable official statistics may simply not exist — Claude will flag this rather than substitute an estimate.

## Related Skills
- [statistical-report-summariser](./statistical-report-summariser.md)
- [official-data-finder](./official-data-finder.md)
- [trend-identifier](./trend-identifier.md)
- [dataset-summary-brief](../../data-journalism/analysis/dataset-summary-brief.md)
- [statistics-explainer](../../data-journalism/analysis/statistics-explainer.md)

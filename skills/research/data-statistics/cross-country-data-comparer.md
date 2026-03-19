---
name: cross-country-data-comparer
status: beta
category: research
subcategory: data-statistics
version: 1.0
eval_score: null
tags: [comparative, international, statistics, data-journalism, research]
---

# Cross-Country Data Comparer

## What This Skill Does
Takes a specific indicator or metric and produces a structured, journalist-ready comparison of how multiple countries perform on that measure, including context on what the differences mean.

## When To Use This Skill
- You are writing a story that requires international context — "how does our country compare to others on X?"
- You have a raw table of country-level statistics and need it turned into meaningful narrative comparison
- You need a quick brief before an interview with a foreign official or policy expert
- You are building a data-led feature and need to identify which countries make the strongest case studies
- You want to explain why two countries with similar raw numbers have very different outcomes

## What You Need To Provide
**Required:** The indicator or metric you want to compare (e.g., "infant mortality rate", "press freedom index score", "proportion of women in national parliament"); the list of countries to include, or a region/group (e.g., "G7 nations", "sub-Saharan Africa", "EU member states").

**Optional:** The time period or year; the data source you are working from (paste a table or figures directly); the angle of your story (e.g., "I want to show that Nordic countries outperform the EU average"); the audience reading level (general public vs. specialist policy audience).

## How Claude Approaches This
1. Identifies the indicator, confirms the unit of measurement, and notes any standard caveats about how different countries define or collect this data differently.
2. Organises the countries into a clear ranking or grouping — leaders, mid-range, laggards — and flags any outliers that break an expected pattern.
3. For each major grouping, provides one to two sentences of contextual explanation: what structural, historical, or policy factors likely explain the gap.
4. Highlights the two or three comparisons most useful for the journalist's angle — the most striking contrast, the closest peer comparison, and any counterintuitive result.
5. Flags data quality issues: missing years, different methodologies between countries, or indicators that are not strictly comparable.

## Output Format
Structured brief of 350–550 words. Opens with a one-sentence summary of the overall picture. Followed by a ranked comparison table (country, value, rank or tier). Followed by a short narrative section covering the key contrasts and their likely causes. Ends with a "Data cautions" paragraph noting any comparability issues. Tone is clear and direct — suitable for a journalist's research file or as the basis for a published explainer box.

## Quality Criteria
- [ ] Every country in the requested list is covered, with no gaps left unexplained
- [ ] The comparison table is accurate to the figures provided or clearly based on widely cited public sources
- [ ] Context section goes beyond restating the numbers — it explains the "why" in plain language
- [ ] At least one counterintuitive or non-obvious finding is surfaced
- [ ] Data cautions section identifies at least one genuine methodological limitation specific to this indicator
- [ ] No jargon that a non-specialist journalist could not immediately understand

## Example

### Input
I'm writing a feature on child poverty for a general-audience news magazine. I need a comparison of child poverty rates across Western European countries — specifically France, Germany, Spain, Italy, the UK, Sweden, and Portugal. Use the most recent EU statistics available. My angle is that southern European countries have worse outcomes despite having stronger family-oriented cultures.

### Output

**Child Poverty Rates in Western Europe: A Comparative Brief**

*Summary: Child poverty rates across Western Europe range from under 10% in Sweden to nearly 25% in Spain and Romania, exposing a persistent north-south divide that cuts across assumptions about family values and welfare generosity.*

---

**Comparison Table**
*(Source: Eurostat, "Children at risk of poverty or social exclusion", most recent full-year data)*

| Country | Children at risk of poverty or exclusion | EU-27 average: 24.7% |
|---|---|---|
| Sweden | 16.2% | Well below average |
| Germany | 21.3% | Below average |
| France | 22.8% | Near average |
| UK | 23.4% | Near average (pre-Brexit Eurostat estimate) |
| Portugal | 24.1% | At average |
| Italy | 29.7% | Above average |
| Spain | 31.4% | Significantly above average |

---

**Key Contrasts**

The most striking result is the 15-percentage-point gap between Sweden and Spain — two countries with comparable GDP per capita in the 2000s but radically different welfare architectures. Sweden's universal child benefit, subsidised childcare from age one, and low in-work poverty rates create a floor that keeps most children out of poverty even when their parents face job market disruption. Spain's system, by contrast, relies heavily on family transfers — grandparents providing childcare, extended households pooling income — which worked as a buffer before the 2008 financial crisis but left children exposed when mass unemployment hit simultaneously across entire family units.

The "family values" paradox your story is exploring holds up statistically: Italy and Spain both rank higher than northern European countries on survey measures of family solidarity and intergenerational support, yet both record child poverty rates roughly double Sweden's. The explanation is structural: informal family support cannot compensate for wage poverty, precarious employment, or absent state childcare — all of which disproportionately affect younger parents in southern Europe.

Portugal sits closer to the EU average than Italy or Spain, partly because its social spending reforms after its own 2011 bailout specifically protected child-related benefits, and partly because wage levels — while low — are more stable than in Spain's tourism-dependent economy.

France and Germany cluster near the EU average. Germany's relatively better outcome despite high recent immigration reflects its Kindergeld (universal child benefit) system, which covers all resident children regardless of parental employment status.

---

**Data Cautions**

The EU's "at risk of poverty or social exclusion" indicator combines three measures (income poverty, severe material deprivation, and low work intensity). Different countries contribute differently to their total — Spain's figure is driven mainly by in-work poverty and low work intensity, while Italy's reflects higher material deprivation. Comparing raw totals can therefore obscure different underlying problems. For publication, treat these figures as directionally reliable rather than precisely comparable.

UK figures post-2020 are Eurostat estimates and should be verified against ONS data if the UK is central to your argument.

## Known Limitations
- Claude cannot access live databases. If you do not paste figures directly, Claude will draw on training data that may be 12–24 months out of date. Always verify key statistics against Eurostat, World Bank, or OECD before publication.
- Indicators that look identical across countries are often measured differently (poverty thresholds, age definitions, household composition rules). This skill flags the most common comparability problems but cannot catch every methodological difference without access to the original technical documentation.
- For countries with weak statistical capacity or recent data collection disruptions, figures may be unreliable at source — Claude will note this where known but cannot guarantee completeness.

## Related Skills
- [statistics-researcher](./statistics-researcher.md)
- [official-data-finder](./official-data-finder.md)
- [trend-identifier](./trend-identifier.md)
- [derived-metrics-calculator](./derived-metrics-calculator.md)

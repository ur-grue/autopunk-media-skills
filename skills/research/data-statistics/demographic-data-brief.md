---
name: demographic-data-brief
status: beta
category: research
subcategory: data-statistics
version: 1.0
eval_score: null
tags: [demographics, population, research, background-brief, data-journalism]
---

# Demographic Data Brief

## What This Skill Does
Produces a concise, journalist-ready profile of the population structure, trends, and key demographic characteristics of a specified region, city, country, or community — ready to use as background for a story or segment.

## When To Use This Skill
- You are reporting on a place you are unfamiliar with and need a fast population overview before the assignment
- Your story involves an age group, ethnic community, or income bracket and you need to know how large and where that group is concentrated
- You are building context for a policy story — immigration, housing, healthcare, education — and need the demographic foundation
- You need a "who lives here" sidebar or fact box for a feature or documentary
- You are preparing interview questions for a demographer, local official, or community leader and need to know the numbers before you walk in the room

## What You Need To Provide
**Required:** The location or community you are researching (country, region, city, neighbourhood, or defined group); the primary angle of your story (what demographic question matters most to your reporting).

**Optional:** The specific dimensions you need covered (age, gender, ethnicity, income, religion, language, migration status, education, employment); the time period or trend you want to understand (current snapshot vs. change over 10 or 20 years); the audience for your piece (general public, specialist, local vs. national); any data sources you already have that Claude should build from.

## How Claude Approaches This
1. Establishes the total population and its most recent reliable source, noting any data lag or census timing issues.
2. Breaks the population down across the dimensions most relevant to the stated story angle — age pyramid, urbanisation, ethnicity or language groups, income distribution, or migration patterns, selecting the three to five most story-relevant dimensions rather than producing an exhaustive census dump.
3. Identifies the trend line: what has changed in this population over the past decade and what is projected to change in the next ten to twenty years.
4. Surfaces the detail most useful for a journalist: the unexpected concentration, the fastest-growing group, the sharpest inequality, the gap between the official picture and lived reality on the ground.
5. Ends with a short source guide — which official body publishes this data, how frequently it is updated, and where a journalist should go to verify or deepen specific figures.

## Output Format
Structured brief of 400–600 words. Leads with a two-sentence population snapshot. Organised by thematic section with short headers (e.g., "Age Structure", "Migration and Origin", "Income and Poverty", "Trend to Watch"). Each section: two to four sentences maximum — key figure, plain-language meaning, and one sentence of context. Closes with a "Verification and sources" section. Tone is factual and direct, written for a journalist who knows their subject but not this specific population.

## Quality Criteria
- [ ] Opens with a concrete, sourced population total and the year of the data
- [ ] Covers the dimensions most relevant to the stated story angle — not a generic census checklist
- [ ] Each statistic is accompanied by a plain-language interpretation of what it means
- [ ] At least one non-obvious or counterintuitive demographic detail is included
- [ ] Trend section covers both past change and a credible forward projection
- [ ] Source guide names specific agencies or databases, not generic phrases like "government statistics"
- [ ] No figure is presented without noting the year and source, even if approximate

## Example

### Input
I'm making a documentary about the housing crisis in a mid-sized post-industrial city in northern England. The city is fictional for this brief — call it "Hartwick". I need to understand who actually lives there: age breakdown, income levels, how the population has changed since the 1980s, and anything that helps explain why housing affordability is such a flashpoint now. General-audience documentary, so keep it accessible.

### Output

**Demographic Brief: Hartwick (Composite Post-Industrial City Profile, Northern England)**

*Note: This brief uses composite data typical of mid-sized post-industrial cities in northern England (pop. 150,000–250,000). Verify all figures against the most recent ONS Census and local authority data before broadcast.*

---

**Population Snapshot**

Hartwick-type cities in northern England typically hold between 170,000 and 220,000 residents (ONS Census 2021). After decades of post-industrial decline, many have stabilised or seen modest growth since 2010 — driven not by economic recovery but by inward migration from other parts of the UK and, more recently, international migration filling low-wage service sector roles.

---

**Age Structure**

The population skews older than the national average. Roughly 20–22% of residents are over 65, compared to 18.6% nationally, reflecting decades of younger people leaving for university cities and not returning. At the same time, the 25–40 cohort has grown slightly since 2015 as housing costs in major cities have pushed younger adults and young families back toward cheaper markets — exactly the group now feeling the affordability squeeze most acutely.

---

**Income and Poverty**

Median household income typically runs 15–20% below the national median. Around 30–35% of children live in households below the poverty line (60% median income measure), concentrated in specific wards rather than spread evenly across the city. The working poor are a significant and often invisible portion of this figure: employment rates are close to national averages, but wages are not.

---

**Migration and Origin**

Most residents are UK-born, but the composition has shifted. South Asian communities — predominantly Pakistani-heritage families who arrived in the 1950s–70s to work in textiles — make up 8–12% of the population and are now into their third and fourth generations. Since 2010, a newer wave of Eastern European (particularly Polish and Romanian) and, post-2015, asylum-seeking populations has added a different demographic layer. These newer groups are disproportionately concentrated in the private rented sector, making them particularly exposed to housing market volatility.

---

**Trend to Watch**

The headline housing story is this: the 1980s deindustrialisation wave caused a long population fall, which led to decades of underinvestment in housing stock. Now that population has stabilised and demand has returned — partly driven by London overflow, partly by migration — the supply has not caught up. The result is that a city built for a declining population is now facing the housing pressures of a growing one, in properties that are older, less energy-efficient, and more likely to be privately rented than the national average.

---

**Verification and Sources**

- **ONS Census 2021** (census.gov.uk): population totals, age, ethnicity, tenure, overcrowding
- **MHCLG (Ministry of Housing, Communities and Local Government)**: local authority housing data, planning permissions, affordability ratios
- **Joseph Rowntree Foundation** (jrf.org.uk): poverty rates at local authority level, updated annually
- **Local authority annual reports**: often contain ward-level breakdowns not visible in national data — request directly from the council

## Known Limitations
- This skill works from Claude's training data and cannot access live census portals or local authority databases. Figures provided without a pasted source are indicative rather than precise, and must be verified before broadcast or publication.
- Demographic data for small communities, recent arrivals, or unofficial settlements is frequently undercounted in official statistics. Claude will flag when a group is likely under-represented in the data but cannot correct for it.
- For fast-changing situations — a city that has received large numbers of refugees in the past two years, or a neighbourhood undergoing rapid gentrification — official census data may be significantly out of date. Ground-level reporting and local expert interviews are essential supplements.

## Related Skills
- [cross-country-data-comparer](./cross-country-data-comparer.md)
- [statistics-researcher](./statistics-researcher.md)
- [official-data-finder](./official-data-finder.md)
- [trend-identifier](./trend-identifier.md)

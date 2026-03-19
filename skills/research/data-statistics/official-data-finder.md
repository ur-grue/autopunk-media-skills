---
name: official-data-finder
status: beta
category: research
subcategory: data-statistics
version: 1.0
eval_score: null
tags: [data, official-sources, government-statistics, research, verification]
---

# Official Data Finder

## What This Skill Does
Identifies the most authoritative official source for a given statistical indicator and tells you exactly where to find the most recent figures, what the data covers, and what to watch out for when using it.

## When To Use This Skill
- You need a citable, authoritative figure for a common indicator (unemployment, inflation, crime rates, health outcomes, education attainment) and are not sure which agency publishes it
- You want to know whether the figure a source quoted is the most recent one available
- You are comparing the same indicator across several countries and need to know which international body collects comparable data
- You are working on deadline and need to go directly to the right dataset without spending time navigating government portals
- You want to understand the difference between two similar-sounding official measures (e.g. headline vs. core inflation, ILO unemployment vs. claimant count)

## What You Need To Provide
**Required:** The indicator or statistic you are looking for (be as specific as possible — e.g. "youth unemployment rate" rather than just "unemployment"); the country or region you are reporting on
**Optional:** The time period you need (latest available, specific year, time series); the publication you are writing for and its citation style preferences; whether you need a figure comparable across multiple countries

## How Claude Approaches This
1. Identifies the primary national statistical agency responsible for the indicator in the country you specified, and the international body (UN, OECD, World Bank, IMF, Eurostat, etc.) that collects comparable cross-country data
2. Describes the specific dataset or publication where the indicator is released — title, release cadence, and the most recent period for which data was available as of the knowledge cutoff
3. Explains what the official measure actually counts, including any definitional details that affect how the number should be reported (e.g. age ranges included, survey methodology, seasonal adjustment)
4. Notes any common alternative measures that exist and when each is appropriate to use
5. Provides direct guidance on how to navigate to the figure — table name, series code, or filter to apply — so you do not waste time searching

## Output Format
Structured briefing, under 400 words. Sections: Primary source (agency, dataset, release schedule); Where to find it (URL path or navigation instructions, series identifier if applicable); What the measure covers (definition, scope, methodology note); Alternative measures (when they exist and when to use each); Caveats for journalists (what the number does not show, common misreportings to avoid). Plain English throughout — no statistical jargon without immediate explanation.

## Quality Criteria
- [ ] Primary source named is the genuine official agency for that indicator and country, not a secondary aggregator
- [ ] The definition of the measure is explained accurately and in terms a non-specialist can follow
- [ ] At least one common misreporting or misinterpretation of the indicator is flagged
- [ ] Where an international comparable dataset exists, it is named alongside the national source
- [ ] Navigation guidance is specific enough to reach the data without additional searching

## Example

### Input
I'm reporting on youth unemployment in a Western European country with a population of around 10 million. I need the latest official figure, I want to know how it compares internationally, and I need to understand whether the headline number my source quoted is the right one to use.

### Output

**Primary source**
The national statistics office publishes a monthly Labour Force Survey (LFS). Youth unemployment — defined as people aged 15–24 who are unemployed and actively seeking work, expressed as a share of the 15–24 labour force — is released in the monthly employment bulletin, usually around 30 days after the reference month. The most recent figures available as of early 2026 cover Q3 2025.

**Where to find it**
On the national statistics office website: navigate to Employment → Labour Force Survey → Monthly bulletin → Table 3 (Unemployment by age group). Download the Excel file; the youth unemployment rate is in column F, seasonally adjusted series.

**What the measure covers**
This is the ILO-standard unemployment rate for the 15–24 age group. "Unemployed" means without work, available to start within two weeks, and actively looked for work in the past four weeks. Students who are not job-seeking are excluded. The denominator is the active labour force (employed + unemployed), not the total youth population — which means the rate can look high even if most young people are in education.

**International comparable dataset**
Eurostat publishes harmonised youth unemployment rates using the same ILO definition across all EU member states. Series code: yth_empl_090. Updated monthly. This is the correct source for any cross-country comparison — national LFS microdata uses identical methodology but may have minor revisions before Eurostat incorporates them.

**Alternative measures**
The NEET rate (Not in Employment, Education or Training) is sometimes quoted alongside youth unemployment and gives a broader picture of labour market exclusion. It is published quarterly by Eurostat (series: edat_lfse_20). Use NEET when your story is about young people outside all productive activity; use the unemployment rate when your story is specifically about job-seeking.

**Caveats for journalists**
- The youth unemployment rate looks dramatically higher than the overall rate partly because most students are excluded from the denominator — do not describe it as "X% of young people are unemployed" without adding context about who is counted
- Seasonal adjustment matters: always use the seasonally adjusted series for year-on-year comparisons; raw figures spike predictably in summer when students enter the labour market
- If your source quoted a figure without specifying the reference quarter, confirm it is the most recent release before publishing

## Known Limitations
- Knowledge of specific dataset URLs, series codes, and release dates reflects information available up to early 2026; statistical agencies occasionally restructure their websites or rename series, so always verify the navigation path on the live site before filing
- For countries outside the OECD and EU, comparable cross-national data is often patchy or significantly delayed; this skill will flag when a reliable international comparable does not exist rather than suggesting a weaker substitute
- This skill identifies where official data lives and what it means — it does not retrieve or display the actual current figures; you must visit the source to get the number

## Related Skills
- [statistics-researcher](./statistics-researcher.md)
- [public-database-guide](./public-database-guide.md)
- [demographic-data-brief](./demographic-data-brief.md)
- [cross-country-data-comparer](./cross-country-data-comparer.md)

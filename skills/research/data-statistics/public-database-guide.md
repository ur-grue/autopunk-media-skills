---
name: public-database-guide
status: beta
category: research
subcategory: data-statistics
version: 1.0
eval_score: null
tags: [data, databases, research, statistics, open-data]
---

# Public Database Guide

## What This Skill Does
Produces a step-by-step guide — tailored to a journalist's specific story angle — for finding, filtering, and downloading the right data from a named public database.

## When To Use This Skill
- You know which public database holds the data you need (Eurostat, WHO, World Bank, OECD, UN Comtrade, national statistics offices, etc.) but are not sure how to navigate it efficiently
- You need to retrieve a specific indicator, time series, or geographic breakdown and want to avoid spending hours clicking through unfamiliar interfaces
- You are briefing a researcher or junior reporter to pull the data on your behalf and need clear written instructions
- You want to cross-check whether a dataset on your chosen platform is the most authoritative source for your topic
- You are on deadline and need the fastest path to a downloadable file rather than a full tutorial

## What You Need To Provide
**Required:** The name of the database (e.g., "Eurostat", "WHO Global Health Observatory", "World Bank Open Data") and what data you are looking for (topic, indicator name, country or region, and approximate date range).

**Optional:** The format you need the data in (CSV, Excel, JSON, API); the geographic level of detail required (national, regional, city-level); any known indicator codes you have already found; your publication's preferred citation style.

## How Claude Approaches This
1. Identifies the correct section or data explorer within the named database where the target indicator is most likely to be housed, based on how that platform organises its content.
2. Writes numbered navigation steps from the database homepage to the exact dataset, specifying menu names, filter labels, and toggle options as they appear in the interface — not abstract descriptions.
3. Specifies exactly which filters to apply (geography, time period, unit of measure, breakdown categories) to produce a clean, story-ready extract rather than a raw bulk download.
4. Describes how to export the data, including which file format to choose and any options (e.g., "include labels", "transpose rows/columns") that affect usability in a spreadsheet.
5. Flags any known caveats specific to that database: revision cycles, data gaps by country, differences between preliminary and final figures, and how to cite the source correctly.

## Output Format
A numbered navigation guide of 400–700 words, written in plain English. Structured as: (1) a one-paragraph orientation to the database section, (2) step-by-step navigation instructions, (3) filter settings, (4) export instructions, (5) a short caveats and citation note. No jargon — every interface element referenced by its exact on-screen label. Suitable for forwarding directly to a researcher or junior reporter.

## Quality Criteria
- [ ] Navigation steps follow the actual structure of the named database — no invented menu names or fictional interface elements
- [ ] Filter settings are specific enough that following them produces the correct dataset, not just a broad category
- [ ] Export instructions specify the correct file format and any options needed for a clean download
- [ ] Caveats section addresses at least one real limitation of the named database for the requested indicator
- [ ] Output is written so that someone unfamiliar with the platform can follow it without additional help
- [ ] Citation note tells the journalist exactly what to credit in their piece

## Example

### Input
Database: Eurostat
Data needed: Monthly unemployment rates by age group (15–24 and 25–74) for France, Germany, Spain, and the EU27 average, from January 2018 to the most recent month available.
Format needed: CSV, with country labels included.
Story angle: Comparing youth unemployment trends before and after the 2020 economic shock.

### Output
**Where to go first**

Eurostat's unemployment data lives in the "Employment and unemployment (Labour Force Survey)" section of the Statistics database. You do not need to browse the full catalogue — the fastest path is through the data browser using the indicator code below.

**Navigation steps**

1. Go to ec.europa.eu/eurostat and click "Data" in the top navigation bar.
2. In the search box that appears, type **une_rt_m** and press Enter. This is the indicator code for monthly unemployment rates by sex and age. Click the result titled "Unemployment rates by sex, age and citizenship (%)".
3. The data explorer will open with a table view. You will see filter panels on the left side.

**Filter settings**

Apply the following filters in order:

- **Frequency:** Monthly (should be pre-selected)
- **Unit:** Percentage of active population
- **Sex:** Total
- **Age:** Select both **Y15-24** (15 to 24 years) and **Y25-74** (25 to 74 years). Hold Ctrl (Windows) or Cmd (Mac) to select both simultaneously.
- **Citizen:** Total
- **Geo:** Select France (FR), Germany (DE), Spain (ES), and European Union — 27 countries from 2020 (EU27\_2020). To find EU27, scroll to the top of the geography list — aggregate regions appear before individual countries.
- **Time:** Set the start period to January 2018. Leave the end period as the default (most recent available).

After applying all filters, the table should show four geographic columns and two age-group rows. If you see more rows, re-check that Sex is set to "Total" and Citizen is set to "Total".

**Exporting**

Click the blue "Download" button above the table. In the download dialog:
- Format: **CSV**
- Select **"Labels"** rather than "Codes" so country and age names appear in plain text, not abbreviations.
- Leave "Compressed" unchecked unless the file is very large.

Click Download. The file will be named something like `une_rt_m_1_Data.csv`. Open it in your spreadsheet application to confirm all four countries and both age groups are present.

**Caveats and citation**

- Eurostat revises monthly figures retroactively when national statistics offices submit corrections. Always note the download date in your records. For published work, use the most recent download.
- Data for the current month is typically provisional and carries a flag ("p" in the raw data). Treat it as preliminary until the following month's release confirms it.
- Germany's figures use a different national methodology for some periods pre-2021; for a methodology note, search "LFS explanatory notes Germany" on the Eurostat website.
- **Citation format:** European Commission, Eurostat, "Unemployment rates by sex, age and citizenship (%)", indicator une_rt_m, downloaded [date], ec.europa.eu/eurostat.

## Known Limitations
- Interface navigation instructions are based on the database's structure at time of writing. Eurostat, WHO, and World Bank redesign their portals periodically — step labels and menu positions may shift. Always confirm the indicator code remains valid before forwarding the guide to a researcher.
- For databases that require registration or API keys (e.g., some national statistics offices), this skill describes the public web interface only and cannot generate authentication credentials.
- Very granular geographic levels (sub-national regions, municipalities) are not available for all indicators on all platforms; the guide will note when the requested breakdown is unavailable and suggest the closest available alternative.

## Related Skills
- [official-data-finder](./official-data-finder.md)
- [statistics-researcher](./statistics-researcher.md)
- [statistical-report-summariser](./statistical-report-summariser.md)
- [dataset-summary-brief](../../data-journalism/analysis/dataset-summary-brief.md)

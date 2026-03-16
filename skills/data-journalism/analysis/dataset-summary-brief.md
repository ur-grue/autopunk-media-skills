---
name: dataset-summary-brief
status: stable
category: data-journalism
subcategory: analysis
version: 1.0
eval_score: 4.4
tags: [datasets, briefing, data overview, story development]
---

# Dataset Summary Brief

## What This Skill Does
Produces a structured summary of what a dataset contains, what it covers, what its limitations are, and what story angles it could plausibly support — written as a briefing document for a journalist or editor.

## When To Use This Skill
- You have received a new dataset and need to assess its news potential quickly before committing reporting time
- You need to brief an editor, producer, or commissioning colleague on what a dataset does and doesn't contain
- You are handing off a dataset to another journalist and need to document what you found
- You want to identify data gaps before deciding whether additional FOI requests or data collection are needed

## What You Need To Provide
**Required:** A description of the dataset — source, title or file name, number of rows and columns, time period covered, geographic scope, and a list of column names with brief descriptions of what each contains.
**Optional:** A small representative data sample; any known issues with the data (missing values, format inconsistencies); the context in which the data was obtained (FOI response, published report, leaked document).

## How Claude Approaches This
1. Reviews the structure description and identifies the key variables, time dimensions, and geographic granularity of the dataset.
2. Assesses the dataset's completeness and potential limitations — missing periods, incomplete geographies, definitional ambiguities, and likely data quality issues.
3. Writes a structured brief covering: what the dataset is and where it came from, what it can and cannot show, and three to five story angles it could support.

## Output Format
A one-page briefing document (approximately 400–600 words) structured under four headings: What This Dataset Is, What It Covers, Limitations and Caveats, and Potential Story Angles. Tone: direct and editorial — written for a journalist colleague, not a data scientist. No statistics formulae. Plain language throughout.

## Quality Criteria
- [ ] The "What It Covers" section specifies the exact time range, geographic scope, and unit of analysis (person, event, institution, etc.)
- [ ] At least two genuine limitations are identified, not generic disclaimers
- [ ] Story angles are grounded in the specific variables available, not wishful thinking
- [ ] The brief is honest about what the dataset cannot show as well as what it can
- [ ] Written at a level that a non-data journalist can act on immediately

## Example

### Input
Dataset name: Residential Property Transaction Register, Q1 2019 – Q4 2025
Source: National Land Registry (published open data, downloaded March 2026)
Rows: 2,847,312
Columns: 14
Column descriptions:
- transaction_id: unique identifier
- date_of_transfer: date transaction completed
- price_paid: sale price in local currency
- property_type: D (detached), S (semi-detached), T (terraced), F (flat)
- new_build: Y/N
- freehold_leasehold: F/L
- full_address: street, town, district, county
- postcode: full postcode
- district_code: local authority district code
- region: one of 9 national regions
- buyer_type: individual / company / other
- buyer_name_1: buyer name (individual or company)
- seller_name_1: seller name
- duration_on_market: days listed before sale (sourced from portal data, ~60% complete)

Known issues: duration_on_market has ~40% missing values. Company buyer names are not standardised — subsidiaries may be listed differently across transactions.

### Output
**What This Dataset Is**

The Residential Property Transaction Register is an open government dataset recording every residential property sale completed in the country between January 2019 and December 2025. With 2.8 million rows, it is comprehensive and considered the authoritative source for transaction-level property data. It was obtained directly from the National Land Registry's open data portal.

**What It Covers**

- **Time range:** January 2019 to December 2025 — seven years, covering the pre-pandemic market, the pandemic boom, and the subsequent correction
- **Geography:** National coverage with full postcode, local authority district, and one of nine regions for every transaction
- **Unit of analysis:** Individual property transactions — one row per completed sale
- **Key variables available for analysis:** Sale price, property type (detached/semi/terraced/flat), new build status, freehold vs leasehold, buyer type (individual or corporate), buyer and seller names, and time on market (partial)

**Limitations and Caveats**

- **Duration on market is 40% incomplete.** Any story relying on this variable should treat figures as indicative rather than definitive, and the missing data is not random — older transactions and rural areas are more likely to be missing values.
- **Company buyer names are not standardised.** Investigating corporate property accumulation — a common and legitimate data story — will require significant name-matching work before results are reliable. Subsidiaries of the same group may appear as separate entities.
- **No buyer nationality or country of origin.** Despite frequent policy interest in overseas property purchases, this dataset cannot identify foreign buyers. Buyer names are present but nationality is not recorded.
- **Prices are nominal, not inflation-adjusted.** Any year-on-year comparison should be inflation-adjusted for fair reporting; the dataset does not do this automatically.

**Potential Story Angles**

1. **The new-build premium, by region:** Filter for new-build transactions versus equivalent existing properties in the same postcode. The price gap varies significantly by region and has likely widened since 2022.

2. **Corporate landlord growth:** Filter buyer_type = company and map the distribution of corporate purchases by region and year. The period 2020–2023 is expected to show significant growth in several urban areas.

3. **Leasehold prevalence in flats:** Cross-tab freehold_leasehold against property_type. Leasehold sales among flat buyers may have changed in the wake of recent legislative activity.

4. **Fastest and slowest markets by district:** Using the partial duration_on_market data (acknowledging gaps), identify the 10 local authority districts with the fastest average time to sell in 2025 versus 2019.

5. **Price collapse in specific postcodes:** Identify postcodes or districts where median transaction prices have fallen more than 15% in nominal terms between 2022 peak and 2025. These are the hardest-hit markets and likely correspond to identifiable economic events.

## Known Limitations
- The brief is only as accurate as the column descriptions provided. If column definitions are ambiguous or misleading, the brief may misdescribe what the data contains. Always check against a sample of actual rows.
- This skill does not assess data quality beyond what is reported in the known-issues input. Hidden errors (e.g. systematic misclassification in a category field) will not be flagged unless reflected in the input.

## Related Skills
- [data-story-finder](./data-story-finder.md)
- [foi-data-request](../investigation/foi-data-request.md)
- [data-cleaning-brief](../investigation/data-cleaning-brief.md)

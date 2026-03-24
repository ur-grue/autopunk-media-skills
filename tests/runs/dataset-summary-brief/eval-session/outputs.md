# dataset-summary-brief — Eval Session Outputs

Generated: 2026-03-24

---

## Input 01: Standard dataset assessment (Hospital Waiting Times)

**What This Dataset Is**

The National Hospital Waiting Times Register is a government open dataset published by the Department of Health, recording individual patient referral-to-treatment journeys across the national health system from Q1 2020 through Q4 2025. With 4.2 million rows, it provides a comprehensive, patient-level view of how long people waited for hospital treatment — and whether they were treated at all. The dataset spans the pandemic period and its aftermath, making it a valuable source for tracking how waiting lists evolved through crisis and recovery.

**What It Covers**

- **Time range:** January 2020 to December 2025 — six years covering the initial pandemic disruption, the backlog peak, and subsequent recovery efforts
- **Geography:** National coverage, with hospital-level and regional identifiers for every record
- **Unit of analysis:** Individual patient referral-to-treatment episodes — one row per referral
- **Key variables:** Wait time in days, medical specialty, priority level (urgent/routine/cancer pathway), outcome (treated/cancelled/did not attend), patient age band, and gender

**Limitations and Caveats**

- **Negative wait times in ~0.3% of rows.** These are almost certainly data entry errors — likely cases where treatment dates were recorded before referral dates. They should be excluded from any analysis, but their presence raises questions about data quality in the remaining records.
- **Hospital codes changed during the 2022 NHS restructuring.** Any longitudinal analysis tracking performance at individual hospitals must account for code changes, or hospitals will appear to vanish and new ones to materialise. A mapping table between old and new codes is essential before analysis begins.
- **No clinical outcome data.** The dataset records whether a patient was treated, cancelled, or did not attend — but not what happened after treatment. It cannot answer questions about treatment quality or patient recovery.
- **Age reported in 10-year bands only.** This prevents granular age analysis (e.g., distinguishing 70-year-olds from 79-year-olds), which matters for stories about elderly patient wait times.

**Potential Story Angles**

1. **Cancer pathway waits vs. targets:** Filter for priority_level = cancer and calculate the proportion of patients treated within the national target (typically 62 days from referral). Track how this proportion changed year by year from 2020 to 2025, identifying the worst-performing specialties and regions.

2. **The "did not attend" question:** Analyse outcome = did_not_attend by region, specialty, and wait time. Patients with longer waits may be more likely to drop out of the system — a potential story about how long waits become self-reinforcing.

3. **Regional inequality in wait times:** Compare median wait_days across regions for the same specialty and priority level. Identify which regions consistently perform worst and whether the gap is widening or narrowing.

4. **Post-pandemic recovery by specialty:** Chart wait_days over time for each major specialty. Some (e.g., orthopaedics, which requires operating theatre access) may still not have recovered to pre-pandemic levels by 2025.

5. **Gender disparities in waiting times:** Compare median wait times by gender across specialties, controlling for priority level. Research suggests women wait longer for certain diagnoses — this dataset could test that nationally.

---

## Input 02: Niche technical dataset (European Air Quality PM2.5)

**What This Dataset Is**

The European Air Quality Monitoring Network dataset is a large-scale collection of hourly PM2.5 air pollution readings published by the European Environment Agency (EEA). With 87 million rows covering approximately 4,000 monitoring stations across 39 European countries, it is one of the most comprehensive publicly available air quality datasets on the continent. The data covers January 2019 to December 2025, providing seven years of hourly readings that span the pre-pandemic baseline, the pandemic-era pollution drop, and the post-pandemic return.

**What It Covers**

- **Time range:** January 2019 to December 2025 — seven years at hourly resolution
- **Geography:** 39 European countries, approximately 4,000 fixed monitoring stations, each geolocated with latitude and longitude
- **Unit of analysis:** One hourly PM2.5 concentration reading per station
- **Key variables:** PM2.5 concentration in micrograms per cubic metre, station location (country, coordinates), timestamp in UTC, and a data quality flag (valid/suspect/missing)

**Limitations and Caveats**

- **Station density varies enormously between countries.** Western European nations (Germany, France, UK) may have hundreds of stations; some Eastern European or smaller countries may have fewer than 20. Cross-country comparisons of national averages will be skewed by this uneven coverage. A country with few stations in clean areas will look cleaner than it is.
- **Rural stations underrepresent actual human exposure.** Most people live in cities, but monitoring stations are distributed to cover a range of environments. National averages that include remote rural stations will understate the pollution levels that most citizens actually breathe.
- **Hourly readings create enormous volume but require aggregation for storytelling.** Journalists will need to aggregate to daily, monthly, or annual averages before the data becomes narratively useful. The choice of aggregation method (mean vs. median, handling of missing hours) will affect results.
- **The data quality flag matters.** Rows flagged as "suspect" or "missing" should be excluded or clearly flagged in any analysis. The proportion of flagged readings varies by station and country.

**Potential Story Angles**

1. **The pandemic air quality dividend — and its disappearance.** Compare average PM2.5 levels in major European cities during 2020 lockdowns versus 2019 and 2023-2025. Quantify how quickly pollution returned to pre-pandemic levels.

2. **Europe's most polluted cities, hour by hour.** Rank cities by the number of hours per year in which PM2.5 exceeded the WHO guideline threshold (15 ug/m3 annual mean, or 45 ug/m3 24-hour). Identify which cities breach these thresholds most frequently.

3. **Winter pollution spikes in Eastern Europe.** Filter for winter months (October-March) in countries known for domestic solid fuel burning (Poland, Bulgaria, North Macedonia). Map the seasonal pattern and compare it to Western European stations.

4. **Are new clean air zones working?** For cities that introduced low-emission zones or traffic restrictions during the data period, compare PM2.5 trends at stations inside versus outside the zone.

5. **Wildfire smoke events across the continent.** Identify days where multiple stations in a region simultaneously recorded extreme PM2.5 spikes — these likely correspond to wildfire smoke events, which are increasing in frequency.

---

## Input 03: Minimal input (Crime Statistics)

**What This Dataset Is**

This is a police department spreadsheet containing approximately 50,000 rows of crime statistics. The source is a local police department, though the specific jurisdiction, publication method, and release context are not specified. With only three columns — date, type, and location — this is a stripped-down dataset that can answer basic questions about crime patterns but lacks the detail needed for deeper investigative work.

**What It Covers**

- **Time range:** Not specified — the date column is present, but the start and end dates of the data are unknown. This must be confirmed before any analysis.
- **Geography:** Not specified — the location column exists, but whether it contains street addresses, neighbourhood names, postcodes, or coordinates is unclear. The geographic scope (one city, one district, one precinct) is also unknown.
- **Unit of analysis:** Presumably individual crime reports or incidents — one row per crime event
- **Key variables:** Date of incident, crime type (categories unknown), and location (format unknown)

**Limitations and Caveats**

- **Critical metadata is missing.** Without knowing the time range, geographic scope, crime type categories, or how "location" is defined, this dataset cannot be responsibly analysed or reported on. The first step is to obtain a data dictionary or contact the police department for clarification.
- **50,000 rows could mean very different things.** This could be five years of data for a small town or three months for a large city. The row count alone tells you nothing about coverage or completeness.
- **No severity, outcome, or demographic information.** The dataset cannot distinguish between a shoplifting report and a homicide, between a solved case and an open one, or say anything about victims or suspects. Stories based solely on this data will be superficial.
- **Police-recorded crime is not all crime.** This dataset reflects what was reported to and recorded by police, not what actually happened. Certain crime types (sexual assault, domestic violence, fraud) are significantly underreported.

**Potential Story Angles**

1. **Crime hotspot mapping — if location is geocodable.** If the location column contains addresses or coordinates, map the density of reported crimes across the jurisdiction. Identify whether crime clusters around specific streets, commercial areas, or public transport hubs.

2. **Seasonal or time-based patterns.** Using the date column, chart the volume of reported crimes by month or day of week. Certain crime types (burglary, assault) often show strong seasonal patterns.

3. **Year-on-year trends — with strong caveats.** If the data spans multiple years, compare annual totals by crime type to identify whether reported crime is rising or falling. Emphasise that changes may reflect reporting patterns rather than actual crime trends.

---

## Input 04: European/international context (EU Farm Subsidies)

**What This Dataset Is**

The EU Farm Subsidy Payments Database is a compiled dataset of agricultural subsidy payments made across all 27 EU member states from 2018 to 2025, assembled by a journalism consortium from national payment agency disclosures. With 12.4 million rows, it provides a rare cross-border view of who receives Common Agricultural Policy (CAP) money — the EU's single largest budget item — and how much they receive. This is a powerful accountability dataset, but its cross-national compilation introduces important data quality challenges.

**What It Covers**

- **Time range:** 2018 to 2025 — eight years spanning two CAP programming periods
- **Geography:** All 27 EU member states, with beneficiary data down to the municipality level
- **Unit of analysis:** Individual subsidy payments — one row per payment to a named beneficiary in a given year under a specific scheme
- **Key variables:** Beneficiary name, country, and municipality; payment year and amount in euros; scheme name (e.g., Basic Payment Scheme, Rural Development); sector (crop/livestock/mixed/other); and legal form (natural person/company/cooperative/public body)

**Limitations and Caveats**

- **Beneficiary names are not standardised across countries.** The same company may appear under different names, transliterations, or legal suffixes in different member states. Corporate groups that receive subsidies through multiple subsidiaries will not be automatically aggregated. Any "biggest recipients" story requires extensive name-matching work.
- **Entity-level vs. holding-level reporting varies by country.** Some countries report payments to individual legal entities; others aggregate to the farm holding level. This means direct cross-country comparisons of "average payment per beneficiary" may be misleading — one country's single row may combine what another country splits into three.
- **Currency conversion introduces artefacts.** For non-euro countries (Poland, Hungary, Czech Republic, etc.), payment amounts have been converted at year-end exchange rates. This means year-on-year changes in euro-denominated amounts may partly reflect currency movements rather than actual payment changes.
- **Scheme names are not harmonised.** Different countries may use different names for equivalent CAP schemes, complicating cross-country analysis of specific payment types.

**Potential Story Angles**

1. **Who gets the most CAP money?** Rank the top 100 beneficiaries by total payments over the eight-year period. Identify which are agribusiness corporations, which are cooperatives, and which are public bodies — challenging the popular image of farm subsidies flowing to family farmers.

2. **The company vs. individual farmer split.** For each member state, calculate the share of total payments going to companies versus natural persons. Track how this ratio has shifted from 2018 to 2025 — is consolidation accelerating?

3. **Geographic concentration of payments.** Map total payments per municipality across the EU. Identify whether subsidy money is concentrated in wealthy agricultural regions or distributed to areas that might need it most.

4. **Rural development vs. direct payments — who benefits?** Compare the beneficiary profiles of Rural Development scheme payments (intended to support diversification and environmental goals) versus Basic Payment Scheme (area-based direct payments). Are different types of farmers benefiting from different streams?

5. **Cross-border corporate subsidy stacking.** Identify corporate groups that receive payments in multiple member states. Calculate their combined EU-wide subsidy total — a figure that no single national disclosure reveals.

---

## Input 05: Vague/ambiguous input (Schools data)

**What This Dataset Is**

This is described only as "some data about schools" from a government source. The precise origin, publication context, time period, geographic scope, and contents of this dataset are unknown. The number of rows is described as "a lot" and the columns as "various things about schools." In its current state, this dataset cannot be assessed for news value, and any analysis would be premature.

**What It Covers**

- **Time range:** Unknown — must be established before any analysis
- **Geography:** Unknown — could be one district, one region, or an entire country
- **Unit of analysis:** Presumably individual schools, but this is not confirmed — rows could represent classes, students, exam results, or inspection events
- **Key variables:** Unknown — "various things about schools" could mean performance data, enrollment figures, funding levels, staffing ratios, inspection ratings, demographic breakdowns, or none of these

**Limitations and Caveats**

- **The dataset cannot be assessed without basic metadata.** Before any analysis, you need to answer: What does each row represent? What do the columns contain? What time period is covered? What geographic area? Where exactly did this come from? Without this, any findings would be unreliable.
- **"Government" is not a sufficient source attribution.** For publication, readers and editors need to know which government department or agency produced the data, when it was released, and whether it is a statutory dataset or a one-off release.

**Potential Story Angles**

Story angles cannot be responsibly identified until the dataset's contents are known. Once the column definitions, time range, and geographic scope are established, potential angles could include school performance trends, funding disparities, demographic shifts, or staffing shortages — but this depends entirely on what the data actually contains.

The recommended next step is to open the file, examine the column headers, review a sample of rows, and seek a data dictionary or methodology document from the source agency.

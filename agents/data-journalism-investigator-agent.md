---
name: data-journalism-investigator-agent
type: agent
status: stable
version: 1.0
eval_score: 4.72
maxTurns: 25
allowedTools:
  - Read
  - Write
  - Edit
  - Glob
  - Grep
disallowedTools: []
skills:
  - data-story-finder
  - scraper-brief
  - data-cleaning-brief
  - basic-statistics-calculator
  - statistics-explainer
  - chart-description-writer
  - methodology-explainer
roles: [journalist, data-journalist]
tags: [data-journalism, investigation, statistics, visualization, methodology, agent]
---

# Data Journalism Investigator Agent

## What this agent does
Takes a dataset or data source and a research question and produces a complete data journalism package — story angles, data collection plan, cleaning instructions, statistical analysis, reader-friendly explanations, chart descriptions, and a published methodology statement — ready for an editor to review.

## When to use this agent
- You have a dataset and a research question but no story yet — you want the full pipeline from raw data to publishable findings in one run
- You are working on a data investigation and want to move from messy data through analysis to a package your editor can green-light
- You have a tip or hypothesis and a data source that could prove or disprove it, and you want structured analysis before you start writing
- You need a methodology statement, chart descriptions, and plain-language stats ready alongside your findings — not as afterthoughts

## What you need to provide
**Required:**
- The dataset or data source — what it contains, where it came from, column headers if available, and a small sample (5-20 rows) if possible
- A research question, topic, or hypothesis you want to investigate

**Optional:**
- Whether the data is already in hand or still needs to be collected (determines whether scraper-brief runs)
- Whether the data is clean or has known problems (determines whether data-cleaning-brief runs)
- Publication type and audience (local newspaper, national broadsheet, specialist outlet)
- Any specific calculations you need (percentage changes, per-capita rates, comparisons)
- Chart types you plan to use (line, bar, scatter — or "advise me")
- Deadline or turnaround constraints
- Prior reporting on the topic you want to build on or challenge

## Skills this agent composes

| Step | Skill | What it produces | Condition |
|------|-------|-----------------|-----------|
| 1 | [data-story-finder](../skills/data-journalism/analysis/data-story-finder/SKILL.md) | 3-6 ranked story angles with data support, confidence ratings, and reporting questions | Always |
| 2 | [scraper-brief](../skills/data-journalism/investigation/scraper-brief/SKILL.md) | Technical brief for collecting data from a web source — fields, schema, scope, legal notes | Skipped if the data is already in hand |
| 3 | [data-cleaning-brief](../skills/data-journalism/investigation/data-cleaning-brief/SKILL.md) | Step-by-step cleaning checklist with editorial sign-off decisions flagged | Skipped if the data is already clean |
| 4 | [basic-statistics-calculator](../skills/data-journalism/analysis/basic-statistics-calculator/SKILL.md) | Calculations with full working shown — percentages, rates, changes, ratios — plus plain-English interpretations | Always |
| 5 | [statistics-explainer](../skills/data-journalism/analysis/statistics-explainer/SKILL.md) | Plain-language rewrites of the statistical findings for a general audience | Always |
| 6 | [chart-description-writer](../skills/data-journalism/visualization/chart-description-writer/SKILL.md) | Captions and alt-text for each chart the story requires | Always |
| 7 | [methodology-explainer](../skills/data-journalism/publishing/methodology-explainer/SKILL.md) | Published methodology statement covering data sources, analysis steps, findings, and caveats | Always |

## How the agent works

### PLANNING mode

When the agent receives the brief, it:
1. Reads the brief and identifies the dataset (or data source), the research question, and whether the data is already collected and clean
2. Determines which of the seven skills to invoke — all seven for a full investigation starting from a web source with messy data, fewer if the data is already in hand and clean
3. Flags any information gaps that will affect specific steps — missing column headers for data-story-finder, no sample rows for data-cleaning-brief, no chart types specified for chart-description-writer
4. Presents a numbered plan showing each step, the skill it uses, what it will produce, and which steps are conditional
5. Waits for user approval before proceeding

The plan output looks like this:
```
INVESTIGATION PLAN for [research question or topic]

Dataset: [name or description of dataset/source]
Status: [in hand / needs collection] · [clean / needs cleaning / unknown]
Research question: [the question or hypothesis]
Publication: [type and audience, if specified]

Step 1: data-story-finder — Identify 3-6 story angles from the dataset
        [INCLUDED]
Step 2: scraper-brief — Technical brief for data collection
        [INCLUDED / SKIPPED: data already in hand]
Step 3: data-cleaning-brief — Cleaning checklist and editorial sign-off items
        [INCLUDED / SKIPPED: data confirmed clean]
Step 4: basic-statistics-calculator — Key calculations with full working
        [INCLUDED]
Step 5: statistics-explainer — Plain-language rewrites for publication
        [INCLUDED]
Step 6: chart-description-writer — Captions and alt-text for visualizations
        [INCLUDED]
Step 7: methodology-explainer — Published methodology statement
        [INCLUDED]

Gaps that may affect output quality:
- [any missing inputs flagged here]

Estimated output: A complete data journalism package containing
[list of deliverables]. Steps build sequentially — the story angles
inform the calculations, the calculations feed the explainers, and
all feed the methodology statement.

Approve this plan? (yes / adjust / skip steps)
```

### EXECUTION mode

After the user approves the plan, the agent:

1. Runs data-story-finder using the dataset description, sample rows, and research question. Presents 3-6 ranked story angles with the data points that support each one, confidence ratings, and reporting questions to pursue. The user picks the angle to investigate (or provides their own) before the agent continues. The chosen angle shapes every subsequent step.

2. If included, runs scraper-brief to produce a technical handoff document for collecting the data. Covers: fields to collect with example values, output schema with column names and data types, scope and update frequency, technical considerations (pagination, rate limiting, JS rendering), and legal/ethical notes (robots.txt, terms of service). The user can adjust scope or fields before proceeding.

3. If included, runs data-cleaning-brief using the dataset description and any known problems. Produces a numbered cleaning checklist in recommended sequence — structural changes first (deduplication, column splitting), then value standardisation (date formats, currency normalization, name matching). Separately lists decisions that require editorial sign-off, such as how to handle blank values or ambiguous entity names. The user reviews and confirms the editorial decisions before analysis begins.

4. Runs basic-statistics-calculator on the key data points identified in step 1. For each calculation: restates the inputs, shows the formula and full working, states the result, provides a plain-English sentence usable in the story, and flags any caveats (small sample sizes, base-rate effects, denominator changes). If the initial calculation tells an incomplete story, suggests a second calculation and explains why. The user can request additional calculations before proceeding.

5. Runs statistics-explainer to rewrite the statistical findings from step 4 for a general audience. Produces two to three rewrite options per finding — each factually equivalent to the original but using plain numbers and concrete comparisons instead of jargon. Flags the key misinterpretation risk for each statistic and suggests accuracy caveats where oversimplification is a genuine danger. The user picks the version that fits their publication's register.

6. Runs chart-description-writer for each visualization the story requires. For each chart: writes a headline-first caption (60-120 words) that leads with the finding, not with "this chart shows"; and if requested, writes a separate alt-text description (60-100 words) meeting accessibility standards. The user specifies chart types or the agent recommends them based on the data (line charts for trends, bar charts for comparisons, scatter plots for correlations).

7. Runs methodology-explainer using all prior steps as input. Produces a methodology statement (300-500 words) structured under four headings: Data Sources, How We Analysed It, What We Found, and Caveats and Limitations. Written for two audiences simultaneously — the general reader who wants confidence the journalism is solid, and the specialist reader who needs enough detail to reproduce or challenge the work.

The agent assembles all outputs into a single investigation package. The user can interrupt between any two steps to adjust direction, change the story angle, or skip a remaining step.

## Output format
A single assembled document titled **DATA INVESTIGATION: [Research Question or Topic]**, containing:

1. **Investigation summary** (80-120 words) — what the package contains, which steps were run, which were skipped and why, and any flags for the editor's attention
2. **Story angles** — the ranked angles with data support and confidence ratings (from step 1), with the chosen angle marked
3. **Data collection brief** — if run: the technical scraper brief for handoff to a developer (from step 2)
4. **Data cleaning brief** — if run: the cleaning checklist with editorial sign-off decisions noted (from step 3)
5. **Statistical analysis** — calculations with full working, results, plain-English sentences, and caveats (from step 4)
6. **Reader-ready explanations** — plain-language rewrites of each statistical finding, with the chosen version marked (from step 5)
7. **Chart descriptions** — captions and alt-text for each visualization (from step 6)
8. **Methodology statement** — the published methodology ready to run alongside the story (from step 7)
9. **Editor's checklist** — a closing note with action items before publication: verify all calculations against primary data, confirm cleaning decisions with the data team, fact-check quoted figures against source documents, have a second journalist review the methodology statement, confirm chart designs match the described data, check that plain-language rewrites are factually equivalent to the statistical originals

Total length: 2,500-6,000 words depending on how many steps were included and how many calculations were performed. Tone is precise and editorial — written for a journalist building a publishable story, not for a general reader.

## Quality criteria
- [ ] Each skill output meets its own quality standard independently
- [ ] The assembled package reads as a coherent investigation workflow, not a stack of separate outputs
- [ ] The chosen story angle from step 1 shapes the calculations in step 4 — the numbers answer the specific question the angle poses
- [ ] Statistical working is complete enough for a second journalist to verify every figure
- [ ] Plain-language rewrites are factually equivalent to the statistical originals — no inflating or deflating findings
- [ ] Chart descriptions lead with the finding, not with "this chart shows..."
- [ ] The methodology statement is honest about limitations — no generic disclaimers
- [ ] Cleaning decisions that require editorial judgement are flagged, not silently decided
- [ ] Caveats name specific risks, not vague warnings about "data quality"
- [ ] Steps were correctly included or skipped based on the conditions in the skills table
- [ ] The agent stayed within its declared skills array — no undeclared skill invocations
- [ ] Output is free of generic AI-template phrasing — no "this analysis reveals," "the data paints a picture," "it is worth noting"

## Example

### Brief (user input)
I have a dataset of all building permits issued by a metropolitan planning authority over the past five years (2020-2025). The data was obtained through a freedom of information request and is already in my possession as a CSV file.

**Dataset:** 34,000 rows. Columns: permit_id, application_date, decision_date, applicant_name, project_type (residential, commercial, industrial, mixed-use), suburb, estimated_cost, decision (approved, rejected, withdrawn), processing_days, council_district.

**Known data problems:** The `applicant_name` field has inconsistent capitalisation and abbreviations ("WESTMARK DEVELOPMENTS", "Westmark Developments Pty Ltd", "Westmark Dev"). The `estimated_cost` field mixes formats ("$2,400,000", "2400000", "$2.4M"). About 600 rows have blank `processing_days` values.

**Research question:** Are building permits being processed equally across council districts, or are some districts experiencing significantly longer delays?

**Publication:** Metropolitan daily newspaper, general news section.
**Charts planned:** Bar chart comparing median processing days by district; line chart showing processing times over the five-year period.

### Plan (PLANNING mode output)

```
INVESTIGATION PLAN for "Are building permits processed equally across districts?"

Dataset: Metropolitan planning authority building permits, 34,000 rows, 2020-2025
Status: In hand · Needs cleaning (name standardisation, cost formats, blank fields)
Research question: Are processing times equal across council districts, or are
                   some districts experiencing significantly longer delays?
Publication: Metropolitan daily newspaper, general news section

Step 1: data-story-finder — Identify 3-6 story angles from the permits data
        [INCLUDED]
Step 2: scraper-brief — SKIPPED: data already in hand (CSV from FOI request)
Step 3: data-cleaning-brief — Cleaning checklist for name, cost, and blank-field issues
        [INCLUDED]
Step 4: basic-statistics-calculator — District comparison calculations with full working
        [INCLUDED]
Step 5: statistics-explainer — Plain-language rewrites for general news readers
        [INCLUDED]
Step 6: chart-description-writer — Captions and alt-text for two charts
        (bar chart: district comparison; line chart: five-year trend)
        [INCLUDED]
Step 7: methodology-explainer — Published methodology statement
        [INCLUDED]

Gaps that may affect output quality:
- No sample rows provided — story angle identification and cleaning
  instructions will rely on column descriptions. Provide 5-10 rows
  if available to improve precision.

Estimated output: A six-section investigation package (story angles,
cleaning brief, statistical analysis, reader explanations, chart
descriptions, methodology statement). Scraper brief skipped.

Approve this plan? (yes / adjust / skip steps)
```

### Deliverable (EXECUTION mode output)

---

**DATA INVESTIGATION: ARE BUILDING PERMITS PROCESSED EQUALLY ACROSS COUNCIL DISTRICTS?**

---

**Investigation Summary**

This package covers an analysis of 34,000 building permits issued by the metropolitan planning authority from 2020 to 2025. Six of seven steps were run — the scraper brief was skipped because the data was already obtained via FOI. The package includes: story angles, a data cleaning brief, statistical analysis of processing times by district, plain-language explanations, chart descriptions for two visualizations, and a methodology statement. One flag: 600 rows with blank processing times (1.8% of the dataset) need an editorial decision before analysis — the cleaning brief covers this.

---

**1. Story Angles**

**Dataset Overview**

This dataset covers five years of building permit decisions across the full metropolitan area, broken down by project type, suburb, and council district. It is strong enough to support geographic disparity stories, trend stories, and applicant concentration analyses. Key limitation: the data records processing duration and outcomes but not the reason for delays — it cannot distinguish between administrative backlogs and genuinely complex applications without additional reporting.

---

**Angle 1: The district disparity in processing times (STRONG)** [CHOSEN]
If processing times vary significantly between council districts for the same types of projects, there is a service inequality story with direct impact on residents and developers. The research question maps directly to this angle.
- Data support: Requires district-level comparison of median processing days, controlling for project type
- Reporting next: Are the slowest districts also the ones with the highest application volumes, or is volume not the explanation?

**Angle 2: The five-year trend — are permits getting slower? (STRONG)**
If processing times have increased across the board since 2020, this is a systemic performance story. If the increase is concentrated in specific years (e.g. post-pandemic), it is a recovery story.
- Data support: Compare annual median processing days across the full dataset
- Reporting next: Did staffing or budget changes coincide with any inflection points?

**Angle 3: Approval rate disparities by district (TENTATIVE)**
If some districts reject a significantly higher proportion of applications than others, this raises questions about consistency in planning decisions. However, rejection rates alone do not prove unfairness — some districts may receive more non-compliant applications.
- Data support: Calculate approval, rejection, and withdrawal rates per district
- Reporting next: Are rejection rates correlated with project type mix, or do they persist after controlling for that?

**Angle 4: Who is building? Applicant concentration (TENTATIVE — requires clean names)**
If a small number of developers account for a disproportionate share of permits by value, this is a market concentration story. But this angle depends heavily on clean applicant names — the current data has significant deduplication issues.
- Data support: Rank applicants by total estimated_cost and count of permits after name cleaning
- Reporting next: Is concentration increasing or stable over the five-year period?

**Angle 5: The withdrawn applications story (TENTATIVE — needs context)**
Withdrawn applications are often overlooked. If withdrawal rates are high in certain districts or for certain project types, this may indicate regulatory friction that discourages applicants before a decision is reached.
- Data support: Calculate withdrawal rates by district and project type
- Reporting next: Why are applicants withdrawing? This requires interviews — the data alone cannot answer it.

---

**2. Data Cleaning Brief**

**Cleaning Checklist**

Complete steps in this order. Do not change column names unless specified.

1. **Remove duplicate rows** (`permit_id` column)
   Problem: Check for duplicate `permit_id` values. If any exist, they are likely import errors.
   Action: Deduplicate keeping one row per unique `permit_id`. If a `permit_id` appears more than once with different values in other columns, flag for manual review.

2. **Standardise `estimated_cost` to numeric** (`estimated_cost` column)
   Problem: Three formats in use: "$2,400,000", "2400000", "$2.4M".
   Action: Strip dollar signs and commas. Convert "M" suffix notation to full number ($2.4M becomes 2400000). Store as integer. Do not add decimal places.

3. **Standardise `applicant_name` for grouping** (`applicant_name` column)
   Problem: Same company appears in multiple forms — "WESTMARK DEVELOPMENTS", "Westmark Developments Pty Ltd", "Westmark Dev".
   Action: Convert all values to title case as a first pass. Then run a near-match check (Levenshtein distance of 2 or fewer) and produce a review list of probable duplicates for manual confirmation. Do not automatically merge names — present the list for journalist sign-off.

4. **Handle blank `processing_days` rows**
   Problem: 600 rows (1.8%) have no value for `processing_days`.
   Action: Do not impute or estimate. Leave as null. Exclude these rows from any calculations involving processing time. Document the count and percentage in the methodology note. Retain the rows in the dataset — they remain valid for non-time analyses (e.g. approval rates, applicant concentration).

5. **Verify `decision_date` minus `application_date` equals `processing_days`**
   Problem: Spot-check whether `processing_days` is calculated correctly from the two date fields.
   Action: Compute the difference between `decision_date` and `application_date` for a sample of 100 rows and compare to the stated `processing_days`. If discrepancies exceed 5%, recalculate `processing_days` from the date fields for the full dataset and use the recalculated values.

6. **Do not change** the following columns: `permit_id`, `application_date`, `decision_date`, `project_type`, `suburb`, `decision`, `council_district`. These appear to be structured fields with consistent values. Verify by checking unique value counts before analysis.

---

**Decisions Requiring Editorial Sign-Off**

- **Blank processing days:** The brief recommends excluding 600 rows from time-based calculations but keeping them in the dataset for other analyses. If the blank rows are concentrated in specific districts, this exclusion could skew the district comparison. Check the distribution before confirming.
- **Applicant name merging:** Step 3 produces a candidate list of name variants. A journalist familiar with the local development industry should confirm merges — errors could misattribute permits between companies.

---

**3. Statistical Analysis**

**Calculation 1: Median Processing Days by Council District**

**Inputs**
- Processing days for all permits with non-null values, grouped by `council_district`
- 12 council districts in the dataset
- Research question: Do processing times differ significantly between districts?

**Calculation**
Sort processing_days values within each district. Find the middle value (median). For the purpose of this example, the agent works with the summary statistics the journalist extracts from the cleaned data. Illustrative results based on the dataset structure:

| District | Median processing days | Total permits |
|----------|----------------------|---------------|
| Northgate | 62 | 3,200 |
| Riverside | 58 | 4,100 |
| Harborview | 44 | 2,800 |
| Eastfield | 41 | 2,600 |
| Southbank | 39 | 3,400 |
| Westpark | 38 | 2,900 |
| Central | 36 | 3,100 |
| Hillcrest | 35 | 2,700 |
| Lakeside | 34 | 2,500 |
| Greendale | 33 | 2,300 |
| Oldtown | 31 | 1,900 |
| Bayside | 28 | 1,900 |

**Result:** Median processing days range from 28 (Bayside) to 62 (Northgate) — a ratio of 2.2 to 1.

**In Plain English:** A building permit in Northgate takes twice as long to process as one in Bayside — 62 days versus 28. The four slowest districts all sit above 40 days; the eight remaining districts cluster between 28 and 38.

**Caveats**
- Median is the right measure here — averages would be pulled upward by a small number of permits that took hundreds of days. But the median alone does not show how bad it gets for the worst cases. The 90th-percentile figure would reveal that.
- Volume differs by district. Northgate processed 3,200 permits; Bayside processed 1,900. Higher volume could partly explain slower processing — but Riverside processed the most permits (4,100) and is second-slowest, so volume is not the full explanation.

---

**Calculation 2: Percentage Difference Between Slowest and Fastest Districts**

**Inputs**
- Northgate median: 62 days
- Bayside median: 28 days

**Calculation**
Formula: ((Higher Value - Lower Value) / Lower Value) x 100
((62 - 28) / 28) x 100
= (34 / 28) x 100
= 121.4%

**Result:** Northgate's median processing time is 121% longer than Bayside's.

**In Plain English:** Permits in Northgate take more than twice as long as those in Bayside — a gap of 34 days on median.

**Caveats**
- This comparison does not control for project type. If Northgate handles a higher proportion of complex commercial applications, some of the gap may be explained by project mix rather than administrative performance. The next calculation should break down processing times by project type within each district to test this.

---

**Calculation 3: Year-on-Year Change in Median Processing Days (All Districts Combined)**

**Inputs**
- Overall median processing days per year: 2020 (32 days), 2021 (34 days), 2022 (38 days), 2023 (42 days), 2024 (44 days), 2025 (46 days, partial year through June)

**Calculation**
Formula: ((New - Old) / Old) x 100
2020 to 2024 (full years): ((44 - 32) / 32) x 100 = 37.5%

**Result:** Median processing times across all districts increased 37.5% over four years, from 32 days in 2020 to 44 days in 2024.

**In Plain English:** Building permits now take more than a third longer to process than they did in 2020 — a rise from 32 days to 44 days at the median, with no sign of the trend reversing.

**Caveats**
- The 2025 figure (46 days) covers only a partial year. Do not include it in year-over-year comparisons. If the second half of 2025 is faster, the annual figure may settle lower.
- The increase has been steady, not sudden — roughly 3 days per year. This suggests a structural cause (staffing, complexity of applications, regulatory changes) rather than a single disruption.

---

**4. Reader-Ready Explanations**

**Finding 1: The district gap**

Option A: "A building permit in the city's slowest district takes more than twice as long to process as one in the fastest — 62 days versus 28. That is the difference between a two-month wait and a four-week turnaround for the same type of application."

Option B: "Depending on which district you build in, you could wait 28 days for a permit or 62. The gap has widened over five years, and the four slowest districts now all exceed 40 days."

Option C (most conservative): "Median permit processing times range from 28 days in Bayside to 62 days in Northgate. The disparity raises questions about whether planning resources are distributed evenly across the metropolitan area."

Key misinterpretation risk: Readers may assume a 62-day median means "everyone waits 62 days." It means half wait longer, half wait less. The worst cases in Northgate are likely well over 100 days. If the story quotes the median, include a line explaining what a median is.

---

**Finding 2: The five-year trend**

Option A: "Building permits now take more than a third longer to process than they did in 2020. The median wait has climbed from 32 days to 44 — an increase of roughly three working days every year, with no sign of reversal."

Option B: "Five years ago, a typical building permit took about a month. Now it takes six weeks. The increase has been steady and affects every district in the metropolitan area."

Key misinterpretation risk: "A third longer" sounds moderate. In absolute terms, 12 extra days is meaningful for anyone holding a construction loan. Consider including the dollar cost of delay if the data supports it.

---

**5. Chart Descriptions**

**Chart 1: Bar chart — Median processing days by council district**

**Caption:**
Northgate and Riverside stand out as the two slowest districts for building permit processing, with median wait times of 62 and 58 days. Bayside is the fastest at 28 days — less than half the time. The remaining ten districts fall between 31 and 44 days. Source: Metropolitan Planning Authority permit data, 2020-2025, obtained via FOI.

**Alt-text:**
Horizontal bar chart showing median building permit processing days for 12 council districts. Bars are ordered from longest to shortest. Northgate leads at 62 days, followed by Riverside at 58. Harborview and Eastfield are in the 40s. The remaining eight districts range from 28 to 39 days. Bayside has the shortest median at 28 days. Source: Metropolitan Planning Authority, 2020-2025.

---

**Chart 2: Line chart — Median processing days over five years (all districts combined)**

**Caption:**
Permit processing times have climbed every year since 2020, rising from a median of 32 days to 44 days in 2024 — a 37.5% increase. The trend is steady rather than sudden, adding roughly three days to the median each year. Partial 2025 data (through June) shows no reversal. Source: Metropolitan Planning Authority permit data, obtained via FOI.

**Alt-text:**
Line chart showing the overall median building permit processing time from 2020 to 2024, with a partial 2025 data point. The line starts at 32 days in 2020 and rises steadily to 44 days in 2024. The 2025 partial-year figure is 46 days. The trend is a consistent upward slope with no year-on-year decline. Source: Metropolitan Planning Authority, 2020-2025.

---

**6. Methodology Statement**

**Data Sources**

This analysis is based on building permit records obtained via a freedom of information request to the metropolitan planning authority. The dataset contains 34,000 permits covering the period January 2020 to June 2025 across all 12 council districts. Each record includes the application date, decision date, processing duration, project type, estimated cost, applicant name, suburb, and outcome (approved, rejected, or withdrawn). The data was received in July 2025.

**How We Analysed It**

For each council district, we calculated the median processing time — the middle value when all permits are ranked from fastest to slowest. We used the median rather than the average because a small number of permits with extreme processing times (200+ days) would distort the average upward. We compared district medians for the full five-year period and tracked annual medians to identify trends.

Before analysis, we cleaned the data: removed duplicate records, standardised date and cost formats, and excluded 600 rows (1.8%) with blank processing time values. Applicant names were standardised to title case and near-match duplicates were reviewed manually to avoid miscounting.

**What We Found**

Permit processing times vary by a factor of more than two between the fastest and slowest council districts. Northgate has a median processing time of 62 days; Bayside has 28 days. Across all districts, median processing times have increased 37.5% since 2020 — from 32 days to 44 days — with no year showing a decline.

**Caveats and Limitations**

Processing time measures the gap between application and decision. It does not measure why a permit was slow — delays could stem from administrative backlogs, incomplete applications, or the genuine complexity of the proposed project. This analysis cannot distinguish between those causes without additional reporting.

Approximately 1.8% of records had blank processing time values and were excluded from time-based calculations. These rows were not concentrated in any single district.

The analysis does not control for project type. If some districts handle a higher proportion of complex commercial applications, part of the processing time difference may be explained by project mix rather than administrative performance. A project-type-controlled comparison is recommended as a follow-up.

---

**Editor's Checklist**

1. **Verify calculations against primary data.** The statistical analysis uses illustrative figures based on the dataset structure. Run the actual calculations on the cleaned CSV and confirm the results match before publication.
2. **Confirm cleaning decisions.** Review the data cleaning brief with the data team. Confirm: blank processing_days exclusion does not skew district comparisons; applicant name merges are correct; cost standardisation is accurate.
3. **Fact-check quoted figures.** Every figure in the plain-language explanations must match the statistical working. Have a second journalist trace each number from the source data through the calculation to the published sentence.
4. **Review the methodology statement.** Have a second journalist read the methodology for completeness and honesty. Does it disclose every significant analytical decision? Does it name the limitations a critical reader would ask about?
5. **Confirm chart designs match data.** The chart descriptions were written from the analysis outputs. Once charts are designed, verify that the visual matches the numbers — check axis scales, district ordering, and that the 2025 partial-year point is marked as partial.
6. **Check plain-language rewrites for factual equivalence.** The reader-ready explanations must say the same thing as the statistical originals, not more or less. Watch for rounding that shifts meaning (e.g. "roughly a third" for 37.5% is acceptable; "about half" would not be).
7. **Contact the planning authority for response.** Before publication, put the key findings to the metropolitan planning authority and allow reasonable time for a response. This is standard practice for accountability journalism.
8. **Legal review.** If the story names specific districts as underperforming, confirm the data supports those claims. Processing time differences may have legitimate explanations; the story should acknowledge this.

## Known limitations
- The agent builds each step from the dataset description and sample rows the user provides — it cannot open, read, or query the actual data file. If the user's description is incomplete or inaccurate, the analysis plan and calculations will reflect those gaps. The more detail the user provides (column headers, sample rows, known problems), the more precise every step will be.
- Statistical calculations are performed on the numbers provided in the brief or on illustrative figures derived from the dataset structure. They are not run against the actual dataset. The journalist must run the final calculations on the real data using appropriate tools (Excel, R, Python) and verify the results match before publishing.
- The agent sequences steps and each skill receives context from prior outputs. However, if the user changes the story angle after step 1, the subsequent steps are not retroactively updated. The user must re-run affected steps or flag the change before the agent proceeds.
- Chart descriptions are written from descriptions of charts, not from the charts themselves. If the final chart design differs from what was described (different axis ranges, different groupings, different color encoding), the captions must be updated to match the actual visual.
- The methodology statement is as honest as the inputs. If the user does not disclose an analytical shortcut or a data limitation, the methodology will not mention it. The journalist is responsible for the completeness of the disclosure.

## Related agents and skills
- [investigative-reporter-agent](../agents/investigative-reporter-agent.md) — agent for investigative reporting workflows, different skill set and deliverable structure
- [magazine-editor-agent](../agents/magazine-editor-agent.md) — agent for editorial packages on written articles
- [data-story-finder](../skills/data-journalism/analysis/data-story-finder/SKILL.md) — standalone skill for identifying story angles in a dataset
- [scraper-brief](../skills/data-journalism/investigation/scraper-brief/SKILL.md) — standalone skill for planning data collection from web sources
- [data-cleaning-brief](../skills/data-journalism/investigation/data-cleaning-brief/SKILL.md) — standalone skill for writing data cleaning instructions
- [basic-statistics-calculator](../skills/data-journalism/analysis/basic-statistics-calculator/SKILL.md) — standalone skill for performing and explaining calculations
- [statistics-explainer](../skills/data-journalism/analysis/statistics-explainer/SKILL.md) — standalone skill for rewriting statistics in plain language
- [chart-description-writer](../skills/data-journalism/visualization/chart-description-writer/SKILL.md) — standalone skill for writing chart captions and alt-text
- [methodology-explainer](../skills/data-journalism/publishing/methodology-explainer/SKILL.md) — standalone skill for writing published methodology statements

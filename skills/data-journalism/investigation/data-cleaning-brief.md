---
name: data-cleaning-brief
status: stable
category: data-journalism
subcategory: investigation
version: 1.0
eval_score: 4.4
tags: [data cleaning, data preparation, analysis prep, investigation]
---

# Data Cleaning Brief

## What This Skill Does
Writes clear, step-by-step instructions for cleaning a messy or inconsistent dataset — specifying exactly what needs to be standardised, corrected, or removed to make the data ready for analysis and publication.

## When To Use This Skill
- You have received a dataset that is clearly messy (inconsistent formats, duplicates, blank fields, mixed naming conventions) and need to brief a data analyst or developer on how to clean it
- You want to document your cleaning decisions for editorial transparency and methodological reproducibility
- You are cleaning data yourself and want a structured checklist to work through
- You are handing off a partially cleaned dataset and need to document what has been done and what remains

## What You Need To Provide
**Required:** A description of the dataset and the problems you can see in it — specific examples of inconsistent values, formatting problems, missing data, or structural issues. Column names and a small sample of the messy rows.
**Optional:** The intended analysis goal (what you will do with the data once it is clean); any cleaning decisions that have already been made; the tool the analyst will use (Excel, Python, R, SQL); the deadline.

## How Claude Approaches This
1. Identifies each cleaning problem from the description and categorises it: standardisation (format, spelling, case), deduplication, missing value handling, type conversion, or structural issues.
2. Writes a numbered, sequenced instruction set — earlier steps that change data shape (deduplication, column splitting) before later steps that change values (standardisation, type conversion).
3. Flags any cleaning decisions that involve editorial judgement — e.g. how to handle ambiguous missing values, or whether to exclude records rather than impute them — and notes that these decisions need journalist sign-off.

## Output Format
A structured brief (300–500 words) with two sections: (1) Cleaning checklist — numbered steps in recommended order, each naming the column affected, describing the problem, and specifying the action to take. (2) Decisions requiring editorial sign-off — a separate list of any steps where reasonable people could disagree on the right approach, with the options and recommended default. Plain language throughout; minimal technical jargon, but tool-specific syntax can be included in parentheses where helpful.

## Quality Criteria
- [ ] Every column with a known problem is addressed specifically by name
- [ ] Steps are in a logical sequence — structural changes before value standardisation
- [ ] Editorial judgement calls are separated from mechanical cleaning steps
- [ ] The brief specifies what the cleaned output should look like, not just what is wrong with the current data
- [ ] At least one "do not change" instruction is included if there are fields that should be left as-is

## Example

### Input
Dataset: Procurement contracts database, 48,000 rows, obtained via FOI.
Problems I can see in the data:
- The `contractor_name` field has inconsistent capitalisation: "BRIDGEPOINT CONSTRUCTION", "Bridgepoint Construction", "bridgepoint construction ltd" all appear to be the same company
- The `contract_value` field mixes formats: some entries are "€4,200,000", others are "4200000", others are "4.2M"
- The `award_date` field has multiple date formats: "15/03/2024", "2024-03-15", "March 15 2024"
- There are approximately 340 rows where `contract_value` is blank
- There are 87 apparent duplicate rows (same contract_id, same authority, same contractor, same date — likely import errors)
- The `contract_category` field uses two different classification systems mixed together: some rows use a national category code, others use an EU CPV code
Goal: Analysis of corporate concentration — which companies are winning the most by value.

### Output
**Cleaning Checklist**

Complete steps in this order. Do not change column names unless specified.

1. **Remove duplicate rows** (`contract_id` column)
   Problem: 87 rows share identical values in `contract_id`, `awarding_authority`, `contractor_name`, and `award_date`.
   Action: Deduplicate keeping one row per unique `contract_id`. Where `contract_id` is the same but any other field differs, flag for manual review rather than automatically deleting.
   Expected result: Row count reduces from ~48,000 to approximately 47,913.

2. **Standardise `award_date` to ISO 8601** (`award_date` column)
   Problem: Three date formats in use: DD/MM/YYYY, YYYY-MM-DD, "Month DD YYYY".
   Action: Convert all values to YYYY-MM-DD. Assume DD/MM/YYYY for ambiguous dates (e.g. "01/03/2024" = 1 March, not 3 January). Flag any dates where day/month are both ≤ 12 and format is ambiguous.

3. **Standardise `contract_value` to numeric** (`contract_value` column)
   Problem: Values in three formats: "€4,200,000", "4200000", "4.2M".
   Action: Strip currency symbols and commas. Convert "M" suffix notation to full number (4.2M → 4200000). Store as integer. Do not add decimal places.

4. **Handle blank `contract_value` rows**
   Problem: 340 rows have no contract value.
   Action: Do not impute or estimate. Leave as null/blank. Document the count (340 rows) and percentage (~0.7%) in the methodology note. Do not exclude these rows from the dataset — they may still be useful for non-value analyses.

5. **Standardise `contractor_name` for grouping** (`contractor_name` column)
   Problem: Same company appears in multiple capitalisation variants.
   Action: Convert all values to title case as a first pass (e.g. "BRIDGEPOINT CONSTRUCTION" → "Bridgepoint Construction"). Then run a deduplication check for near-matches (Levenshtein distance ≤ 2) and produce a review list of probable duplicates for manual confirmation. Do not automatically merge names — present the list for journalist sign-off.

6. **Flag `contract_category` classification system** (`contract_category` column)
   Problem: National category codes and EU CPV codes are mixed in a single column with no flag indicating which system applies.
   Action: Do not clean or merge these yet. Add a new column `category_system` with values "national" or "cpv" based on the pattern of the code (CPV codes follow a numeric XXXXXXXX format; national codes may differ). Preserve the original column unchanged.
   Note: Analysis using this column will need to treat the two systems separately unless a mapping table is available.

---

**Decisions Requiring Editorial Sign-Off**

- **Blank contract values:** The brief above recommends leaving 340 blank-value rows in the dataset. If the analysis specifically requires complete value data, these rows should be excluded — but exclusion should be documented and disclosed in the methodology. Check with the editor before excluding.
- **Contractor name deduplication:** Step 5 produces a candidate list of name variants that may refer to the same company. A journalist familiar with the subject area should confirm merges, particularly for large contractors — errors here could misstate a company's total contract value.
- **Mixed classification systems:** Step 6 flags the problem but does not resolve it. A decision on whether to map one system to the other (which requires a reference table) or analyse each separately is needed before the corporate concentration analysis can proceed.

## Known Limitations
- This skill writes the cleaning instructions from a description of the problems — it cannot inspect the data directly. If additional problems exist that were not described in the input, the brief will not cover them. Run a basic data audit (row count, unique values per column, null counts) before treating the brief as complete.
- Name deduplication for corporate entities is a known hard problem. The brief recommends a near-match approach as a starting point, but complex corporate structures (subsidiaries, holding companies, name changes) may require company registration number matching or manual research beyond what a cleaning script can handle.
- This brief does not specify syntax for any particular tool. If a specific tool (Python/pandas, R/dplyr, Excel) is being used, a developer can translate each step — but tool-specific syntax should be confirmed by someone with experience in that environment.

## Related Skills
- [dataset-summary-brief](../analysis/dataset-summary-brief.md)
- [scraper-brief](./scraper-brief.md)
- [data-story-finder](../analysis/data-story-finder.md)

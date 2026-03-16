---
name: data-table-formatter
status: stable
category: data-journalism
subcategory: visualization
version: 1.0
eval_score: 4.3
tags: [tables, data formatting, publication, copy editing]
---

# Data Table Formatter

## What This Skill Does
Formats raw or messy data into a clean, publication-ready table with appropriate headers, sorted rows, consistent number formatting, and a source note — ready to drop into an article, report, or web page.

## When To Use This Skill
- You have raw data that needs to appear as a formatted table in a published article or report
- Exported data has inconsistent number formats, missing headers, or unclear column labels
- You need a table to accompany a data story that is clear enough for a general reader
- You are producing a table for a print or digital publication and need consistent styling guidance alongside the formatted content

## What You Need To Provide
**Required:** The raw data (pasted as text, CSV, or a description of the rows and columns). The intended purpose (news article, annual report, magazine feature, etc.). The data source for the footnote.
**Optional:** Whether the table should be sorted and by which column; any columns to exclude from the published version; preferred number format (e.g. round to nearest whole number, use commas for thousands); a specific headline or title for the table.

## How Claude Approaches This
1. Reviews the raw data for formatting inconsistencies, ambiguous column labels, and numbers that need standardising (units, decimal places, thousands separators).
2. Rewrites column headers in plain, publication-appropriate language and applies consistent number formatting throughout.
3. Produces the final table in clean Markdown format with a title, formatted headers, sorted rows (if specified), and a source note beneath.

## Output Format
A Markdown table with a bold title above it and a source note in italics below. Column headers are capitalised consistently. Numbers use the specified format (or a sensible default: two decimal places for percentages, whole numbers for large counts, commas for thousands). Rows sorted by the most newsworthy column unless otherwise specified. One to two formatting notes below the source line if any decisions required editorial judgement (e.g. "Figures rounded to the nearest whole number").

## Quality Criteria
- [ ] All column headers are in plain language — no database-style abbreviations or ALL_CAPS
- [ ] Number formatting is consistent within each column
- [ ] The table has a title that states what it shows (not just "Table 1")
- [ ] A source note is included beneath the table
- [ ] Sorting order is intentional and makes the story clear (e.g. ranked by value, not by alphabetical order of a name column)

## Example

### Input
Raw data (pasted from spreadsheet export):
```
AUTHORITY_NM,REG,WAIT_MED,WAIT_90PCT,TOT_WAITING,BREACH_18WK,YOY_CHG
North Coastal,North,68,142,12400,3100,22
Central Metro,Central,31,74,18900,1800,-4
Eastern Plains,East,55,118,6200,1400,9
Westbridge,West,44,97,9300,2200,6
Southern Coastal,South,37,83,14600,2900,-1
Midlands North,Central,49,111,7800,1600,12
```
Purpose: News article table, orthopaedics waiting times
Source: National Health Statistics Agency, Q3 2026
Sort by: Median wait (highest first)
Title suggestion: How long are patients waiting for orthopaedic treatment?

### Output
**How long are patients waiting for orthopaedic treatment?**

| Health Authority | Region | Median wait (days) | 90th-percentile wait (days) | Total waiting | Breaching 18-week target | Year-on-year change |
|-----------------|--------|-------------------|----------------------------|---------------|--------------------------|---------------------|
| North Coastal | North | 68 | 142 | 12,400 | 3,100 | +22% |
| Eastern Plains | East | 55 | 118 | 6,200 | 1,400 | +9% |
| Midlands North | Central | 49 | 111 | 7,800 | 1,600 | +12% |
| Westbridge | West | 44 | 97 | 9,300 | 2,200 | +6% |
| Southern Coastal | South | 37 | 83 | 14,600 | 2,900 | -1% |
| Central Metro | Central | 31 | 74 | 18,900 | 1,800 | -4% |

*Source: National Health Statistics Agency, Q3 2026.*

*Formatting notes: Year-on-year change expressed as percentage. Rows sorted by median wait time, highest to lowest. All figures as published; no rounding applied.*

## Known Limitations
- This skill produces Markdown table formatting. If the publication uses a CMS or layout software that does not accept Markdown tables, the formatted output will need to be manually transposed. The structure and all formatting decisions remain valid regardless of the final output format.
- Very wide tables (more than eight to ten columns) do not render well in most digital publishing environments. For wide datasets, the skill will produce the table as specified but may note that splitting into two tables would improve readability.
- This skill formats data but does not verify it. If the raw data contains errors, the formatted table will contain the same errors. Always verify figures against the original source before publication.

## Related Skills
- [chart-description-writer](./chart-description-writer.md)
- [infographic-brief](./infographic-brief.md)
- [data-cleaning-brief](../investigation/data-cleaning-brief.md)

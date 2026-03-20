---
name: pdf-table-extractor-brief
status: stable
category: data-journalism
subcategory: investigation
version: 1.0
eval_score: 4.33
tags: [data-journalism, PDF, tables, data-extraction, investigation, spreadsheet, public-records]
---

# PDF Table Extractor Brief

## What This Skill Does
Produces a structured extraction plan and clean spreadsheet template for pulling tabular data out of a PDF document — identifying the table structure, defining column headers, flagging extraction pitfalls, and providing a ready-to-use template that ensures the data lands in a consistent, analysable format.

## When To Use This Skill
- You have received a government report, budget document, or public record as a PDF and need the tables in spreadsheet format for analysis
- You are dealing with a PDF where automated extraction tools (Tabula, Camelot, Adobe Export) produce messy or incomplete results and you need a manual or semi-automated extraction plan
- You have multiple PDFs with similar table structures and need a standardized template to ensure consistency across extractions
- You are assigning the extraction task to a research assistant or intern and need clear instructions that prevent common errors

## What You Need To Provide
**Required:** A description of the PDF and its table structure — the document title, what the table contains, how many columns and rows (approximate is fine), and what the data represents. If possible, paste or describe the first few rows of the table so Claude can see the structure. Alternatively, provide the actual PDF content if you have extracted the raw text.

**Optional:** The extraction tool you plan to use (Tabula, Camelot, manual copy-paste, Adobe Export, or "not sure — recommend one"); any known problems with the PDF (merged cells, multi-line row entries, footnotes embedded in the table, inconsistent formatting across pages); the analysis you plan to run on the extracted data (this helps Claude optimize the template for your downstream use case).

## How Claude Approaches This

1. **Analyzes the table structure.** From the description or pasted content, identifies: number of columns, data types per column (text, integers, currency, percentages, dates), header rows vs. data rows, whether the table spans multiple pages, and whether any cells are merged or contain multi-line entries. This structural map is the foundation of the extraction plan.

2. **Defines clean column headers.** Creates standardized, machine-readable column headers for the spreadsheet template — converting the PDF's often-verbose or ambiguous headers into clear, consistent labels. Specifies the expected data type and format for each column (e.g., "Budget_Amount: numeric, no currency symbols, no commas, two decimal places").

3. **Flags extraction pitfalls.** Identifies the specific problems most likely to occur with this table: merged cells that will break row alignment, footnote markers that will pollute numeric fields, subtotal rows that should be excluded from analysis, header rows that repeat on each page, inconsistent date formats, or columns that contain mixed data types.

4. **Writes the extraction instructions.** Provides step-by-step instructions for the chosen extraction method — or recommends the best tool for this specific table type. Instructions are written for a non-technical user: which tool to use, what settings to select, what to check after the first pass, and how to handle the flagged pitfalls.

5. **Provides the spreadsheet template.** Delivers a ready-to-use template with column headers, data type specifications, and a notes column for flagging uncertain values. Includes one example row filled in from the provided data so the user can see exactly what a correctly extracted row looks like.

## Output Format

A structured extraction brief of 300-500 words. Opens with a "Table Overview" summarizing the structure. Then "Column Definitions" (a table of headers with data types). Then "Extraction Pitfalls" (numbered list of specific risks). Then "Step-by-Step Instructions" (for the chosen or recommended tool). Closes with "Template" (the spreadsheet template in markdown table format with one example row). Tone is instructional and precise — written for a journalist or research assistant, not a data engineer.

```
**Table Overview**
[Structure summary: rows, columns, data types, spanning behavior]

**Column Definitions**
| Column Header | Source Label | Data Type | Format Notes |
|---|---|---|---|
| [clean_header] | [original PDF label] | [type] | [formatting rules] |

**Extraction Pitfalls**
1. [Specific risk and how to handle it]
2. [Specific risk]

**Recommended Tool & Instructions**
[Step-by-step extraction process]

**Template**
| [Header 1] | [Header 2] | [Header 3] | Notes |
|---|---|---|---|
| [example data] | [example data] | [example data] | [example note] |
```

## Quality Criteria
- [ ] Column definitions include both the original PDF label and the clean standardized header — the user can map between the two without guessing
- [ ] Data type and format specifications are precise enough to prevent common errors (e.g., "numeric, no dollar signs" not just "number")
- [ ] Extraction pitfalls are specific to this table — not generic PDF extraction warnings
- [ ] Instructions are written for the stated skill level — a journalist or research assistant, not a data engineer
- [ ] The template includes at least one correctly filled example row
- [ ] The brief accounts for multi-page tables if applicable — how to handle repeating headers, page breaks, and pagination artifacts
- [ ] A notes column is included in the template for flagging uncertain or ambiguous values during extraction

## Example

### Input
**Document:** Annual municipal budget summary for fiscal year 2025, published by a mid-sized city's finance department. 48-page PDF.

**Table to extract:** "Department Expenditure Summary" on pages 12-14. Contains approximately 35 rows (one per department) and 6 columns: Department Name, FY2023 Actual, FY2024 Budgeted, FY2024 Actual, FY2025 Proposed, and Percent Change. The table spans three pages with the header row repeating on each page. There are subtotal rows for each division (Public Safety, Public Works, Administration, Community Services) and a grand total row at the bottom.

**Planned use:** Compare proposed 2025 spending to actual 2024 spending by department to identify which departments are seeing the largest increases and decreases.

**Extraction tool:** Not sure — recommend one.

### Output

**Table Overview**
A 35-row, 6-column expenditure table spanning pages 12-14. Rows represent individual departments grouped under four division subtotals. All financial columns are in U.S. dollars (likely formatted with commas and dollar signs in the PDF). The "Percent Change" column compares FY2025 Proposed to FY2024 Actual. Header row repeats on each page. Four subtotal rows and one grand total row are present and should be excluded from department-level analysis.

**Column Definitions**
| Column Header | Source Label | Data Type | Format Notes |
|---|---|---|---|
| department_name | Department Name | text | Trim whitespace; use exact name from PDF |
| division | [inferred from subtotals] | text | Public Safety / Public Works / Administration / Community Services — assign based on position under subtotal row |
| fy2023_actual | FY2023 Actual | numeric | Remove $ and commas; two decimal places |
| fy2024_budgeted | FY2024 Budgeted | numeric | Remove $ and commas; two decimal places |
| fy2024_actual | FY2024 Actual | numeric | Remove $ and commas; two decimal places |
| fy2025_proposed | FY2025 Proposed | numeric | Remove $ and commas; two decimal places |
| pct_change | % Change | numeric | Remove % sign; store as decimal (e.g., 12.5 not 0.125) |
| notes | [not in source] | text | Flag any value that required judgment during extraction |

**Extraction Pitfalls**
1. **Subtotal and grand total rows:** The four division subtotals and the grand total row will extract as regular data rows. Mark them during extraction or delete them after — if they are included in analysis, totals will be double-counted.
2. **Repeating header rows:** The header row appears on all three pages. Automated tools will often extract these as data rows on pages 13 and 14. Delete duplicate header rows after extraction.
3. **Division assignment:** The PDF groups departments under division subtotals visually (using bold formatting or indentation), but this grouping is not an explicit column. You will need to add the "division" column manually based on where each department falls relative to the subtotal rows.
4. **Currency formatting:** Dollar signs and comma thousands separators will need to be stripped for analysis. If any value appears as "(1,234,567)" — parentheses indicate a negative number in accounting format — convert to -1234567.
5. **Percent change column:** Verify whether the source calculates this as (FY2025 Proposed - FY2024 Actual) / FY2024 Actual or against FY2024 Budgeted. Recalculate from your extracted figures to confirm.

**Recommended Tool & Instructions**
Use **Tabula** (free, open-source, available at tabula.technology). It handles multi-page tables with repeating headers well and exports directly to CSV.

1. Open Tabula and load the PDF
2. Navigate to page 12 and draw a selection box around the full table, including headers but excluding any page titles or footnotes above/below the table
3. Extend the selection through pages 13 and 14 if Tabula supports multi-page selection — otherwise, extract each page separately and combine afterward
4. Select "Stream" extraction mode (not "Lattice") — budget tables in municipal PDFs often lack visible gridlines
5. Preview the extraction. Check: are all 6 columns aligned correctly? Are any department names split across two rows?
6. Export to CSV
7. Open in your spreadsheet application and clean: delete duplicate header rows from pages 13-14, delete the 4 subtotal rows and 1 grand total row, strip currency symbols and commas from numeric columns, add the "division" and "notes" columns manually

**Template**
| department_name | division | fy2023_actual | fy2024_budgeted | fy2024_actual | fy2025_proposed | pct_change | notes |
|---|---|---|---|---|---|---|---|
| Fire and Rescue Services | Public Safety | 14523800.00 | 15100000.00 | 14987350.00 | 16250000.00 | 8.4 | |
| Parks and Recreation | Community Services | 3842100.00 | 4000000.00 | 3756000.00 | 4125000.00 | 9.8 | FY2024 actual lower than budgeted — verify if mid-year cut |

## Known Limitations
- This skill produces an extraction plan and template — it does not perform the extraction itself. You still need to run the extraction tool and clean the data manually. The value is in preventing the common errors that produce dirty, unusable spreadsheets.
- For heavily formatted PDFs (scanned documents, image-based tables, or tables with complex merged cells spanning multiple rows and columns), automated tools may still fail. In those cases, the extraction plan serves as a guide for manual transcription, which is slower but more reliable.
- The column definitions and pitfall flags are based on the table description provided. If the actual PDF contains additional formatting quirks not mentioned in the input (hidden columns, nested sub-tables, color-coded cells that convey meaning), those will not be addressed in the brief. Describe the table as thoroughly as possible for the best results.

## Related Skills
- [data-cleaning-brief](data-cleaning-brief.md) — write a cleaning plan for the extracted data after it is in spreadsheet format
- [basic-statistics-calculator](../analysis/basic-statistics-calculator.md) — run calculations on the extracted figures
- [data-story-finder](../analysis/data-story-finder.md) — identify the newsworthy patterns in the extracted data
- [foi-data-request](foi-data-request.md) — request the underlying data in machine-readable format if the PDF extraction is too unreliable

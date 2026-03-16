---
name: scraper-brief
status: stable
category: data-journalism
subcategory: investigation
version: 1.0
eval_score: 4.3
tags: [scraping, data collection, technical brief, web data, investigation]
---

# Scraper Brief

## What This Skill Does
Writes a clear, technical brief describing exactly what data needs to be collected from a website or set of web pages, how it should be structured, and what edge cases and legal/ethical considerations apply — for handoff to a developer or data team.

## When To Use This Skill
- You have identified a publicly accessible website containing data you need in bulk and want to brief a developer to collect it
- You need to document what a scraper should collect before commissioning or building the tool
- You want to think through the data structure, edge cases, and update frequency requirements before any technical work begins
- You need a record of the collection methodology for editorial and legal transparency

## What You Need To Provide
**Required:** The URL or website description. What data you need — the specific fields visible on the page. The scope — how many pages or records you expect to collect. The reason you need it (news investigation, research, ongoing monitoring).
**Optional:** How frequently the data needs to be updated; whether pagination, search filters, or login walls are involved; any known technical obstacles (JavaScript rendering, anti-scraping measures); the output format you need.

## How Claude Approaches This
1. Maps the required data fields from the description of the source page, identifying what is structured (tables, clearly labelled fields) versus what requires extraction from running text.
2. Documents the scope, pagination, and any known complexity (dynamic content, filters, session requirements).
3. Produces a structured brief covering: data source, fields to collect, output schema, scope and frequency, known technical challenges, and legal/ethical considerations.

## Output Format
A technical brief (400–600 words) structured under six headings: Data Source, Fields to Collect (with example values), Output Schema, Scope and Frequency, Technical Considerations, and Legal and Ethical Notes. Tone: clear, precise, technical — written to be acted on by a developer. Includes a simple example row showing the expected output structure.

## Quality Criteria
- [ ] Every field to be collected is named and described with an example value
- [ ] Output schema specifies column names and data types
- [ ] Scope is quantified — estimated number of records, pages, or depth of crawl
- [ ] At least one technical consideration is addressed (pagination, JS rendering, rate limiting, etc.)
- [ ] Legal and ethical notes address robots.txt status and terms of service
- [ ] Update frequency is specified

## Example

### Input
Website: A national government procurement portal that lists all awarded contracts. Each contract has its own page with: contract title, awarding authority, contractor name, contractor registration number, contract value, award date, contract category, and a link to the procurement notice PDF. There are approximately 45,000 contracts currently listed, going back to 2015. The site has pagination (50 results per page). I need the full dataset, then weekly updates of new awards.
Investigation purpose: Corporate concentration analysis — tracking which companies are winning the most public contracts.
Output format needed: CSV.

### Output
**Data Source**

URL: [Government procurement portal — to be confirmed]
Description: National government procurement portal listing all awarded contracts. Each contract is on a dedicated page accessible from a paginated index. Approximately 45,000 records spanning 2015 to present.

---

**Fields to Collect**

Collect the following fields from each contract page:

| Field name | Description | Example value |
|-----------|-------------|---------------|
| `contract_id` | Unique identifier visible in the page URL or on the page | `GPC-2024-00482` |
| `contract_title` | Full title of the contract | `Maintenance of Central Regional Roads 2024–2027` |
| `awarding_authority` | Name of the public body awarding the contract | `National Roads Authority` |
| `contractor_name` | Name of the winning contractor | `Bridgepoint Construction Ltd` |
| `contractor_reg_no` | Company registration number | `IE-12345678` |
| `contract_value` | Total contract value in native currency | `€4,200,000` |
| `award_date` | Date of contract award | `2024-03-15` |
| `contract_category` | Procurement category or CPV code | `Road construction works` |
| `notice_pdf_url` | URL of the linked procurement notice PDF | `https://...` |

---

**Output Schema**

CSV file with one row per contract. Column names as above. `contract_value` to be stored as numeric (strip currency symbol). `award_date` to be stored as ISO 8601 (YYYY-MM-DD). `notice_pdf_url` as full absolute URL.

---

**Scope and Frequency**

- Initial collection: Full backfill of all ~45,000 contracts from 2015 to date. Estimated at 900 index pages at 50 results per page.
- Ongoing: Weekly update scrape collecting new contracts added since the previous run. Suggest comparing `award_date` or a `contract_id` range to identify new records.
- Storage: Append new records to master CSV; flag any changes to existing records.

---

**Technical Considerations**

- Pagination: Index pages use standard pagination (?page=N parameter, 50 results per page). Scraper should iterate all pages until no new results are found.
- Detail page load: Confirm whether contract detail pages load content via JavaScript or plain HTML. If JavaScript rendering is required, a headless browser (e.g. Playwright or Puppeteer) will be needed rather than a simple HTTP client.
- Rate limiting: Introduce a 1–3 second delay between requests to avoid triggering rate limiting or IP blocks. Do not run concurrent requests.
- PDF links: Collect the URL only — do not download PDFs in the initial build unless separately instructed.

---

**Legal and Ethical Notes**

- Check the site's `robots.txt` before any scraping begins. If scraping is disallowed in `robots.txt`, seek legal advice before proceeding.
- Review the portal's terms of service for restrictions on automated access or bulk download.
- The data is publicly accessible government procurement information. There is a strong public interest basis for collection, but this does not override legal obligations.
- Do not collect or store any personal data beyond what is listed above. Contractor registration numbers relate to legal entities, not individuals.

## Known Limitations
- This brief describes the data structure and collection approach based on a description of the site. The developer must verify field names, page structure, and technical requirements by inspecting the actual site before building.
- Dynamic websites that load data via APIs (rather than HTML) may be more efficiently accessed via the API directly. The developer should check whether an official API or data export exists before building a scraper.
- Websites change. This brief reflects the current described structure; the developer should build in error handling for missing fields or changed layouts.

## Related Skills
- [foi-data-request](./foi-data-request.md)
- [data-cleaning-brief](./data-cleaning-brief.md)
- [dataset-summary-brief](../analysis/dataset-summary-brief.md)

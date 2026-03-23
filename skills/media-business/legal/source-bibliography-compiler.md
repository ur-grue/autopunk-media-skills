---
name: source-bibliography-compiler
status: stable
category: media-business
subcategory: legal
version: 1.0
eval_score: 4.44
tags: [business, legal, bibliography, sources, documentation, fact-checking, editorial-records]
---

# Source Bibliography Compiler

## What This Skill Does
Compiles a formatted source list or bibliography from raw research notes, organising and standardising entries for publication, editorial records, or compliance documentation.

## When To Use This Skill
- You have finished research for an article, documentary, or podcast and need to compile your sources into a clean list
- Your publication or broadcaster requires a source bibliography to accompany a submitted piece
- You need to create an editorial record of all sources consulted for a project, for fact-checking or legal defence purposes
- You want to organise scattered research notes into a structured reference list before writing begins

## What You Need To Provide
**Required:**
- Your raw source information — this can be messy. Provide names, titles, URLs, publication names, dates, interview details, or any other identifying information you have, in whatever format you have it.
- The purpose of the bibliography (publication appendix, internal editorial record, fact-checking reference, academic-style citation)

**Optional:**
- A preferred citation style (AP, Chicago, APA, Harvard, MLA, or "plain editorial" — a simplified format used by many newsrooms)
- Whether you want sources grouped by type (interviews, documents, publications, data sources) or listed alphabetically
- Whether the bibliography is for public-facing use (published alongside the piece) or internal use only (editorial records)
- Any sources that should be anonymised (e.g., confidential sources listed as "Source A — background interview, March 2026")
- The title of the project or article the bibliography accompanies

## How Claude Approaches This
1. **Inventories and categorises the raw material.** Claude reads through your research notes and identifies each distinct source, categorising them by type: published sources (articles, books, reports), primary documents (court records, government filings, datasets), interviews and personal communications, and online/multimedia sources. This categorisation drives the formatting decisions.

2. **Standardises each entry.** Every source entry is reformatted to the specified citation style (or plain editorial format if none is specified). Missing fields are flagged rather than guessed — if a publication date is absent, the entry reads "[date unknown]" rather than inventing one. Consistency across all entries is prioritised: if one book entry includes publisher and city, all book entries do.

3. **Handles interviews and unpublished sources.** Journalistic bibliographies frequently include sources that do not appear in standard citation guides — off-the-record conversations, anonymous sources, unpublished data, FOIA responses, leaked documents. Claude formats these according to journalistic convention: named interviews with date and context, anonymised sources with a descriptor and date, and documents with as much identifying information as is appropriate for the sensitivity level.

4. **Groups or orders entries as specified.** If grouping by type is requested, Claude uses clear section headers (Published Sources, Interviews, Documents, Data and Datasets). If alphabetical order is requested, all sources are listed in a single sequence by author surname or source name. If no preference is stated, Claude defaults to grouping by type — the most useful format for editorial records.

5. **Flags incomplete or problematic entries.** If a source cannot be formatted properly because key information is missing (no author, no date, broken URL), Claude includes the entry with a bracketed note identifying what is needed. This ensures nothing is silently dropped from the bibliography.

## Output Format
A formatted source list with clear section headers (if grouped) or a single alphabetical list. Each entry follows the specified citation style consistently. Entries with missing information are flagged with bracketed notes (e.g., "[date needed]", "[confirm author name]"). For internal editorial records, the format includes interview dates, contexts, and confidentiality notes. For public-facing bibliographies, the format is cleaner and omits internal notes. Total length varies with the number of sources — typically 200–800 words for a standard journalistic project.

## Quality Criteria
- [ ] Every source from the raw notes appears in the compiled bibliography — nothing silently dropped
- [ ] Citation format is consistent across all entries — no mixing of styles
- [ ] Missing information is flagged with bracketed notes, not guessed or fabricated
- [ ] Interviews and unpublished sources are formatted according to journalistic convention
- [ ] Anonymised sources are listed without identifying details, with a descriptor and date only
- [ ] Grouping or ordering matches the user's specification (or defaults to type-grouped if unspecified)
- [ ] The bibliography could serve as a fact-checking reference — every entry provides enough detail to locate the original source

## Example

### Input
**Raw research notes:**

Interviewed Dr. Lena Bosch, professor of urban planning at Millbrook University, on Feb 14 2026. 45 min phone interview about transit-oriented development. She sent me her 2024 paper afterwards — "Rethinking Density: Transit Corridors and Housing Affordability in Mid-Sized Cities" in the Journal of Urban Policy, Vol 38, No 2.

Also used the National Transit Authority's annual ridership report from 2025 — downloaded the PDF from their website, nta.gov.example/reports/ridership2025.pdf.

Talked to a city planning official who didn't want to be named — background only, March 3, phone call, about the political resistance to upzoning near transit stations.

Found a good article by Marcus Webb in The Metro Journal, published online Jan 12 2026, "Why Your City's Transit Plan Won't Fix Housing" — used a statistic from that about the 15% density increase near new stations.

Also pulled data from the Census Bureau's 2024 American Community Survey, Table B25031 — median gross rent by bedrooms.

There's a 2023 city council meeting transcript from Greendale City Council where they debated the upzoning ordinance — it's on the city's public records portal, greendale.gov.example/council/minutes/2023-09-14.

**Purpose:** Internal editorial record for a magazine feature.

**Citation style:** Plain editorial.

**Grouping:** By type.

### Output

**Source Bibliography — Transit-Oriented Development Feature**
*Internal editorial record — not for publication*

---

**Interviews and Personal Communications**

Bosch, Dr. Lena. Professor of Urban Planning, Millbrook University. Phone interview, February 14, 2026. 45 minutes. Topic: transit-oriented development and housing affordability in mid-sized cities.

Anonymous city planning official. Background interview (not for attribution), phone, March 3, 2026. Topic: political resistance to upzoning near transit stations.

---

**Published Sources**

Bosch, Lena. "Rethinking Density: Transit Corridors and Housing Affordability in Mid-Sized Cities." Journal of Urban Policy, Vol. 38, No. 2, 2024.

Webb, Marcus. "Why Your City's Transit Plan Won't Fix Housing." The Metro Journal, January 12, 2026. [Online — confirm URL for archival link.]

---

**Government and Institutional Documents**

National Transit Authority. Annual Ridership Report, 2025. nta.gov.example/reports/ridership2025.pdf

Greendale City Council. Meeting transcript, September 14, 2023. Debate on upzoning ordinance. greendale.gov.example/council/minutes/2023-09-14

---

**Data Sources**

U.S. Census Bureau. 2024 American Community Survey, Table B25031: Median Gross Rent by Bedrooms. [Confirm exact download URL for records.]

---

*Notes: Two entries flagged for completion — confirm the URL for Marcus Webb's Metro Journal article and the exact Census Bureau download link. All other entries verified against the raw research notes.*

## Known Limitations
- Claude formats and organises the sources you provide but cannot verify that they are accurate, that URLs are live, or that cited data is correctly attributed. Always spot-check key entries against the original source before relying on the bibliography for fact-checking or legal defence.
- For highly specialised citation formats (legal citation, scientific journal house styles, specific broadcaster compliance formats), Claude may not match every formatting rule exactly. Provide a sample formatted entry if you need precise conformance to an unusual style.
- The skill works from the information you provide. If your raw notes omit a source entirely, it will not appear in the bibliography. Cross-reference the compiled list against your article or script to ensure nothing is missing.

## Related Skills
- [copyright-holder-finder](./copyright-holder-finder.md) — identify the rights holder when a source needs licensing or clearance
- [creative-commons-explainer](./creative-commons-explainer.md) — understand the licence terms for open-access sources in the bibliography
- [rights-clearance-checklist](./rights-clearance-checklist.md) — clear all third-party content rights for a production

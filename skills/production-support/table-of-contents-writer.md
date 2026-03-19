---
name: table-of-contents-writer
status: beta
category: production-support
subcategory: publishing
version: 1.0
eval_score: null
tags: [table-of-contents, long-form, navigation, editorial, structure]
---

# Table of Contents Writer

## What This Skill Does
Reads a long-form piece and generates a publication-ready table of contents with section titles, descriptive sub-entries, and accurate page or anchor references.

## When To Use This Skill
- You are preparing a long-form article, report, or feature (2,000 words or more) that will be published with navigational headers
- A digital piece needs anchor-linked navigation for web publishing
- A print magazine special, annual report, or editorial supplement needs a formatted contents page
- You have restructured a long document and need the contents page rebuilt to match the new order

## What You Need To Provide
**Required:** The full text of the piece, or a structured outline with all section headings and subheadings in order. The intended publication format (print with page numbers, web with anchor links, or plain navigational text with no links).
**Optional:** Page numbers already assigned to each section (for print). The publication's title and issue details if the contents page will appear on its own page. The desired tone — functional and minimal, or editorial with descriptive lines beneath each entry. Any sections that should be excluded from the contents (e.g., legal notices, masthead).

## How Claude Approaches This
1. Identify every named section and subsection in the manuscript, reading the text or outline in order. Where headings are absent, infer natural section breaks from the content and propose heading names for the author to approve.
2. Construct the hierarchy: main sections as primary entries, subsections as indented secondary entries, with consistent formatting throughout. Trim or rewrite overly long headings so they read cleanly as contents entries without losing meaning.
3. Format the final table to match the requested output type — print layout with page numbers and dot leaders, web layout with anchor slugs ready to paste into CMS, or plain text. Add descriptive lines beneath section titles if the editorial style calls for it.

## Output Format
A clean, publication-ready table of contents. Print format: section titles flush left, page numbers flush right, connected by dot leaders (represented as periods in plain text). Web format: section titles as link text paired with their anchor IDs (e.g., `#section-slug`). Descriptive lines (when requested) are one sentence, no longer. The full contents block is delivered ready to paste into layout or CMS — no additional explanation unless changes to section headings are proposed.

## Quality Criteria
- [ ] Every section in the manuscript appears in the contents; nothing is omitted or invented
- [ ] Heading text in the contents matches the manuscript — no paraphrasing without flagging it
- [ ] Hierarchy is visually clear: primary and secondary entries are distinguished consistently
- [ ] Page numbers or anchor slugs are correct and complete for every entry
- [ ] Descriptive lines (if requested) add information — they do not simply restate the heading

## Example

### Input
**Format:** Web (anchor links)
**Style:** Editorial — include a one-sentence descriptive line under each main section title
**Manuscript outline:**

> **Introduction: The Promise of Urban Agriculture**
> Why city farms became the story of the decade — and why most of them failed.
>
> **Part One: The Boom Years (2015–2020)**
> — The investors who bet on vertical farms
> — What the early data actually showed
> — A taxonomy of business models: rooftop, basement, warehouse
>
> **Part Two: The Reckoning**
> — Energy costs nobody modelled
> — The logistics problem
> — Three case studies: London, Detroit, Singapore
>
> **Part Three: What Survives**
> — Community farms vs. commercial farms: different species entirely
> — Policy levers that actually work
> — The farms still standing — and why
>
> **Conclusion: Lessons for the Next Wave**

### Output

---

**Contents**

[Introduction: The Promise of Urban Agriculture](#introduction)
*Why city farms became the story of the decade — and why most of them failed.*

[Part One: The Boom Years (2015–2020)](#part-one-boom-years)
*The capital, the optimism, and the business models that defined urban agriculture's first era.*
&nbsp;&nbsp;&nbsp;&nbsp;[The investors who bet on vertical farms](#investors)
&nbsp;&nbsp;&nbsp;&nbsp;[What the early data actually showed](#early-data)
&nbsp;&nbsp;&nbsp;&nbsp;[A taxonomy of business models](#business-models)

[Part Two: The Reckoning](#part-two-reckoning)
*How energy costs, logistics failures, and market realities dismantled the boom.*
&nbsp;&nbsp;&nbsp;&nbsp;[Energy costs nobody modelled](#energy-costs)
&nbsp;&nbsp;&nbsp;&nbsp;[The logistics problem](#logistics)
&nbsp;&nbsp;&nbsp;&nbsp;[Three case studies: London, Detroit, Singapore](#case-studies)

[Part Three: What Survives](#part-three-what-survives)
*The farms, models, and policies that endured — and the reasons behind their resilience.*
&nbsp;&nbsp;&nbsp;&nbsp;[Community farms vs. commercial farms](#community-vs-commercial)
&nbsp;&nbsp;&nbsp;&nbsp;[Policy levers that actually work](#policy)
&nbsp;&nbsp;&nbsp;&nbsp;[The farms still standing — and why](#farms-standing)

[Conclusion: Lessons for the Next Wave](#conclusion)

---

**Notes for editor:**
- Anchor slugs are suggestions — update to match your CMS's auto-generated IDs if different.
- Indented subsections use non-breaking spaces for alignment; replace with your CMS's indent class if preferred.
- Descriptive lines for the Conclusion were not included as the heading is self-explanatory — add one if house style requires it.

## Known Limitations
- If the manuscript has no headings, Claude will propose section breaks and names based on content — these must be reviewed by the author before use, as inferred headings may not reflect the writer's intended structure.
- Page numbers for print cannot be assigned accurately without a laid-out document; this skill produces placeholder numbers or numbering based on the sequence provided, which must be verified against final layout.
- Very long documents (book-length or 10,000+ words) may produce a contents list that is itself unwieldy — consider requesting only top-level entries for a summary contents, with sub-entries in a separate expanded version.
- Descriptive lines are written in an editorial tone and will need author approval if the piece has a distinct first-person or highly specific voice.

## Related Skills
- [web-section-breaker](../production-support/web-section-breaker.md)
- [print-web-reformatter](../production-support/print-web-reformatter.md)
- [layout-placement-advisor](../production-support/layout-placement-advisor.md)

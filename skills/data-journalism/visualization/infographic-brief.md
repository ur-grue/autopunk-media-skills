---
name: infographic-brief
status: stable
category: data-journalism
subcategory: visualization
version: 1.0
eval_score: 4.4
tags: [infographic, design brief, data visualization, visual journalism]
---

# Infographic Brief

## What This Skill Does
Writes a detailed, production-ready brief for an infographic designer from raw data or findings — specifying the story, the key figures, the recommended visual approach, the hierarchy of information, and the format requirements.

## When To Use This Skill
- You have data findings that need to be visualised and are handing them to a designer or illustration team
- You want to align on the story and hierarchy before design work begins, avoiding expensive revisions
- You need a brief that a designer who is not a journalist can understand and act on without a meeting
- You are commissioning infographic work from a freelancer and need clear written specifications

## What You Need To Provide
**Required:** The main finding or story the infographic must communicate. The key data points (exact figures). The intended publication format (digital article, print page, social card, etc.) and approximate dimensions or aspect ratio.
**Optional:** The publication's house style (colours, typefaces); any data points that are secondary and should be subordinate; reference examples of infographics the team likes; deadline.

## How Claude Approaches This
1. Establishes the single headline message the infographic must communicate — everything else is subordinate to this.
2. Recommends a chart or visual type appropriate for the data structure, and gives reasons (e.g. "A bar chart rather than a pie chart because you have seven categories and relative magnitude matters more than proportions").
3. Produces a structured brief covering: headline message, visual type recommendation, data hierarchy (primary / secondary / tertiary), copy requirements (title, labels, source, notes), format and dimensions, and design notes.

## Output Format
A structured brief document (300–500 words) under the following headings: Headline Message, Visual Type and Rationale, Data Hierarchy, Copy Specifications, Format and Technical Requirements, Design Notes. Tone: direct, precise — written for a designer, not a journalist. Measurable and actionable throughout.

## Quality Criteria
- [ ] The headline message is a single, specific sentence — not a topic description
- [ ] Visual type recommendation includes a clear rationale
- [ ] Data hierarchy distinguishes primary figures from supporting context
- [ ] Copy specifications include exact text for title, source line, and any essential footnotes
- [ ] Format requirements specify dimensions, file format, and colour mode

## Example

### Input
Story: Analysis of five years of government procurement records shows that the three largest infrastructure contracts awarded in the country in 2025 all went to companies with a registered address in the same offshore jurisdiction. Combined contract value: €2.3 billion. The companies won 67% of all contracts over €100 million in 2025. By comparison, in 2021 they held 12% of that market.
Publication format: Digital article (full-width), desktop and mobile. Also needed as a square social card (1:1 ratio) for Instagram and LinkedIn. House style: dark background, gold accent, sans-serif typography.

### Output
**Headline Message**

Three companies sharing an offshore address won 67% of all government contracts over €100 million in 2025 — up from 12% in 2021.

---

**Visual Type and Rationale**

Recommend a two-panel design:
- Panel 1: A simple bar chart showing market share of large-contract wins by company group across five years (2021–2025). This communicates the growth trend clearly and lets the 2021 vs 2025 comparison land visually. A pie chart is not recommended — the story is about change over time, not composition at a single point.
- Panel 2: A large-type callout panel highlighting the total contract value (€2.3 billion) with a one-line context note. This provides the human-scale anchor for the percentage data in Panel 1.

---

**Data Hierarchy**

Primary (must be legible at all sizes):
- 67% (2025 market share) and 12% (2021) — these are the two figures the reader must see immediately
- €2.3 billion (total contract value)

Secondary (present but subordinate):
- Year labels on bar chart (2021, 2022, 2023, 2024, 2025)
- "Contracts over €100 million" as axis label or subtitle

Tertiary (fine print):
- "Three companies with shared registered address in [jurisdiction]" — one-line descriptor beneath headline

---

**Copy Specifications**

- Title: "From 12% to 67% in four years" (main headline, bold, largest type)
- Subtitle: "Share of government contracts over €100m awarded to three companies sharing an offshore address"
- Source line: "Source: National Procurement Authority contract register, 2021–2025 / [Publication name] analysis"
- Footnote: "Market share calculated as percentage of total contract value for contracts exceeding €100 million"

---

**Format and Technical Requirements**

- Full-width digital: 1200 × 675px (16:9), RGB, PNG and SVG
- Social card: 1080 × 1080px (1:1), same assets simplified — headline only, single callout stat, source line. RGB, PNG.
- Colour: Dark background (#1a1a1a or publication equivalent), gold accent (#c9a84c or house gold), white body text
- Font: House sans-serif throughout; title at minimum 32px equivalent for legibility at mobile scale

---

**Design Notes**

- The bar chart bars should be gold for the three named companies, grey for "all other contractors" — this reinforces the story without requiring a separate legend
- Do not use a 3D effect or shadow on the bars; the story is precise and the design should feel like serious journalism
- Ensure the 67% figure is the largest typographic element on the social card version — it should be legible as a thumbnail

## Known Limitations
- This skill produces the brief, not the infographic. The quality of the final design depends on the designer interpreting the brief accurately — a follow-up conversation is recommended for complex visualisations.
- Visual type recommendations are editorial judgements, not data science. The designer may have good reasons to deviate; the brief is a starting point, not a specification that overrides visual expertise.
- Colour and typeface specifications in this brief are placeholders unless house style values are provided in the input. Always substitute with actual brand values before sending to a designer.

## Related Skills
- [chart-description-writer](./chart-description-writer.md)
- [data-table-formatter](./data-table-formatter.md)
- [data-story-finder](../analysis/data-story-finder.md)

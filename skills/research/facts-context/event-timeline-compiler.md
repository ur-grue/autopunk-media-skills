---
name: event-timeline-compiler
status: beta
category: research
subcategory: facts-context
version: 1.0
eval_score: null
tags: [timeline, research, structured-data, visual, fact-checking]
---

# Event Timeline Compiler

## What This Skill Does
Compiles key events into a structured, scannable timeline — formatted as a table or numbered list — designed for use in graphic production, digital interactives, sidebar fact boxes, and editorial planning documents.

## When To Use This Skill
- You need a timeline formatted for a designer or web developer to turn into a visual element
- An editor has asked for a sidebar chronology to accompany a feature or investigation
- You are building an editorial planning document and need a compact reference of key dates
- You want a quick-scan version of events (not narrative prose) to share in a pitch or briefing

## What You Need To Provide
**Required:** The topic or event sequence to compile, and the time period to cover.

**Optional:** Preferred output format (table, numbered list, or both); maximum number of entries (useful if you need it to fit a fixed layout); whether to include a brief annotation on each entry or just the bare date and event; the publication context (print sidebar, web interactive, broadcast rundown, pitch document).

## How Claude Approaches This
1. Identifies the key events that define the arc of the story — trigger, escalation, turning points, and current status — prioritising entries that are independently significant over entries that are merely part of the background.
2. Assigns each entry the most specific date available (day/month/year where possible; month/year where exact date is unknown; year only as a last resort) and flags any approximate dates.
3. Writes each entry as a single, precise sentence — no more than 20 words — that states what happened and, if space permits, why it matters.
4. Formats the output as requested: a markdown table for digital/design use, a numbered list for documents, or both if no preference is given.

## Output Format
**Table format:** Three columns — Date | Event | Significance (one word or short phrase). Dates in the first column, left-aligned. Maximum 25 entries unless more are requested.

**List format:** Numbered entries, each on a single line: `**Month Year** — Event description.`

Both formats use plain, neutral language. No bullet-point sub-entries. No paragraph prose. Output should be copy-paste ready for a designer's brief or an editorial doc.

## Quality Criteria
- [ ] Every entry has a date — day/month/year, month/year, or year, with approximate dates flagged
- [ ] Each entry is one sentence, 20 words or fewer
- [ ] The most significant events are included; minor detail entries are omitted
- [ ] No two entries say essentially the same thing in different words
- [ ] Formatting is consistent throughout — no mixed styles within the same output
- [ ] The timeline has a clear start and end point, not an open-ended trailing list

## Example

### Input
Topic: A national housing affordability crisis and subsequent government policy response.
Period: 2018–2024.
Format: Table, for a web interactive. Maximum 12 entries. Include a one-phrase significance note per entry.

### Output

| Date | Event | Significance |
|------|-------|--------------|
| Q1 2018 | National median house price exceeds ten times median household income for the first time on record. | Crisis benchmark reached |
| June 2019 | Parliamentary housing committee publishes inquiry report; recommends 14 policy reforms including zoning liberalisation. | Reform agenda set |
| March 2020 | Pandemic lockdowns trigger short-term rent falls in major cities; government declares moratorium on evictions. | Temporary relief |
| November 2020 | Mortgage rates hit historic low of 0.9%; demand surges; prices recover and accelerate. | Crisis deepens |
| August 2021 | National homelessness register shows 22% year-on-year increase; advocacy groups call for emergency housing fund. | Social cost visible |
| February 2022 | Central bank signals imminent rate rises; property industry warns of market correction. | Turning point signals |
| June 2022 | Interest rates begin rising; first-home buyer mortgage approvals fall 34% over six months. | Demand squeeze begins |
| January 2023 | Government announces National Housing Compact: target of 1.2 million new homes by 2029. | Policy response launched |
| May 2023 | Senate passes amended Housing Fund legislation after three-month impasse; $10 billion committed. | Funding secured |
| October 2023 | First Housing Compact progress report finds 38,000 homes completed against an annual target of 240,000. | Implementation lag exposed |
| March 2024 | Independent review of zoning rules finds 60% of urban land still restricted to single-dwelling development. | Structural barrier confirmed |
| June 2024 (approx.) | Government announces emergency planning powers to override local zoning in designated supply zones. | Policy escalation |

*Dates marked "approx." are based on available reporting and should be verified before publication.*

## Known Limitations
- This skill produces a structured reference tool, not a publication-ready narrative. A writer will still need to interpret the timeline for readers rather than reproducing it verbatim in a text piece.
- Claude cannot guarantee completeness for fast-moving stories or events that occurred close to its training cutoff. Always verify the final entry against current sources.
- For topics with significant regional or language variation (policy enacted differently in different jurisdictions, events covered primarily in non-English press), the timeline may reflect English-language coverage more than the full picture.
- The 20-word entry limit is a discipline, not a hard technical constraint — if a critical event cannot be accurately summarised in 20 words, ask Claude to expand that specific entry.

## Related Skills
- [event-chronology-builder](./event-chronology-builder.md)
- [investigation-timeline-builder](../../magazine-journalism/investigation/investigation-timeline-builder.md)
- [background-brief-writer](./background-brief-writer.md)

---
name: investigation-timeline-builder
status: stable
category: magazine-journalism
subcategory: investigation
version: 1.0
eval_score: 4.4
tags: [journalism, investigation, timeline, research, chronology]
---

# Investigation Timeline Builder

## What This Skill Does
Builds a structured, annotated chronological timeline from raw notes, documents, or source interview summaries, formatted for both internal reporting use and potential publication as a graphic.

## When To Use This Skill
- You have accumulated research from multiple sources and need to impose chronological order on a complex sequence of events
- You are preparing a narrative investigation and need to see the full arc of events before structuring the story
- You want a timeline that flags gaps, contested dates, and unverified entries so editors can see what still needs reporting
- You are planning a published timeline graphic and need a draft with source attributions for each entry

## What You Need To Provide
**Required:** Raw notes, document excerpts, or bullet-point summaries of events in any order; the investigation's subject (person, institution, or incident)
**Optional:** Known key dates you want anchored; the intended output use (internal working document vs. publishable graphic); any disputed or uncertain dates you want flagged; sources for specific events (document names, interviewee names)

## How Claude Approaches This
1. Extracts all dateable events from the raw input and sorts them chronologically, noting where only approximate dates are available
2. For each entry, records the event, the source or document it comes from, and a verification status (confirmed, single-source, or unverified)
3. Identifies structural gaps in the timeline — periods of unexplained silence, missing transitions between events, or logical breaks that suggest something happened but is not yet documented
4. Produces two versions if requested: a detailed internal version with source notes and verification flags, and a clean publishable version suitable for graphic design handoff

## Output Format
Chronological list. Each entry: Date (exact or approximate) | Event description (1–3 sentences) | Source | Verification status. Internal version includes notes column for reporting gaps and discrepancies. Publishable version strips source notes and flags, retaining only verified entries. Events marked [UNVERIFIED], [SINGLE SOURCE], or [DATE APPROXIMATE] in internal version.

## Quality Criteria
- [ ] Every entry has a corresponding source or note about why the source is unknown
- [ ] Gaps in the timeline are called out explicitly, not silently omitted
- [ ] Dates are presented at the most precise level available — year/month/day when known, month/year or year-only when not
- [ ] Disputed events are represented accurately, not resolved in favor of one account
- [ ] Publishable version contains only verified entries and does not misrepresent confidence level

## Example

### Input
Investigation: Collapse of a regional affordable housing developer after it received $12 million in city grants over five years

Raw notes:
- City approved first grant in spring 2018, $2.1 million
- Developer broke ground on first project in late 2018
- Community board complained in 2019 about construction delays — exact date unknown
- City audited the developer's first project in mid-2020, found cost overruns
- Developer hired a lobbying firm in 2020 — don't know exactly when
- Second grant approved — city records show March 2021, $4.8 million
- Local newspaper reported on tenant complaints in November 2021
- Developer CEO resigned "in early 2022" according to a source — not confirmed by documents
- State AG opened an investigation — announcement was February 28, 2023
- Developer declared bankruptcy March 14, 2023
- Third grant ($5.1M) was reportedly approved but I haven't found the approval documents yet

### Output

**Investigation Timeline — Regional Affordable Housing Developer**
*Internal Working Version — Not for Publication*

---

| Date | Event | Source | Status |
|------|-------|--------|--------|
| Spring 2018 (approx.) | City council approved first grant of $2.1 million to developer | City grant records | CONFIRMED — obtain exact council vote date |
| Late 2018 (approx.) | Developer broke ground on first housing project | Building permit records | CONFIRMED — verify exact date from permit filing |
| 2019 (date unknown) | Community board formally complained about construction delays on first project | Raw notes — community board | SINGLE SOURCE — need community board meeting minutes |
| Mid-2020 (approx.) | City audit of first project found cost overruns | City audit report | CONFIRMED — obtain full audit report and exact release date |
| 2020 (date unknown) | Developer retained outside lobbying firm | Raw notes | UNVERIFIED — check lobbying disclosure filings with city or state |
| March 2021 | City council approved second grant of $4.8 million | City records | CONFIRMED |
| November 2021 | Local newspaper published report on tenant complaints about uninhabitable conditions | Newspaper archive | CONFIRMED — pull original article for specific quotes |
| Early 2022 (approx.) | Developer CEO reportedly resigned | Single source, unconfirmed | SINGLE SOURCE / DATE APPROXIMATE — check corporate filings, LinkedIn, press releases |
| [DATE UNKNOWN] | Third grant of $5.1 million reportedly approved | Raw notes — unconfirmed | UNVERIFIED — no approval documents found; check city budget records and council minutes |
| February 28, 2023 | State Attorney General publicly announced investigation into developer's use of city funds | AG press release | CONFIRMED |
| March 14, 2023 | Developer filed for Chapter 7 bankruptcy | Federal bankruptcy court filing | CONFIRMED |

---

**Timeline Gaps and Reporting Priorities**

1. *2019–2020:* No documented city response to community board complaints. Was the audit triggered by the complaints? Obtain city communications from this period.
2. *CEO resignation:* Single-source, undated. This is legally and editorially significant — a resignation before the AG investigation raises questions about prior knowledge. Prioritize verification.
3. *Third grant:* $5.1 million reportedly approved but no documents found. If confirmed, this would mean the city continued funding the developer after its own audit found cost overruns. Critical gap.
4. *Lobbying firm:* Undated and unverified. If the developer hired lobbyists after the audit but before the second grant, the sequence is newsworthy.

---

*Publishable version will be generated once UNVERIFIED and SINGLE SOURCE entries are resolved or removed.*

## Known Limitations
- Timeline accuracy is entirely dependent on the quality of input notes. If dates in the raw material are wrong, the timeline will reflect those errors — verification is the journalist's responsibility, not this skill's.
- When two sources give conflicting dates for the same event, the skill presents both and flags the conflict rather than resolving it. Resolving factual disputes requires reporting, not a tool.
- Very large timelines (50+ events) may become difficult to manage in a single output. For complex investigations spanning many years, consider building the timeline in segments by year or phase.
- This skill does not automatically pull public records or court filings — it works with material the user provides.

## Related Skills
- [document-analysis-summary](./document-analysis-summary.md)
- [foia-request-writer](./foia-request-writer.md)
- [source-research-brief](./source-research-brief.md)

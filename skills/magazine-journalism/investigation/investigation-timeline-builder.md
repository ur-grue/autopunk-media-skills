---
name: investigation-timeline-builder
status: stable
category: magazine-journalism
subcategory: investigation
version: 1.1
eval_score: 4.53
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
5. After the timeline, provides a "Next Step" note: identifying the highest-priority reporting gap to close first, whether to run foia-request-writer to obtain official records for an unverified entry, and what is needed before the publishable version can be released

## Output Format
Chronological list. Each entry: Date (exact or approximate) | Event description (1–3 sentences) | Source | Verification status. Internal version includes notes column for reporting gaps and discrepancies. Publishable version strips source notes and flags, retaining only verified entries. Events marked [UNVERIFIED], [SINGLE SOURCE], or [DATE APPROXIMATE] in internal version. Each gap or unverified entry is followed by a populated Gap Remediation Template (see below). Output ends with a "Next Step" note: which reporting gap is most critical to close before publication, whether to run foia-request-writer for key documents, and how many UNVERIFIED entries remain before the publishable version is ready.

## Gap Remediation Template
For every entry flagged [UNVERIFIED], [SINGLE SOURCE], [DATE APPROXIMATE], or for every silent period flagged as a structural gap, the brief produces a populated remediation template using these fields:

1. **Gap or entry:** (one sentence — what is missing or unverified)
2. **Why it matters:** (one sentence — what the story can or cannot say until this is resolved, and whether it is editorially or legally significant)
3. **Document or record to obtain:** (the specific document name, court docket, filing, or correspondence that would resolve this gap)
4. **Where to obtain it:** (the specific custodian — agency, registry, court, or person — with the request route: FOIA/FOI, public records portal, direct request, archive search)
5. **Second-best route if primary fails:** (the next most likely path, e.g., a sister agency, a prior reporting partner, an interview that could produce the same fact on the record)
6. **Owner and deadline:** (who on the team is responsible, and the date by which this must be resolved for the publication timeline)
7. **Resolves to:** (what the entry should look like once the gap is closed — exact date and source line, or removal from the publishable version)

The brief's Timeline Gaps section is built entirely from these populated templates so an editor can read the file and assign each remediation as a discrete reporting task.

## Quality Criteria
- [ ] Every entry has a corresponding source or note about why the source is unknown
- [ ] Gaps in the timeline are called out explicitly, not silently omitted
- [ ] Dates are presented at the most precise level available — year/month/day when known, month/year or year-only when not
- [ ] Disputed events are represented accurately, not resolved in favor of one account
- [ ] Publishable version contains only verified entries and does not misrepresent confidence level
- [ ] Output includes at least one concrete next action the user can take immediately (close the most critical reporting gap, run foia-request-writer for documents, or confirm what is needed before the publishable version can be released)

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

**Gap 1 — City response to community complaints, 2019–2020**
- *Why it matters:* Establishes whether the audit was triggered by community pressure or initiated independently — central to the accountability narrative.
- *Document to obtain:* City correspondence between the housing department, community board, and developer, 2019–early 2020.
- *Where to obtain it:* City clerk's office (records request) and city housing department (FOIA-equivalent records request); cross-check community board minutes via the board's secretary.
- *Second-best route:* Interview former community board members about their direct contacts with the city.
- *Owner and deadline:* Lead reporter, request filed within 5 days; expected response 30 days.
- *Resolves to:* Specific dated entries documenting the complaint-to-audit sequence.

**Gap 2 — CEO resignation date and circumstances**
- *Why it matters:* A resignation before the AG investigation raises significant prior-knowledge questions. Single-source attribution is not publishable.
- *Document to obtain:* Corporate filings (state corporation registry annual report, SEC filings if applicable), board minutes, internal communications.
- *Where to obtain it:* State corporation registry (online), bankruptcy trustee (the Chapter 7 filing should disclose officer changes), and a request to the developer's former general counsel.
- *Second-best route:* On-the-record confirmation from two independent former employees plus contemporaneous LinkedIn or press release evidence.
- *Owner and deadline:* Investigations editor, resolution before fact-check (4 weeks out).
- *Resolves to:* Specific dated resignation entry with corporate filing as primary source.

**Gap 3 — Third grant ($5.1M) approval**
- *Why it matters:* If confirmed, demonstrates the city continued funding after its own audit found cost overruns. This is the story's strongest accountability fact.
- *Document to obtain:* City council resolution or budget amendment authorizing the grant; signed grant agreement.
- *Where to obtain it:* City clerk (council resolutions), city housing or economic development department (grant agreement), city budget office (line-item authorization).
- *Second-best route:* Cross-reference state housing trust fund pass-through records or federal HUD CDBG reporting if any portion was federally funded.
- *Owner and deadline:* Lead reporter, this week — story cannot publish without resolution.
- *Resolves to:* Specific dated grant approval entry, or removal of the claim if no documents are found.

**Gap 4 — Lobbying firm engagement date**
- *Why it matters:* Sequencing relative to the audit and second grant is newsworthy if it shows post-audit lobbying preceded continued funding.
- *Document to obtain:* State or city lobbying disclosure filings naming the developer as client.
- *Where to obtain it:* Secretary of State lobbying registry (online); city ethics commission filings if local lobbying disclosure exists.
- *Second-best route:* Interview the lobbying firm's principal on the record about engagement dates.
- *Owner and deadline:* Researcher, within 7 days.
- *Resolves to:* Dated engagement entry with lobbying registry as primary source.

---

*Publishable version will be generated once the four UNVERIFIED and SINGLE SOURCE entries above are resolved or removed.*

**Next Step:** Close Gap 3 (third grant documentation) first — this is the linchpin accountability fact. File the city clerk records request and city budget office request in parallel today. Run foia-request-writer to draft both. 4 UNVERIFIED entries remain before the publishable version is ready.

## Known Limitations
- Timeline accuracy is entirely dependent on the quality of input notes. If dates in the raw material are wrong, the timeline will reflect those errors — verification is the journalist's responsibility, not this skill's.
- When two sources give conflicting dates for the same event, the skill presents both and flags the conflict rather than resolving it. Resolving factual disputes requires reporting, not a tool.
- Very large timelines (50+ events) may become difficult to manage in a single output. For complex investigations spanning many years, consider building the timeline in segments by year or phase.
- This skill does not automatically pull public records or court filings — it works with material the user provides.

## Related Skills
- [document-analysis-summary](./document-analysis-summary.md)
- [foia-request-writer](./foia-request-writer.md)
- [source-research-brief](./source-research-brief.md)

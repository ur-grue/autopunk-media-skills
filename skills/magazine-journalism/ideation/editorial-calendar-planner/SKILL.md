---
name: editorial-calendar-planner
description: "Generate a structured editorial calendar: content mapping across weeks or months, production stage tracking, external event alignment, and workload distribution — for publications planning their coverage pipeline."
status: stable
category: magazine-journalism
subcategory: ideation
version: 1.0
eval_score: 4.5
tags: [journalism, planning, editorial-calendar, content-strategy, production-management]
---
# Editorial Calendar Planner

## What This Skill Does
Generates a structured editorial calendar for a publication — mapping content across weeks or months, balancing evergreen and timely pieces, tracking production stages, and aligning coverage with external events.

## When To Use This Skill
- You are planning the next quarter's coverage and need a skeleton calendar before assigning stories
- Your publication has a seasonal peak (awards season, festival coverage, holiday gift guides) and you need to reverse-engineer the production timeline from the publish dates
- You have recently expanded or shrunk your team and need to redistribute workload across writers
- An editor-in-chief is onboarding and wants to see the full pipeline visualised in one document
- You are launching a new publication or section and need to build the first production schedule from scratch
- You need to coordinate coverage across multiple beats that share the same production bottleneck (a single photographer, one copy editor, a shared designer)
- You want to stress-test an existing rough plan: you have a list of stories you want to run but have not mapped them against the calendar to check for bottlenecks, workload peaks, or deadline conflicts
- You are preparing a planning document for a stakeholder meeting (editorial board, publisher, funder) and need to show what the team will produce over the next period

## What You Need To Provide
**Required:**
- Publication type and frequency (weekly, biweekly, monthly, daily digital)
- Team size — how many writers, editors, and other production staff
- Beat coverage — which subjects your publication covers
- Planning period — the timespan you want the calendar to cover (4–12 weeks)

**Optional:**
- Upcoming external events relevant to your beats (festivals, elections, legislative sessions, industry conferences, awareness weeks, holidays)
- Existing recurring content (regular columns, series, reviews sections)
- Any hard editorial commitments already on the schedule (commissioned features, pre-sold advertorial adjacencies, special issues)
- Preferred content mix (e.g., "we want more long-form features and fewer news recaps")
- Historical patterns — which types of content perform best, which weeks are slow for readership
- Production bottleneck information — does photography take longer than writing? Is the copy desk a single person?
- Writer availability notes — part-time schedules, planned leave, other commitments
- Whether you want the calendar to include web/digital slots alongside print, or print only

## How the Assistant Approaches This
1. **Establishes the production rhythm.** Identifies the issue dates or digital publishing cadence and works backward from each publish date to set production stage deadlines: when pitches must be approved, when drafts are due, when editing is complete, when final copy goes to layout or CMS. For publications with overlapping production cycles (where Issue N is in layout while Issue N+1 is in draft), the calendar explicitly maps the overlap so the editor can see which days the team is serving two issues at once.

2. **Maps external events.** Places known external events on the calendar weeks and classifies each: does it warrant a planned feature, a short news slot, or nothing? Events that drive cover features get assigned early and locked; events that are relevant but secondary get noted as potential Opener or sidebar material. Weeks with no event hooks are flagged as evergreen slots.

3. **Fills the content grid.** Slots recurring content first (columns, reviews, roundups) since these are non-negotiable. Then places event-driven features in the weeks they must run. Then fills remaining feature slots with evergreen content, placing the strongest evergreen pieces in the quietest weeks where they will carry the issue without competition from timely coverage.

4. **Distributes workload.** Assigns each piece to a specific writer, ensuring no writer carries more than two pieces in active production simultaneously (unless the team size forces it). Identifies each writer's peak load week so the editor knows in advance which weeks are fragile. Flags any imbalances: a writer carrying significantly more than their share, or a writer with capacity that could absorb overflow.

5. **Adds buffer mechanics.** Reserves at least one open slot per issue or per week for unplanned coverage. Marks which planned pieces are "hold-able" (evergreen features that can shift one issue later without losing relevance) versus "locked" (event-driven coverage that must run on time or not at all). This gives the editor a clear decision framework when breaking news forces a schedule change.

6. **Builds deadline cascades.** Shows the critical path for each issue: the sequence of dates by which each stage must be complete, working backward from the publish date. Makes it immediately visible when a slipped draft deadline cascades into an editing bottleneck. For issues with a shared bottleneck (a single photographer, a single copy editor), the cascade highlights the dependency.

7. **Identifies the pitch pipeline.** Looks beyond the planning period to flag stories that need pitching or early reporting now in order to be ready for the quarter after. Prevents the common problem where a team finishes one quarter's calendar and has nothing in development for the next.

8. **Surfaces scheduling risks.** Reviews the full calendar for structural problems: weeks where multiple high-effort pieces converge on the same editor, personnel concentration risks (too much riding on one writer), external dependencies (photographer availability, source access windows), and holiday timing conflicts. Each risk includes a specific mitigation.

## Output Format
A week-by-week editorial calendar covering the requested period. Each week includes: the publication date (if applicable), planned content with working titles and assigned beat/writer slot, the current production stage for each piece (pitch > assigned > draft > edit > final > publish), and any external events that week.

Followed by five summary sections:
1. **Deadline Cascade** — the production timeline for each issue, showing every stage deadline in calendar-date form
2. **Content Mix** — the ratio of news, features, investigations, evergreen, and recurring content across the full period
3. **Workload Distribution** — pieces per writer across the period, with peak load weeks flagged
4. **Pitch Pipeline** — which story ideas need to be developed now for future issues, so the editor can see what is in the queue beyond the current planning window
5. **Scheduling Risks** — weeks that are overloaded, under-planned, or dependent on a single writer, with mitigation suggestions

Additional sections when applicable:
6. **Photographer/Freelancer Booking Summary** — consolidated dates for external contractors who need advance notice
7. **Editor's Action Checklist** — time-sequenced list of decisions and bookings the editor must make in the first two weeks of the planning period

Total length: 800–1,500 words depending on the planning period. Plain editorial language throughout — readable by an editor who has never used a project management tool. Tables are used for the issue-by-issue calendar and for summary data; prose is used for risk assessments and editorial strategy notes.

## Quality Criteria
- [ ] Every week in the planning period has at least one content slot filled and at least one buffer or open slot identified
- [ ] Production stage deadlines are internally consistent — a piece cannot be in "edit" after its publish date
- [ ] External events are mapped to the correct calendar weeks and connected to specific planned content
- [ ] Workload distribution is explicit — each piece is assigned to a writer slot (by name, beat, or number) and no writer is silently overloaded
- [ ] The content mix includes at least three distinct content types (not all features, not all news)
- [ ] At least one scheduling risk or bottleneck is identified and flagged with a specific mitigation
- [ ] Buffer slots for breaking news are present and marked as movable
- [ ] Recurring content (columns, series, reviews) appears on a consistent schedule
- [ ] Hold-able vs. locked pieces are distinguished so the editor knows what can move
- [ ] The deadline cascade is internally consistent across overlapping production cycles
- [ ] Output is free of generic AI-template phrasing — no "delve into," "navigate the complexities of," Latinate filler verbs ("utilize," "facilitate," "leverage" where a plainer verb fits), restate-the-question intros, summary-of-the-summary closes, or em-dash overuse

## Example

### Input
Publication: A biweekly arts and culture magazine, print with a companion website. Six issues in the planning period.

Team: 4 writers (W1 covers film, W2 covers music, W3 covers visual arts and theatre, W4 is a generalist/features writer) plus 1 editor-in-chief who also copy-edits.

Beats: Film, music, visual arts, theatre, books, food/drink (occasional).

Planning period: 12 weeks, September 1 through November 23.

External events:
- Regional film festival (October 7–13)
- National book awards longlist announced September 18
- Major modern art retrospective opens October 25 at a city gallery
- Holiday book and gift guide needed for the November 23 issue

Recurring content:
- "The Opener" — a 400-word front-of-book opinion column, rotating between writers
- "Sound Check" — a music review slot, every issue
- "What We're Reading" — a 600-word books roundup, every issue

Existing commitments: A commissioned two-part profile of a theatre director, Part 1 to run in Issue 2 (September 29), Part 2 in Issue 3 (October 13).

Bottleneck: Photography. The magazine uses one freelance photographer who needs two weeks' notice for portrait shoots.

### Output

## Editorial Calendar: September–November

**Publication:** Biweekly arts and culture magazine (print + web)
**Period:** 12 weeks, 6 issues
**Team:** W1 (film), W2 (music), W3 (visual arts/theatre), W4 (generalist), Editor-in-chief

**Rhythm:** Biweekly print, 6 issues. The companion website publishes daily news briefs independently; this calendar covers print features and the three recurring slots only. Web-only content is not scheduled here unless a print piece has a web companion.

---

### Production Stages and Lead Times

Each piece moves through six stages. The standard lead time for a biweekly cycle is:

| Stage | Abbreviation | Lead time before publish |
|-------|-------------|--------------------------|
| Pitch approved | P | 4 weeks |
| Assigned + reporting | A | 3 weeks |
| Draft due | D | 10 days |
| Edit complete | E | 5 days |
| Final to layout | F | 3 days |
| Publish | PUB | Day 0 |

**Photography note:** Portrait and location shoots require booking the freelance photographer 2 weeks before the shoot date. Since shoots happen during the reporting phase, the photographer must be booked at least 4 weeks before publish. For Issue 1, that means bookings should already be confirmed before September 1.

**Overlap note:** On a biweekly cycle, Issue N is in layout while Issue N+1 is in draft. The editor is copy-editing two issues in parallel during the five days before each publish date. This overlap is manageable with four writers but tight when combined with fast-turnaround event coverage.

---

### Issue 1 — Publish September 15

**Event context:** No major events this issue. September album releases begin. The fall arts season is starting but no single event dominates.

**Editorial strategy:** Use this issue to set the season. The cover feature surveys the full September–November landscape, giving readers a reason to stay with the magazine through the quarter. Feature 2 is forward-looking — a filmmaker profile timed to generate interest before the October festival.

| Slot | Content | Writer | Stage (Sep 1) | Hold-able? | Notes |
|------|---------|--------|---------------|------------|-------|
| Cover feature | Fall arts season preview: what to see, hear, and read September through November | W4 | Draft due Sep 5 | No — time-sensitive; must run in the first fall issue | Anchors the issue. References the film festival, book awards, and retrospective. Establishes the season for readers and creates forward hooks for Issues 3, 4, and 6. |
| Feature 2 | Profile of an emerging filmmaker screening at the regional festival | W1 | Assigned, reporting | Yes — could move to Issue 3 as a festival companion | Photo shoot needed. Book photographer by Sep 1 at the latest. If the photographer is unavailable, consider a phone interview portrait or a supplied publicity still. |
| The Opener | Opinion: why arts coverage still matters in a shrinking local media landscape | W3 | Draft due Sep 5 | N/A — column | Tone-setter for the quarter. Should reference specific local closures or cutbacks, not abstract industry trends. |
| Sound Check | Review: pick from September album releases | W2 | Awaiting release | N/A — review | Draft due Sep 8. W2 should have the album shortlist by Aug 25. |
| What We're Reading | Books roundup — three fall titles | W4 | Assigned | N/A — recurring | Short turnaround; W4 handles since the cover feature draft is already filed. |
| Buffer slot | Open — hold for breaking arts news in the first two weeks of September | — | — | — | If unused by Sep 10, pull forward a short evergreen piece (a restaurant review or a gallery opening brief from W3) to fill the page. |

**Deadline cascade for Issue 1:**

| Date | Milestone |
|------|-----------|
| Aug 18 | Pitches approved for cover feature and Feature 2 |
| Aug 25 | W1 begins reporting on filmmaker profile; photographer booked |
| Sep 1 | W4 cover feature draft in progress; W1 photo shoot window opens |
| Sep 5 | Cover feature draft due; Opener draft due |
| Sep 8 | Sound Check draft due; What We're Reading draft due |
| Sep 10 | All drafts in edit; editor begins copy-edit pass |
| Sep 12 | Final copy to layout |
| Sep 15 | **Publish** |

---

### Issue 2 — Publish September 29

**Event context:** National book awards longlist announced September 18. This drives Feature 2 and The Opener.

**Editorial strategy:** The commissioned theatre director profile is the cover. The book awards longlist gives Feature 2 and the books roundup a strong hook, but the turnaround is tight — only 11 days from longlist to publish. Keep the awards reaction piece short (1,200 words max) and have W4 combine research for both the feature and the roundup.

| Slot | Content | Writer | Stage (Sep 1) | Hold-able? | Notes |
|------|---------|--------|---------------|------------|-------|
| Cover feature | **Theatre director profile, Part 1** (commissioned) | W3 | Assigned, reporting | No — pre-sold commitment | Contracted piece. Photo shoot needed. Book photographer by Sep 8 at the latest. W3 should have interview access confirmed by Sep 1. Two-part structure means Part 1 must stand alone as a complete read while leaving the narrative open for Part 2. |
| Feature 2 | National book awards longlist reaction — surprises, snubs, and what the list says about the year in publishing | W4 | Pitch approved | No — pegged to Sep 18 announcement | Longlist announced Sep 18. Draft due Sep 22. This is the tightest turnaround of the quarter: four days from announcement to draft. Keep the piece to 1,200 words. W4 should prepare a template and longlist context notes before Sep 18 so the writing time is spent on analysis, not background research. |
| The Opener | Opinion: the politics of prize lists | W2 | Pitch stage | N/A — column | Ties to the book awards. W2 writes the opinion column this issue while W1 is in pre-reporting mode for the film festival. W2 should pitch the specific angle by Sep 8 — "prize lists are political" is a starting point, not a column. |
| Sound Check | Review: album or live concert review | W2 | Awaiting event | N/A — review | W2 has both Sound Check and The Opener this issue. Manageable — Sound Check is a standard 500-word review, and The Opener is 400 words. Combined workload is under one feature's worth. |
| What We're Reading | Books roundup — longlist picks and fall reading | W4 | Will draft after longlist | N/A — recurring | Combines with Feature 2 reporting. W4 can draft both pieces from the same research session. |
| Buffer slot | Open | — | — | — | Film festival starts Oct 7. W1 is in pre-reporting mode: arranging interviews, reviewing the festival programme, confirming press accreditation. Do not assign W1 any additional work this issue. |

**Deadline cascade for Issue 2:**

| Date | Milestone |
|------|-----------|
| Sep 1 | W3 begins reporting on theatre director profile |
| Sep 8 | Photographer booked for W3 portrait shoot; W2 Opener angle pitched |
| Sep 15 | Issue 1 publishes; W3 profile draft due Sep 19 |
| Sep 18 | **Book awards longlist announced** — W4 begins awards reaction piece |
| Sep 19 | W3 Part 1 draft due |
| Sep 22 | W4 awards reaction draft due; What We're Reading draft due |
| Sep 23 | W2 Opener draft due; Sound Check draft due |
| Sep 24 | All drafts in edit |
| Sep 26 | Final copy to layout |
| Sep 29 | **Publish** |

**Production overlap:** Between Sep 15 and Sep 19, the editor is simultaneously closing Issue 1 (final layout corrections, press check) and receiving drafts for Issue 2. This is standard for a biweekly cycle but worth noting: the editor should not schedule meetings on Sep 16–17. The same overlap occurs between every pair of consecutive issues — the three days after each publish date are always double-loaded. On a biweekly cycle, the editor effectively has 11 single-focus days and 3 double-focus days per cycle. Planning around this pattern is more effective than treating it as an exception each time.

---

### Issue 3 — Publish October 13

**Event context:** Regional film festival runs October 7–13. Publish date falls on the festival's closing day.

**Editorial strategy:** This is the highest-pressure issue of the quarter. The cover is the commissioned Part 2 of the theatre profile (locked commitment). Feature 2 is the film festival dispatch, which must be filed mid-festival. The Opener can be a short festival-adjacent opinion from W1 since they are already on-site. The risk is concentrated: W1 and W3 are both on tight deadlines the same week, and the editor must fast-track editing for the festival piece.

| Slot | Content | Writer | Stage (Sep 1) | Hold-able? | Notes |
|------|---------|--------|---------------|------------|-------|
| Cover feature | **Theatre director profile, Part 2** (commissioned) | W3 | Not yet started | No — pre-sold commitment, Part 1 runs in Issue 2 | Part 1 must be finalised and approved before W3 begins Part 2. Earliest start date: Sep 25 (after Part 1 is in layout). Draft due Oct 3. If Part 1 edit runs long, Part 2 is at risk. |
| Feature 2 | Film festival dispatch — highlights, standout screenings, audience trends, one breakout title | W1 | Pre-reporting | No — pegged to Oct 7–13 festival dates | Festival runs Oct 7–13. Publish-week filing: W1 files draft Oct 8 (mid-festival, after the first weekend of screenings). Draft covers the first half of the programme. If a major story breaks in the festival's second half, W1 files a 300-word update by Oct 10 and the editor inserts it. |
| The Opener | Opinion: a festival-adjacent take (what audiences want vs. what programmers select, or similar) | W1 | Pitch stage | N/A — column | W1 can write a 400-word column from the festival without adding heavy workload. The angle should come from something W1 observes on-site, not from pre-reporting. Pitch by Oct 5; draft by Oct 9. |
| Sound Check | Review | W2 | Awaiting event | N/A — review | Standard slot. W2 has no feature this issue, so capacity is clear. |
| What We're Reading | Books roundup | W3 | Assigned | N/A — recurring | W3 picks up this slot while W4 rotates to heavier feature work in Issues 4 and 5. W3 should draft this before Oct 1, before the Part 2 deadline crunch begins. |
| Buffer slot | Open — likely consumed by additional festival coverage | — | — | — | If the festival produces a breakout story that exceeds the dispatch (a controversy, a surprise premiere, a major acquisition), this slot absorbs it. W4 is available as backup: W4 can attend a screening and file a 600-word companion piece if W1 is overloaded. |

**Deadline cascade for Issue 3:**

| Date | Milestone |
|------|-----------|
| Sep 25 | W3 begins Part 2 of theatre profile (after Part 1 is in layout for Issue 2) |
| Sep 29 | Issue 2 publishes |
| Oct 1 | W3 files What We're Reading draft (early, before Part 2 crunch) |
| Oct 3 | W3 Part 2 draft due |
| Oct 5 | W1 pitches Opener angle from festival prep |
| Oct 7 | **Film festival opens** — W1 on-site |
| Oct 8 | W1 files festival dispatch draft (mid-festival) |
| Oct 9 | W1 Opener draft due; editor begins fast-track edit of dispatch and Part 2 |
| Oct 10 | All drafts in edit; final copy to layout |
| Oct 13 | **Publish** / **Film festival closes** |

**Scheduling risk — Week of Oct 7:** This is the single highest-risk week of the quarter. W1 is filing from the festival and writing The Opener. W3 is finalising Part 2 of the theatre profile. The editor carries the full editing load for both pieces simultaneously, with only three working days before layout. Mitigation: pre-edit W3's Part 2 draft before Oct 7 if the draft comes in early; keep W4 on standby for a festival backup piece; the editor should block Oct 8–11 completely (no meetings, no admin, no web content).

---

### Issue 4 — Publish October 27

**Event context:** Major modern art retrospective opens October 25 at the city gallery. Press preview likely October 23–24.

**Editorial strategy:** Pressure drops after the festival issue. The retrospective gives W3 a strong cover feature with a clear press-preview window. Feature 2 is W1's post-festival analysis — this piece is evergreen-adjacent and can be held to Issue 5 if something more urgent surfaces. A recovery week for the editor after the Issue 3 crunch.

| Slot | Content | Writer | Stage (Sep 1) | Hold-able? | Notes |
|------|---------|--------|---------------|------------|-------|
| Cover feature | Modern art retrospective — review of the exhibition and interview with the lead curator | W3 | Pitch approved | No — pegged to Oct 25 opening | Exhibition opens Oct 25. Press preview likely Oct 23–24. W3 attends the press preview and files the review with a 48-hour turnaround. Photo shoot at the gallery during the press preview — book the photographer by Oct 10 at the latest. The review should cover both the exhibition itself and the curatorial argument: what the retrospective claims about the artist's legacy and whether the work on the walls supports that claim. |
| Feature 2 | Post-festival analysis: which films from the regional festival will find distribution, which will disappear | W1 | Pitch approved | Yes — can move to Issue 5 | Evergreen-adjacent. Based on W1's festival reporting and follow-up calls with distributors and sales agents. If a stronger timely piece appears (an award announcement, a controversy from the festival aftermath), swap this for Issue 5 and run the timely piece here. |
| The Opener | Opinion | W4 | Pitch stage | N/A — column | W4's turn. Subject open — could be food/drink adjacent (fall restaurant openings), a reflection on arts funding, or a personal essay. Pitch by Oct 13. |
| Sound Check | Review | W2 | Awaiting event | N/A — review | Standard slot. |
| What We're Reading | Books roundup | W4 | Assigned | N/A — recurring | W4 handles both the Opener and the roundup. Combined word count is 1,000 words — manageable in a week where W4 has no feature. |
| Buffer slot | Open | — | — | — | Calendar is lighter this issue. Good week to commission a short freelance piece or to run an evergreen feature that has been in the drawer. |

**Deadline cascade for Issue 4:**

| Date | Milestone |
|------|-----------|
| Oct 10 | Photographer booked for gallery press preview shoot |
| Oct 13 | Issue 3 publishes; W4 Opener angle pitched; W1 begins post-festival analysis |
| Oct 17 | W1 Feature 2 draft due |
| Oct 22 | W4 Opener draft due; What We're Reading draft due |
| Oct 23–24 | **Press preview** — W3 attends and photographs |
| Oct 24 | W3 cover feature draft due (48-hour turnaround from press preview) |
| Oct 24 | Sound Check draft due |
| Oct 25 | **Retrospective opens** — all drafts in edit |
| Oct 27 | **Publish** |

**Production note:** W3's cover feature has the tightest turnaround this issue: press preview Oct 23, draft due Oct 24. This works only if W3 has done background research on the artist and the exhibition's curatorial framing before the press preview. W3 should have a 500-word context draft (artist biography, previous exhibitions, critical reception) written by Oct 20, so the press preview day is spent on the review and interview, not on background.

---

### Issue 5 — Publish November 10

**Event context:** No major external events this issue. The calendar is entering the quieter pre-holiday stretch.

**Editorial strategy:** This is the issue to run the quarter's strongest evergreen feature. No event hook competing for the cover means W4 can write the long-form piece they have been reporting since early October. W2 gets a feature slot for the first time since Issue 1 — their choice of format. The lack of event pressure also makes this a good issue to experiment: try a longer Sound Check, or let W2 pitch a feature in a format they haven't used before (a scene report, a genre retrospective, an oral history of a local venue).

| Slot | Content | Writer | Stage (Sep 1) | Hold-able? | Notes |
|------|---------|--------|---------------|------------|-------|
| Cover feature | Long-form feature: the economics of independent bookshops in the age of streaming and online retail | W4 | Pitch approved | Yes — evergreen, can move to Issue 6 if needed | W4 should begin reporting in early October: interviews with three or four bookshop owners, a publisher, and a trade association representative. This piece benefits from lead time. Target word count: 2,500–3,000. No photo shoot required if the feature uses environmental shots — otherwise book photographer by Oct 25. |
| Feature 2 | Music feature — W2's choice of format | W2 | Pitch stage | Yes — evergreen | W2 has not carried a feature since the Sound Check and Opener rotation in earlier issues. This slot is specifically set aside for W2 to pitch a piece they are excited about. Options: an artist profile, a scene report on a local music community, a genre retrospective, or an oral history. W2 should pitch by Oct 13 so the editor can shape it before reporting begins. |
| The Opener | Opinion | W3 | Pitch stage | N/A — column | W3's turn. Could tie to the retrospective aftermath (visitor numbers, critical response) or pivot to a theatre topic ahead of the winter season. |
| Sound Check | Review | W2 | Awaiting event | N/A — review | W2 has both Feature 2 and Sound Check this issue. This is manageable if the feature draft is filed by Nov 1, giving W2 the first week of November for the review. If W2's feature runs long, the editor should consider giving the Sound Check review to W1 or W3 as a one-off. |
| What We're Reading | Books roundup — holiday reading list preview | W4 | Assigned | N/A — recurring | Seeds the full holiday book and gift guide in Issue 6. W4 should use this roundup to test which books will feature prominently in the guide — consider it a first draft of the guide's books section. |
| Buffer slot | Open | — | — | — | November tends to be quieter for breaking arts news. If the slot is unfilled by Oct 28, consider pulling forward an evergreen piece (W1's post-festival analysis if it was held from Issue 4, or a short food/drink piece). Filling buffer slots early in quiet weeks prevents a thin issue. |

**Deadline cascade for Issue 5:**

| Date | Milestone |
|------|-----------|
| Oct 13 | W2 pitches Feature 2 |
| Oct 20 | W2 Feature 2 assigned, reporting begins |
| Oct 27 | Issue 4 publishes |
| Oct 31 | W4 cover feature draft due; W3 Opener draft due |
| Nov 1 | W2 Feature 2 draft due |
| Nov 3 | What We're Reading draft due |
| Nov 5 | Sound Check draft due; all drafts in edit |
| Nov 7 | Final copy to layout |
| Nov 10 | **Publish** |

---

### Issue 6 — Publish November 23

**Event context:** Pre-holiday issue. The holiday book and gift guide is the centrepiece — this was identified as a requirement in the planning brief.

**Editorial strategy:** The gift guide is co-written (W4 + W2) to cover the full range of beats: books, art, music, food/drink. Feature 2 is a year-in-review preview, also co-written (W1 + W3), keeping the individual workload light since the gift guide is the priority. The Opener bookends the quarter: W1 writes an opinion on what defined the fall arts season, closing the arc started by Issue 1's season preview. This issue requires the most advance planning of any in the quarter because of the photo shoot (gift items need to be sourced, arranged, and photographed) and the co-writing coordination.

| Slot | Content | Writer | Stage (Sep 1) | Hold-able? | Notes |
|------|---------|--------|---------------|------------|-------|
| Cover feature | **Holiday book and gift guide** — curated picks across fiction, non-fiction, art books, vinyl, food/drink | W4 + W2 | Pitch approved | No — seasonal, must run in final pre-holiday issue | Co-written. W4 handles books (fiction, non-fiction, art books) and one or two art-adjacent gift picks. W2 handles music (vinyl, box sets, concert tickets) and food/drink (cookbooks, local producers, gift baskets). Each writer drafts their sections independently; the editor merges and writes transitions. Total word count: 2,000–2,500. Photo shoot of gift items — book the photographer by Nov 8. Items must be sourced and delivered to the shoot location by Nov 10. |
| Feature 2 | Year-in-review preview: the best art, film, music, and theatre of the year so far | W1 + W3 | Pitch stage | Yes — could become a web-only piece if the print issue is tight on pages | Co-written. W1 covers film and music; W3 covers visual arts and theatre. Lighter reporting load — primarily critical assessment and list-making. This piece can double as a web list feature if the print edition needs the pages for the gift guide spread. Each writer's section should be 500–600 words. |
| The Opener | Opinion: what defined the fall arts season | W1 | Pitch stage | N/A — column | Bookends with Issue 1's season preview. W1 can draw on their festival coverage, the retrospective, the book awards, and the theatre profiles to write a quarter-in-review opinion. Should not read as a summary — it should have a thesis. |
| Sound Check | Review: album of the year contender | W2 | Awaiting event | N/A — review | W2 is co-writing the gift guide and filing Sound Check. The review should be short (400 words) or based on an album W2 already knows well. Do not assign a new or obscure album that requires multiple listens. |
| What We're Reading | Books roundup — final recommendations of the year | W4 | Assigned | N/A — recurring | Natural companion to the gift guide. W4 can cross-reference: books featured in the roundup can be listed as gift guide picks with a "reviewed in this issue" tag. |
| Buffer slot | Open — but plan to fill early | — | — | — | This is the last issue before year-end. Fill this slot by Nov 3 rather than leaving it open. Options: a photo essay from the retrospective (no additional writing needed if W3 provides extended captions), a reader poll of the best arts events of the year (web-to-print crossover), or a short commissioned freelance piece. Do not risk a thin issue during holiday-week production slowdowns. |

**Deadline cascade for Issue 6:**

| Date | Milestone |
|------|-----------|
| Nov 1 | Gift guide items sourced; writers confirm their sections |
| Nov 3 | Buffer slot filled or assigned; year-in-review pitch finalised |
| Nov 8 | Photographer booked for gift guide shoot; W1 + W3 year-in-review sections drafted |
| Nov 10 | Issue 5 publishes; gift guide photo shoot |
| Nov 13 | W4 + W2 gift guide drafts due (independent sections); W1 Opener draft due |
| Nov 15 | Editor merges gift guide sections, writes transitions; all other drafts due |
| Nov 17 | Sound Check draft due; What We're Reading draft due |
| Nov 18 | All drafts in edit |
| Nov 20 | Final copy to layout |
| Nov 23 | **Publish** |

**Production risk — holiday timing:** The November 23 publish date means final layout work falls during the week of November 18–20. If writers or the editor plan holiday travel, the gift guide co-write must be final by November 15 — no exceptions. Build in one extra day of buffer on every draft deadline for this issue. The editor should confirm all team availability for Nov 18–20 by October 15 at the latest.

---

## Content Mix Summary

| Type | Count | Percentage | Notes |
|------|-------|------------|-------|
| Original features (profiles, long-form, analysis, reviews) | 12 | 40% | Includes 2 commissioned pieces (theatre profile) and 2 co-written pieces |
| Recurring columns (Opener, Sound Check, What We're Reading) | 18 | 47% | 6 issues x 3 slots |
| Buffer/open slots | 6 | 13% | 1 per issue; at least 2 should convert to content |

**Mix assessment:** The ratio leans toward recurring content, which is appropriate for a biweekly with a four-person writing team and a single editor. Feature count averages two per issue — sustainable given the team size and the production bottleneck at photography.

If the editor wants more features, the buffer slots are the first place to convert, but this removes the safety net for breaking news. A better option: commission one freelance feature per month (Issues 2, 4, or 6) to supplement the staff output without overloading the team.

**Content type breakdown across 12 features:**

| Feature type | Count | Issues |
|-------------|-------|--------|
| Event-driven coverage (festival dispatch, awards reaction, retrospective review) | 4 | 2, 3, 4 |
| Commissioned profiles | 2 | 2, 3 |
| Evergreen long-form features | 3 | 1, 4, 5 |
| Seasonal/service content (gift guide, season preview, year-in-review) | 3 | 1, 6 |

**Seasonal rhythm:** The quarter has a natural arc. Issues 1–2 are scene-setting (season preview, awards reaction). Issues 3–4 are event-heavy (festival, retrospective). Issues 5–6 are reflective and service-oriented (evergreen features, gift guide, year-in-review). This arc gives the quarter a narrative shape that readers can follow, and it distributes the production pressure unevenly: the middle of the quarter (Issues 3–4) is the hardest, the beginning and end are more manageable. The editor should use the lighter Issues 1 and 5 to get ahead on future planning.

---

## Workload Distribution

| Writer | Features | Co-writes | Recurring slots | Total pieces (12 weeks) | Average per issue | Peak load week |
|--------|----------|-----------|-----------------|--------------------------|-------------------|----------------|
| W1 (film) | 2 | 1 (year-in-review) | 3 (Opener x3) | 6 | 1.0 | Oct 7–13: festival dispatch + Opener, filed on-site |
| W2 (music) | 1 | 1 (gift guide) | 7 (Sound Check x6, Opener x1) | 9 | 1.5 | Nov 10–23: gift guide co-write + Sound Check + feature draft |
| W3 (visual arts/theatre) | 3 | 1 (year-in-review) | 3 (Opener x2, What We're Reading x1) | 7 | 1.2 | Oct 7–13: theatre profile Part 2 finalisation |
| W4 (generalist) | 2 | 1 (gift guide) | 5 (What We're Reading x4, Opener x1) | 8 | 1.3 | Nov 13–23: gift guide co-write + What We're Reading + cover feature close |

**Distribution assessment:** The workload is reasonably balanced. W2 carries the highest piece count (9) but most are short recurring reviews. W1 has the lowest total (6) but the most concentrated pressure in a single week (Oct 7–13).

Watch points:
- W4 carries the most sustained pressure across November (Issues 5 and 6 back-to-back) with the bookshop feature and the gift guide overlapping. The editor should check in with W4 by Oct 20 to confirm both pieces are on track.
- W2 has the lightest feature load but the most recurring obligations. If W2 wants more feature work in future quarters, shift one Sound Check review per quarter to W1 or W3 on a trial basis.
- The editor-in-chief is a single point of failure for all copy-editing. If the editor is ill during the Oct 7–13 window or the Nov 18–20 window, production stops. Consider training W4 as a backup copy editor or engaging a freelance copy editor for the two highest-risk weeks.

---

## Pitch Pipeline

Stories that should be in development now for the quarter after November:

| Working title | Beat | Writer | Status | Target issue |
|---------------|------|--------|--------|-------------|
| Winter theatre season preview | Theatre | W3 | Not yet pitched | December issue |
| "Best of the year" — full annual wrap-up | All beats | W1 + W3 + W4 | Concept only | December or January issue |
| Profile: the gallery curator from the retrospective (deeper dive) | Visual arts | W3 | Contact established during Oct press preview | January issue |
| Music venue under threat — investigative feature on lease disputes | Music | W2 | Tip received, unverified | February issue (needs 6–8 weeks of reporting) |
| Independent bookshop follow-up: reader response and bookshop owner reactions | Books | W4 | Depends on Issue 5 reader response | January or February issue |

**Pipeline note:** The pitch pipeline is thin. Four of the five items are speculative — no reporting has started. By October 15, the editor should hold a 30-minute pitching session where each writer proposes two story ideas for December–February. Require each pitch to include: the core question, the first three sources the writer would contact, and a realistic word count. This prevents the January planning cycle from starting cold and ensures the December issue has at least two features in active development by November 1.

**Freelance pipeline:** If the editor wants to supplement staff output, identify two freelance writers by September 15 and brief them on house style, word count expectations, and the three recurring slot formats. Having briefed freelancers on standby solves two problems: W4 overload insurance and buffer slot fill material.

---

## Scheduling Risks

**1. Week of October 7–13 (Issue 3) — HIGHEST RISK**

W1 files from the film festival on deadline. W3 finalises the commissioned theatre profile. The editor carries the full editing load for both pieces simultaneously, with only three working days before layout.

*Mitigation:* Pre-edit W3's Part 2 draft before Oct 7 if the draft comes in early. Keep W4 on standby as a backup festival reporter. The editor should block Oct 8–11 completely — no meetings, no admin, no web content review.

**2. Photography bottleneck — STRUCTURAL RISK**

Four issues require portrait or location shoots (Issues 1, 2, 4, 6). The freelance photographer needs two weeks' notice. One missed booking cascades into a cover feature without its lead image.

*Mitigation:* The editor should confirm all four shoot dates and brief the photographer on all four assignments by September 8. If any shoot must be rescheduled, the fallback is: (a) use a supplied publicity photo, (b) commission a different freelance photographer, or (c) swap the cover feature for a piece that does not require a shoot.

**3. Issue 6 production over the holidays — TIMING RISK**

The November 23 publish date means final layout falls November 18–20. Holiday travel plans could leave the team short-handed during the most production-intensive days.

*Mitigation:* Confirm all team availability for Nov 18–20 by October 15. Move all Issue 6 draft deadlines one day earlier than standard. The gift guide photo shoot must happen by Nov 10 — no flexibility.

**4. W4 concentration risk — PERSONNEL RISK**

W4 writes or co-writes 8 pieces across 12 weeks, including the two heaviest production items (bookshop feature and gift guide). If W4 is ill or unavailable for one week in November, at least two pieces are affected.

*Mitigation:* Identify one freelance writer who can cover the books roundup on 48 hours' notice. Brief them on the format and word count by Oct 1 so they can step in without ramp-up. If W4 flags capacity concerns by mid-October, move the bookshop feature to Issue 6 and give Issue 5's cover slot to W1's post-festival analysis (currently Feature 2 in Issue 4).

**5. Commissioned profile dependency — EDITORIAL RISK**

The theatre director profile is a two-part series locked into Issues 2 and 3. If Part 1 runs long in edit and is not finalised before Sept 25, Part 2 cannot begin on schedule. A delay to Part 1 cascades into Part 2, which cascades into Issue 3's production during the festival week.

*Mitigation:* W3 should file the Part 1 draft by Sep 17 (two days earlier than the standard deadline) to build a buffer. The editor should prioritise Part 1 copy-editing over all other Issue 2 work.

---

## Photographer Booking Summary

A consolidated view of all shoots requiring the freelance photographer:

| Issue | Shoot subject | Latest booking date | Shoot window | Notes |
|-------|-------------|--------------------|--------------|----|
| Issue 1 (Sep 15) | Emerging filmmaker portrait | Sep 1 (already due) | Sep 1–8 | Confirm immediately |
| Issue 2 (Sep 29) | Theatre director portrait | Sep 8 | Sep 12–18 | W3 should coordinate interview and shoot on the same day if possible |
| Issue 4 (Oct 27) | Gallery/retrospective | Oct 10 | Oct 23–24 (press preview) | Venue access required; confirm press credentials |
| Issue 6 (Nov 23) | Gift guide product shoot | Nov 8 | Nov 10–12 | Items must be sourced and delivered to shoot location by Nov 10 |

---

## How To Use This Calendar

This calendar is a starting plan, not a production order. The editor should:

1. **Print it or paste it into a shared document** that the whole team can see and comment on. A calendar that lives in one person's inbox is a calendar nobody follows.
2. **Review it in the first editorial meeting** of the quarter. Walk through each issue in order. Ask each writer: do you see any problems with your assignments? Can you meet the deadlines? Any sources or access you need that are not confirmed?
3. **Update it weekly.** Move pieces that slip. Fill buffer slots as they are claimed. Mark completed stages. The calendar should reflect reality at all times, not the original plan.
4. **Flag deviations early.** If a draft is going to miss its deadline by more than two days, the editor should know immediately — not on the day it was due. This calendar's value is in making deadlines visible so that problems surface while they are still fixable.

---

## Editor's Action Checklist — First Two Weeks

Actions the editor should complete by September 14 (before Issue 1 goes to press) to set the quarter up for success:

**By September 1:**
- [ ] Confirm photographer booking for Issue 1 filmmaker portrait shoot
- [ ] Confirm W3 has interview access to the theatre director for the commissioned profile
- [ ] Confirm W1 has press accreditation for the October film festival
- [ ] Brief W4 on the fall season preview scope: which events to include, target word count, tone

**By September 8:**
- [ ] Book photographer for Issue 2 theatre director portrait shoot
- [ ] Receive W2's Opener pitch for Issue 2 (prize list opinion angle)
- [ ] Confirm all four photographer shoot dates and brief the photographer on all assignments through November
- [ ] Send W4 the book awards longlist context: previous years' lists, expected publishers, key omissions to watch for

**By September 14:**
- [ ] Issue 1 in final layout — no outstanding edits
- [ ] W3's theatre director Part 1 draft in progress (check status)
- [ ] Identify two freelance writers for standby assignments (books roundup backup and buffer slot fill)
- [ ] Begin planning the gift guide item sourcing: contact publishers, record labels, and local producers for review copies and product samples

**By October 15:**
- [ ] Hold pitching session: each writer proposes two story ideas for December–February
- [ ] Confirm all team availability for November 18–20 (Issue 6 production window)
- [ ] Review W4 workload for November — confirm both the bookshop feature and the gift guide are on track
- [ ] Book photographer for Issue 6 gift guide product shoot

---

## Known Limitations
- This skill builds the calendar from the information you provide about your team, beats, and events. It does not have access to real-world event databases, award announcement dates, or cultural calendars — verify all external event dates independently before building your production schedule around them.
- Workload estimates assume each writer is full-time on this publication. For teams where writers split time between multiple outlets or have non-editorial responsibilities (teaching, freelancing elsewhere, administrative duties), the capacity calculations will be too optimistic. Provide a note about each writer's actual availability for more accurate distribution.
- The calendar does not account for advertising adjacency, page budgets, or physical layout constraints in print publications. A production manager or art director should review the plan against the actual page count before it becomes the working schedule.
- For daily or high-frequency digital publications, the issue-by-issue calendar format becomes too coarse. This skill works best for publications on a weekly, biweekly, or monthly cycle. Daily publications need a different planning instrument — a rolling assignment board rather than a fixed calendar.
- The calendar cannot predict breaking news, staff illness, or source availability problems. It provides a plan and identifies where the plan is fragile, but it cannot prevent disruptions. Treat the calendar as a starting framework that the editor updates weekly, not as a fixed contract.
- Content recommendations (working titles, story angles, content types) are generic suggestions based on the beats and events you describe. They are starting points for editorial discussion, not finished story ideas. Run story-angle-finder on any topic that needs deeper development before assigning it.

## Related Skills
- [story-angle-finder](../story-angle-finder/SKILL.md)
- [headline-generator](../headline-generator/SKILL.md)
- [research-brief-creator](../research-brief-creator/SKILL.md)

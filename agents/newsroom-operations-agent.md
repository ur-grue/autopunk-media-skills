---
name: newsroom-operations-agent
type: agent
status: stable
version: 1.0
eval_score: 4.52
maxTurns: 25
allowedTools:
  - Read
  - Write
  - Edit
  - Glob
  - Grep
disallowedTools: []
skills:
  - newsroom-ai-policy
  - editorial-calendar-planner
  - beat-setup-guide
  - ethics-review-checklist
  - content-arc-planner
roles: [editor, managing-editor, news-director]
tags: [newsroom, operations, planning, policy, editorial-management, agent]
---

# Newsroom Operations Agent

## What this agent does
Takes a newsroom description and produces a complete operational infrastructure package — AI usage policy, beat setup guides for every coverage area, an editorial calendar, longer-term content arcs, and a reusable ethics review template — everything a newsroom needs to run well from day one.

## When to use this agent
- You are launching a new publication and need operational infrastructure before the first story ships — policies, calendar, beat definitions, ethics protocols
- Your newsroom is introducing AI tools for the first time and needs a policy document that connects to everything else: which beats use AI, what the calendar looks like with AI-assisted workflows, what the ethics gates are
- A new editor-in-chief or managing editor is taking over and wants to establish or overhaul the operational framework in one pass rather than building it piecemeal across months
- Your newsroom has grown from a scrappy startup into something that needs actual systems — beat assignments have been informal, the editorial calendar lives in someone's head, and there is no written ethics protocol
- You are restructuring coverage areas (adding beats, merging desks, cutting staff) and need to rebuild the operational documents around the new structure

## What you need to provide
**Required:**
- Newsroom description: number of editorial staff, their roles (reporters, editors, copy editors, photographers, etc.), and how they are organized
- Coverage areas (beats): what the newsroom covers and how many people are assigned to each area
- Publication type and frequency: daily newspaper, weekly magazine, digital-only, newsletter, broadcast — and how often you publish
- Editorial values or principles the newsroom follows, even informally (accuracy-first, accountability journalism, community-focused, investigative-driven, etc.)

**Optional:**
- AI tools already in use or under consideration (transcription services, research assistants, drafting tools, etc.)
- Any existing policies, calendars, or beat documents you want to replace or build from
- Known seasonal peaks, recurring events, or fixed dates that anchor the editorial year (election cycles, budget season, awards coverage, annual reports, etc.)
- Freelancer and contributor model — whether the policy and calendar need to cover non-staff writers
- Union or regulatory constraints that affect AI policy or work assignments
- Target audience description — affects beat priorities and calendar balance
- The name and title of the person who will own these documents
- Any recent incidents that motivated the operational overhaul (an AI-related error, a missed story because beat assignments were unclear, a published piece that raised ethics concerns)

## Skills this agent composes

| Step | Skill | What it produces | Condition |
|------|-------|-----------------|-----------|
| 1 | [newsroom-ai-policy](../skills/magazine-journalism/editing/newsroom-ai-policy/SKILL.md) | Complete AI usage policy: permitted uses, prohibited uses, disclosure requirements, quality gates, training plan, accountability structure, and review cadence | Always — sets the rules that govern everything else |
| 2 | [beat-setup-guide](../skills/magazine-journalism/ideation/beat-setup-guide/SKILL.md) | A setup guide for each coverage area: beat definition, source development plan, recurring story types, competitive landscape, and AI usage specific to that beat | Always — one guide per beat |
| 3 | [editorial-calendar-planner](../skills/magazine-journalism/ideation/editorial-calendar-planner/SKILL.md) | Structured editorial calendar: content mapped across weeks or months, production stage tracking, workload distribution, and external event alignment | Always |
| 4 | [content-arc-planner](../skills/newsletter/strategy/content-arc-planner/SKILL.md) | Longer-term content arcs and series: multi-week or multi-month editorial threads that build depth across individual stories | Skipped if the newsroom publishes only daily breaking news with no planned series or thematic coverage |
| 5 | [ethics-review-checklist](../skills/magazine-journalism/editing/ethics-review-checklist/SKILL.md) | Reusable ethics review template: a checklist editors apply to stories before publication, covering sourcing, conflicts, harm, fairness, privacy, and AI disclosure | Always |

## How the agent works

### PLANNING mode

When the agent receives the newsroom brief, it:
1. Reads the brief and maps the newsroom profile — size, beats, frequency, editorial values, current state of operational infrastructure
2. Determines which of the five skills to invoke and in what order. The order matters: the AI policy sets rules that the beat guides must reference, the beat guides define coverage areas that the calendar must schedule, and the ethics template must align with both the AI policy and the beat-level decisions
3. Assesses whether content-arc-planner applies — a daily newspaper focused on breaking news may not plan multi-week arcs, while a weekly or monthly publication almost certainly does
4. Flags any information gaps that will weaken specific steps — missing beat descriptions will produce generic guides, absent editorial values will force the AI policy to default to industry-standard positions rather than publication-specific ones
5. Presents a numbered plan for approval

The plan output looks like this:
```
NEWSROOM OPERATIONS PLAN for [publication name or description]

Newsroom profile: [size, structure, publication type]
Beats: [list of coverage areas with staffing]
Frequency: [daily / weekly / etc.]
Editorial values: [stated values or "not specified — will use
  industry-standard editorial principles"]

Step 1: newsroom-ai-policy — Generate the AI usage policy.
        Tailored to [N] editorial staff covering [beats]. Will address
        [specific AI tools if named] and set disclosure, quality gate,
        and accountability rules.

Step 2: beat-setup-guide — Generate [N] beat setup guides, one per
        coverage area: [list beats]. Each guide will reference the AI
        policy from Step 1 for beat-specific AI usage rules.

Step 3: editorial-calendar-planner — Build an editorial calendar for
        [time period]. Will distribute workload across [N] reporters
        covering [N] beats at [frequency] publication cadence.
        [Known seasonal anchors if provided.]

Step 4: content-arc-planner — Plan [N] longer-term content arcs
        across beats.
        [INCLUDED / SKIPPED: daily breaking-news-only operation
        with no planned series]

Step 5: ethics-review-checklist — Generate the ethics review template.
        Will align with the AI policy (Step 1) and incorporate
        beat-specific considerations from Step 2.

Gaps that may affect output quality:
- [any missing inputs flagged here]

Estimated output: A complete operations package containing [list of
deliverables] assembled as a single editorial document.

Approve this plan? (yes / adjust / skip steps)
```

### EXECUTION mode

After the user approves the plan, the agent:

1. Runs newsroom-ai-policy first. This step produces the foundational rules document: where AI is permitted (transcription, background research, headline drafts), where it is prohibited (direct-to-publish prose without human editing, source communication, editorial judgment calls), what disclosure is required for readers and sources, what quality gates apply (human review before publication, fact-check requirements for AI-assisted research), who is accountable, how staff are trained, and when the policy is reviewed. The user reviews the policy before the agent continues — every subsequent step references it.

2. Runs beat-setup-guide for each coverage area. Each guide defines the beat's scope and boundaries, identifies the core source categories to develop (officials, advocates, affected communities, subject-matter experts), lists the recurring story types the beat should produce (accountability reports, profiles, data analyses, event coverage), maps the competitive landscape (what other outlets cover this beat and where the publication can differentiate), and specifies how the AI policy applies to this particular beat. A courts reporter covering sensitive proceedings has different AI rules than a business reporter summarizing quarterly earnings.

3. Runs editorial-calendar-planner using the beat guides and the newsroom's staffing and frequency. Produces a calendar spanning the requested period (default: one quarter) with content mapped across weeks, production stages tracked (pitch, assign, report, draft, edit, publish), workload distributed across reporters, and external events aligned to coverage windows. The calendar reflects the beat structure from step 2 — each reporter's capacity is accounted for, and the balance between beats is visible at a glance.

4. If included, runs content-arc-planner to identify and map longer-term editorial threads. These are multi-week or multi-month series that build depth across individual stories — an accountability arc tracking a policy decision from proposal through implementation, a seasonal arc covering budget season from initial hearings to final vote, or a thematic arc exploring a community issue from multiple angles. Each arc is assigned to a beat, given a timeline, and fitted into the editorial calendar from step 3.

5. Runs ethics-review-checklist as the final step. Produces a reusable template that editors apply before publication. The checklist covers sourcing standards (minimum number of sources, requirement for response from subjects), conflict-of-interest disclosure, potential harm assessment, fairness and balance, privacy considerations (naming minors, identifying crime victims, publishing addresses), AI disclosure requirements (aligned with the policy from step 1), and correction protocols. The template is designed to be printed, pinned to a wall, or embedded in a CMS workflow.

The user can interrupt between any steps to adjust direction. If the AI policy review surfaces a newsroom value that changes how beats should be structured, the agent adjusts the remaining steps accordingly.

## Output format

A single assembled document titled **NEWSROOM OPERATIONS PACKAGE: [Publication Name or Description]**, containing:

1. **Operations summary** (150-200 words) — what the package contains, which steps were run, how many beat guides were produced, the calendar period covered, and any flags for the editor's attention. Written for a managing editor who needs to know what they are holding before reading the full document.
2. **AI usage policy** — the complete policy document from step 1, structured with numbered sections for easy reference in staff meetings and onboarding.
3. **Beat setup guides** — one guide per coverage area from step 2, each following the same structure so reporters can compare across beats. Guides are ordered by the beat's staffing priority (most reporters first).
4. **Editorial calendar** — the structured calendar from step 3, formatted as a table or week-by-week breakdown with production stages, beat assignments, and event alignment.
5. **Content arcs** — if included: the planned multi-week series from step 4, each mapped to a beat, a timeline, and a position in the editorial calendar.
6. **Ethics review template** — the reusable checklist from step 5, formatted for practical use (checkboxes, clear yes/no questions, space for editor sign-off).
7. **Implementation checklist** — a closing section with concrete steps to put the package into practice: circulate the AI policy and hold a staff meeting, assign beat guide review to each reporter, load the editorial calendar into the newsroom's planning tool, identify the first content arc to launch, pin the ethics template to the CMS or print copies for the newsdesk.

Total length: 4,000-8,000 words depending on the number of beats and the calendar period. Tone is operational and direct — written for editors and managers who need working documents, not strategic memos.

## Quality criteria
- [ ] Each skill output meets its own quality standard independently
- [ ] The assembled package reads as a coherent operations manual, not five separate documents
- [ ] The AI policy is specific to this newsroom's size, beats, and values — not a generic industry template with the publication name dropped in
- [ ] Beat setup guides reference the AI policy where relevant — each guide specifies what AI use looks like on that particular beat
- [ ] The editorial calendar reflects the staffing and beat structure described in the beat guides — reporter assignments match, workload is balanced, and no reporter is double-booked
- [ ] Content arcs (if included) are fitted into the editorial calendar with specific start and end dates, not floating independently
- [ ] The ethics review template aligns with the AI policy — AI disclosure questions in the template match the disclosure rules in the policy
- [ ] The ethics template is practical: yes/no questions and checkboxes, not paragraphs of guidance that no one will read under deadline pressure
- [ ] Steps were correctly included or skipped based on the conditions in the skills table
- [ ] The agent stayed within its declared skills array — no undeclared skill invocations
- [ ] Cross-references between sections are consistent — beat names, reporter counts, policy section numbers, and calendar dates match across all documents
- [ ] Output is free of generic AI-template phrasing — no "in today's rapidly evolving media landscape," "leverage AI tools," "foster a culture of innovation," "best practices," "stakeholders"
- [ ] The implementation checklist gives specific, sequenced action items — not generic advice about "rolling out the new processes"
- [ ] The package accounts for the newsroom's actual capacity — a six-person newsroom does not get an operations package designed for a 50-person operation

## Example

### Brief (user input)

We are a digital-first local news outlet with 6 reporters. Coverage beats: city government (2 reporters), education (1 reporter), local business (1 reporter), arts and culture (1 reporter), and general assignment/breaking news (1 reporter). We have an editor-in-chief and 1 copy editor — 8 editorial staff total. We publish daily, Monday through Friday. We are about to start using AI tools (mainly for transcription and research assistance) and need everything set up from scratch — policy, beat structures, calendar, the works. We care about accuracy, accountability, and being the record of our community. No existing policies or documents to build from.

### Plan (PLANNING mode output)

```
NEWSROOM OPERATIONS PLAN for digital-first local news outlet

Newsroom profile: 8 editorial staff (6 reporters, 1 editor-in-chief,
  1 copy editor). Digital-first, no print edition.
Beats: city government (2), education (1), local business (1),
  arts & culture (1), general assignment/breaking (1)
Frequency: Daily, Monday-Friday
Editorial values: Accuracy, accountability, community record

Step 1: newsroom-ai-policy — Generate the AI usage policy for an
        8-person newsroom introducing AI tools for the first time.
        Will address transcription and research assistance specifically,
        and set rules appropriate for a local outlet where trust with
        the community is the core asset.

Step 2: beat-setup-guide — Generate 5 beat setup guides:
        city government, education, local business, arts & culture,
        and general assignment/breaking news. Each guide will be
        calibrated for the reporter count on that beat — city
        government has depth (2 reporters), the others are solo beats
        requiring triage.

Step 3: editorial-calendar-planner — Build a 12-week editorial
        calendar for a daily M-F operation with 6 reporters across
        5 beats. Will account for the general assignment reporter's
        dual role as breaking news coverage and fill-in on other beats.

Step 4: content-arc-planner — Plan 3-4 content arcs across the
        12-week period. INCLUDED — even a daily local outlet benefits
        from planned series (e.g., a multi-part look at the city
        budget process, a back-to-school education series).

Step 5: ethics-review-checklist — Generate the ethics review
        template. Will emphasize community-specific considerations:
        naming in crime stories, covering local officials the
        reporters know personally, small-town conflicts of interest.

Gaps that may affect output quality:
- No specific AI tools named beyond "transcription and research
  assistance" — policy will cover common tool categories but cannot
  address product-specific features or limitations.
- No seasonal anchors provided — calendar will use standard local
  news cycles (budget season, school year, election cycles) as
  defaults. Flag any publication-specific dates.

Estimated output: A five-section operations package (AI policy,
5 beat guides, 12-week calendar, 3-4 content arcs, ethics
template) plus an implementation checklist.

Approve this plan? (yes / adjust / skip steps)
```

### Deliverable (EXECUTION mode output)

---

**NEWSROOM OPERATIONS PACKAGE: Digital-First Local News Outlet**

---

**Operations Summary**

This package provides the operational infrastructure for an 8-person digital-first local newsroom publishing daily, Monday through Friday. All five steps were run. The package contains: an AI usage policy tailored to a small newsroom introducing AI tools for the first time; five beat setup guides covering city government, education, local business, arts and culture, and general assignment/breaking news; a 12-week editorial calendar distributing workload across six reporters; three content arcs mapped to specific beats and calendar windows; and an ethics review template built for the realities of local journalism — where sources are neighbors and conflicts of interest are personal, not abstract. One flag: the calendar assumes no planned vacations or leave. The editor-in-chief should adjust the calendar against each reporter's actual availability before distributing it.

---

#### 1. AI Usage Policy

**AI USAGE POLICY — [Publication Name]**
*Effective date: [date] | Policy owner: Editor-in-Chief | Review: Every 6 months*

**1. Purpose**

This policy governs how editorial staff use artificial intelligence tools in their reporting, editing, and production work. It exists to protect the accuracy of our journalism, the trust of our readers, and the professional standards of our newsroom. AI tools are permitted where they save time on mechanical tasks. They are not permitted where they replace editorial judgment.

**2. Permitted Uses**

The following uses are approved for all editorial staff without prior editor approval:

- **Transcription:** Using AI transcription tools (Otter, Rev, or equivalent) to convert recorded interviews into text. Staff must review transcriptions against the original audio before quoting. AI transcription is a first draft, not a final record.
- **Background research:** Using AI tools to summarize public documents, identify relevant prior coverage, locate statistical data, or generate background briefings on unfamiliar topics. All facts surfaced by AI research must be verified against primary sources before use in any published piece.
- **Headline and social media drafts:** Using AI to generate draft headlines, social media posts, or newsletter subject lines. All drafts must be reviewed and edited by the reporter or editor before publication. AI-generated text that is published without human editing violates this policy.
- **Copy editing assistance:** Using AI grammar and style tools to flag errors. The copy editor retains final authority on all style and grammar decisions.

**3. Prohibited Uses**

The following uses are not permitted under any circumstances:

- **Direct-to-publish text:** No AI-generated text may be published without human review and substantive editing. "Substantive" means the reporter or editor has verified the facts, rewritten the prose in their own voice, and takes personal responsibility for every sentence.
- **Source communication:** AI tools may not be used to draft or send emails, messages, or other communications to sources, officials, or members of the public on behalf of the newsroom. Source relationships are human relationships.
- **Editorial judgment:** AI tools may not be used to decide what to cover, which sources to contact, how to frame a story, or what angle to pursue. These decisions belong to reporters and editors.
- **Fabrication of any kind:** AI-generated quotes, statistics, events, or details may never appear in published work, even as placeholders. If it did not happen, we do not publish it.

**4. Disclosure**

- **To readers:** Any published piece that used AI tools in a substantive way — beyond spell-check or basic transcription — must include a disclosure note. The standard disclosure is: *"[Tool name] was used for [specific task, e.g., transcription of interview audio]. All facts were independently verified."* The editor-in-chief approves the disclosure language for each case.
- **To sources:** If an interview is being transcribed by AI in real time, the reporter must inform the source at the start of the conversation.

**5. Quality Gates**

- Every piece that involved AI assistance passes through the standard editing process. AI involvement does not shorten the editorial pipeline — it may speed up individual steps, but every gate (reporter self-edit, copy edit, editor review) remains in place.
- AI-assisted research must be cited to the primary source it pointed to, not to the AI tool. If the AI summary says "the city budget increased 12% in 2025," the reporter must find the budget document and cite it directly.

**6. Training**

- All editorial staff will receive a 90-minute orientation on this policy within 30 days of its effective date. The orientation will cover permitted and prohibited uses, demonstration of approved tools, and a Q&A session.
- New hires receive the policy orientation during their first week.

**7. Accountability**

- Violations of the prohibited uses (sections 3 and 4) are treated as editorial misconduct. The editor-in-chief determines the response, which may include a published correction, retraining, or disciplinary action.
- If a staff member is unsure whether a use case is permitted, they ask the editor-in-chief before proceeding. When in doubt, do not use the tool.

**8. Review Cadence**

- This policy is reviewed every six months by the editor-in-chief. Revisions are circulated to all staff with a summary of what changed and why. AI technology moves faster than newsroom policy — the six-month review ensures the policy stays relevant without requiring constant updates.

---

#### 2. Beat Setup Guides

**BEAT: City Government (2 reporters)**

**Scope and Boundaries**
This beat covers the city council, mayor's office, city departments (planning, public works, parks, police, fire), city budget and finances, municipal elections, and zoning/development decisions. It does not cover county or state government unless a decision directly affects the city. It does not cover courts (those fall to general assignment unless a case involves a city official).

**Source Development Plan**
- *Officials:* City council members (all seats), mayor's office staff, department heads (planning, public works, police chief, fire chief), city clerk, city attorney
- *Institutional:* City budget office, planning commission, zoning board, parks advisory board
- *Community:* Neighborhood association leaders, frequent public-comment speakers, residents affected by major development projects
- *Watchdog:* Local advocacy groups (housing, environmental, transparency), local chapter of the League of Women Voters if active
- *Expert:* Municipal finance professors or analysts at regional universities, urban planning researchers

**Recurring Story Types**
- Council meeting coverage (every session — assign between the two reporters on rotation)
- Budget cycle coverage: annual process from department requests through public hearings to final vote (a natural content arc — see Section 5)
- Development and zoning decisions: each major application from filing through approval or denial
- Accountability reporting: follow up on promises made, deadlines set, projects funded — did they happen?
- Quarterly city financial reports: translate the numbers for readers

**AI Usage on This Beat**
Per the AI policy: transcription of council meetings and official interviews is permitted and encouraged — council meetings run long, and accurate transcription is the foundation of good coverage. AI research tools may be used to summarize city budget documents and compare year-over-year figures. AI must not be used to draft stories about official proceedings without substantive human rewriting. Council coverage carries the highest accuracy stakes in the newsroom; errors undermine credibility with officials and the public simultaneously.

**Competitive Landscape**
If local TV covers the council, their reports are typically 90-second summaries. Your advantage is depth, follow-up, and document work. If a regional paper also covers the city, differentiate by owning the beat between meetings — the decisions that happen in departments, not just in public sessions.

---

**BEAT: Education (1 reporter)**

**Scope and Boundaries**
Covers the local school district (school board, superintendent, schools), higher education if a college or university operates in the coverage area, early childhood programs, and education policy decisions at the state level that directly affect local schools. Does not cover national education debates unless they produce local consequences.

**Source Development Plan**
- *Officials:* School board members, superintendent, principals at each school, district communications director
- *Institutional:* PTA/PTO leadership at each school, teachers' union representative
- *Community:* Parents (diverse across schools and demographics), students (high school age — with parental consent protocols)
- *Expert:* Education researchers at regional universities, state education department staff

**Recurring Story Types**
- School board meeting coverage (rotation with general assignment if the reporter needs relief)
- Back-to-school and end-of-year features: enrollment numbers, new programs, staffing changes
- Test scores and performance data: annual release, placed in multi-year context
- School budget coverage: district budget process, bond measures, state funding formulas
- Features on individual schools, programs, or teachers — show what education looks like in practice, not just in policy

**AI Usage on This Beat**
Per the AI policy: transcription of school board meetings and interviews is permitted. AI research tools may be used to summarize state education data, compare district performance metrics, and compile background on education legislation. Special caution: any story involving minors requires heightened editorial review. AI tools must not be used to process, store, or analyze any information about individual students.

**Competitive Landscape**
Education is often under-covered by local outlets. A dedicated reporter with developed sources will quickly become the primary information source for parents, teachers, and administrators in the community. Consistency matters more than scoops on this beat — show up at every board meeting and the story flow follows.

---

**BEAT: Local Business (1 reporter)**

**Scope and Boundaries**
Covers businesses operating in the coverage area: openings, closings, expansions, hiring trends, commercial real estate, economic development decisions, and the local business ecosystem. Includes the local chamber of commerce, economic development office, and downtown business association. Does not cover national economic news or stock markets unless a local company is directly affected.

**Source Development Plan**
- *Officials:* Economic development director, chamber of commerce leadership, downtown association
- *Business:* Small business owners across sectors (retail, food service, professional services, trades), commercial real estate agents, local bank lending officers
- *Institutional:* Small Business Development Center if present, workforce development board
- *Community:* Workers and employees affected by business decisions, consumers, neighborhood residents affected by new development

**Recurring Story Types**
- Business openings and closings: reported with context (lease terms, market conditions, not just announcements)
- Economic development board decisions: incentive packages, tax abatements, what the city gives and what it gets
- Quarterly or monthly business activity: new business filings, unemployment data, commercial vacancy rates
- Profiles of businesses and business owners: how they operate, what their economics look like, what pressures they face
- Seasonal stories: holiday retail, tourism, construction, hiring cycles

**AI Usage on This Beat**
Per the AI policy: AI research tools may be used to compile business data (new filings, property transactions, commercial permits) and to summarize financial documents. Transcription of interviews is permitted. AI-generated drafts of business briefs (openings, closings, short items) may be used as starting points but must be substantively rewritten by the reporter before publication.

**Competitive Landscape**
Local business coverage is often reduced to press-release republishing. Your advantage is doing actual reporting: visiting the business, talking to the owner, getting the numbers. Business owners are usually willing to talk because coverage drives customers. Build the reputation for accurate, fair reporting and sources will come to you.

---

**BEAT: Arts & Culture (1 reporter)**

**Scope and Boundaries**
Covers local arts organizations, performance venues, galleries, public art, the music scene, literary events, film screenings, festivals, and cultural institutions (museums, libraries, community centers). Includes arts-related policy (public funding for arts, venue regulation). Does not function as a listings service — coverage focuses on stories, profiles, and criticism, not event announcements.

**Source Development Plan**
- *Organizations:* Arts council, theater companies, music venues, galleries, libraries, museums
- *Artists:* Working artists across disciplines — visual, performing, literary, music. Build a roster of local creators who can provide context and commentary beyond their own work
- *Officials:* City arts commissioner or cultural affairs officer (if the role exists), library director
- *Community:* Audience members, arts education teachers, volunteers, venue staff

**Recurring Story Types**
- Profiles of artists and arts organizations: who they are, how they sustain themselves, what they are working on
- Season previews and retrospectives for major local organizations (theater seasons, gallery schedules)
- Arts policy and funding: public funding decisions, venue closures, gentrification effects on creative spaces
- Reviews and criticism: develop a consistent review voice that readers can calibrate against their own taste
- Festival and event coverage: not listings, but reported pieces on what happened, what it meant, who was there

**AI Usage on This Beat**
Per the AI policy: transcription of interviews is permitted. AI research tools may be used to compile background on artists, organizations, and cultural trends. AI must not be used to generate reviews or criticism — opinion is the product of a specific human sensibility, and the reader relationship depends on knowing whose taste they are reading. AI-generated event listings are permitted as draft starting points for calendars, but must be verified against source schedules.

**Competitive Landscape**
Arts coverage is the first thing most newsrooms cut during layoffs, which means the bar is often low. A consistent, thoughtful arts reporter becomes indispensable to the community's cultural infrastructure. The audience for this beat may be smaller than city government or education, but it is loyal and vocal.

---

**BEAT: General Assignment / Breaking News (1 reporter)**

**Scope and Boundaries**
Covers breaking news as it happens (fires, accidents, crime, weather events, emergencies), fills in on other beats when reporters are unavailable or overloaded, and takes on stories that do not fit neatly into another beat. This is the newsroom's flex position — the reporter must be comfortable switching contexts multiple times per day and producing clean copy on short deadlines.

**Source Development Plan**
- *Emergency:* Police public information officer, fire department PIO, county emergency management, hospital media relations
- *Courts:* Clerk of courts, public defender's office, county prosecutor's office (for crime follow-up and court reporting when needed)
- *General:* The reporter on this beat should develop relationships with sources across all beats as a backup. When covering for the city government reporter, they need to know who to call.

**Recurring Story Types**
- Breaking news: spot coverage of incidents, with same-day follow-up
- Crime reporting: arrests, charges, court proceedings, sentencing (with ethics template applied — see Section 6)
- Weather and emergency coverage: preparation stories before, impact stories during, recovery stories after
- Fill-in coverage: council meetings, school board meetings, business events when the primary beat reporter is unavailable
- Enterprise stories that fall between beats: community issues, demographic changes, infrastructure, public health

**AI Usage on This Beat**
Per the AI policy: AI transcription is permitted for interviews. AI research tools may be used for rapid background on breaking stories — identifying prior coverage, locating public records, compiling context. On breaking news, speed matters, but accuracy matters more. AI-assisted research must still be verified before publication. The general assignment reporter faces the highest temptation to publish AI-generated text under deadline pressure — the policy's prohibition on direct-to-publish text applies without exception.

**Competitive Landscape**
On breaking news, speed and accuracy are the differentiators. Local TV may be faster with initial reports; your advantage is depth, follow-up, and the written record. The community will come to your coverage for the complete story after the initial alert.

---

#### 3. Editorial Calendar (12-Week Sample)

*Format: Each week shows the planned content by beat, production stage, and any external events. "GA" = general assignment reporter.*

**Weeks 1-4: Establishing the Rhythm**

| Week | City Government | Education | Local Business | Arts & Culture | GA / Breaking | External Events |
|------|----------------|-----------|---------------|---------------|---------------|----------------|
| 1 | Council meeting coverage (Tue); follow-up on 3 pending development applications | School board agenda preview; back-to-school enrollment feature (assign) | Monthly business openings roundup; commercial vacancy data (Q-end) | Season preview: fall theater and gallery schedules | Available for breaking; court calendar check | — |
| 2 | Development application public hearing (Wed); city department budget prep preview | Back-to-school enrollment feature (draft/edit); new principal profile (assign) | Downtown business association meeting coverage; small business profile (assign) | Season preview (publish); artist profile (assign) | Available for breaking; fill-in as needed | Labor Day (if applicable — reduced publishing) |
| 3 | Budget prep update: department requests due to finance office; council meeting (Tue) | New principal profile (draft); state test score release prep | Small business profile (draft/edit); commercial real estate trends (assign) | Artist profile (draft/edit); gallery opening coverage | Available for breaking | — |
| 4 | Council meeting (Tue); budget summary: department requests vs. prior year | State test scores: local district analysis (draft/edit/publish) | Commercial real estate trends (draft); Q3 business filings data | Gallery opening (publish); fall festival preview (assign) | Available for breaking; court roundup | State test scores release (Education anchor) |

**Weeks 5-8: Building Depth**

| Week | City Government | Education | Local Business | Arts & Culture | GA / Breaking | External Events |
|------|----------------|-----------|---------------|---------------|----------------|----------------|
| 5 | Budget public hearing #1; council meeting (Tue); zoning board decisions | Education feature: school funding formula explainer (assign) | Economic development board meeting; incentive package analysis (assign) | Fall festival coverage; music venue profile (assign) | Available for breaking | City budget public hearing season opens |
| 6 | Budget hearing follow-up; infrastructure project update | School funding explainer (draft/edit) | Incentive package analysis (draft); holiday retail preview (assign) | Music venue profile (draft/edit) | Fill-in on city government (budget week) | — |
| 7 | Council meeting (Tue); second budget hearing if scheduled | School funding explainer (publish); school board meeting | Holiday retail preview (draft); small business Saturday prep | Community arts program feature (assign) | Available for breaking | — |
| 8 | Budget vote preview: what the council is expected to approve; council meeting (Tue) | Parent survey on school satisfaction (assign) | Holiday retail preview (publish); business of the year nominations | Community arts program feature (draft/edit) | Available for breaking; court roundup | — |

**Weeks 9-12: Closing the Quarter**

| Week | City Government | Education | Local Business | Arts & Culture | GA / Breaking | External Events |
|------|----------------|-----------|---------------|---------------|----------------|----------------|
| 9 | City budget vote (council meeting); post-vote analysis: who got what | Parent survey results and analysis (draft) | Year-end business closings roundup (assign); economic outlook interviews | Holiday event coverage; year-in-review arts (assign) | Available for breaking | City budget vote |
| 10 | Post-budget follow-up: department reactions; zoning decisions roundup | Parent survey (publish); winter break prep coverage | Economic outlook feature (draft/edit); commercial lease market update | Year-in-review arts (draft) | Fill-in as needed | — |
| 11 | Council meeting (Tue); first-quarter-under-new-budget preview | End-of-semester features; student achievement profiles | Economic outlook (publish); Q4 business filings data | Year-in-review arts (edit/publish); holiday performances | Available for breaking | — |
| 12 | Year-end council review: what was accomplished, what was deferred | Education beat year-end wrap: enrollment, scores, policy changes | Annual business report: openings vs. closings, biggest stories | Holiday events coverage; looking-ahead arts calendar | Year-end news roundup | End of quarter |

*Note: This calendar assumes no reporter vacations or leave. The editor-in-chief should overlay each reporter's actual availability and assign GA coverage for gaps. Council meeting dates are placeholders — replace with the actual schedule.*

---

#### 4. Content Arcs

**Arc 1: "Following the Money" — City Budget Process**
*Beat: City Government | Duration: Weeks 4-10 | Lead reporters: Both city government reporters*

A six-week arc tracking the city budget from department requests through public hearings to the final council vote. The arc builds reader understanding of how the budget works by following it in real time rather than summarizing it after the fact.

- Week 4: What the departments asked for — compare requests to prior year, identify the biggest increases and cuts
- Week 5-6: Public hearings — who testified, what they wanted, how the council responded
- Week 7: Analysis piece — where the money is actually going, who wins, who loses
- Week 8: Preview the vote — what the council is expected to approve and where disagreement remains
- Week 9: The vote — what passed, what was cut, what was deferred. Post-vote reactions from departments and community
- Week 10: Follow-up — what the new budget means in practice for city services residents use

**Arc 2: "State of the Schools"**
*Beat: Education | Duration: Weeks 3-7 | Lead reporter: Education reporter*

A four-week arc built around the state test score release, expanding into a broader look at how the local district measures its own performance.

- Week 3: Preparation — what the test scores measure and what they do not (published before the scores release, so readers have context)
- Week 4: Scores release — local results with multi-year trend analysis, school-by-school breakdown
- Week 5-6: Deeper reporting — how teachers and administrators respond to the scores, what changes are planned, the gap between test performance and other measures (graduation rates, college enrollment, parent satisfaction)
- Week 7: Explainer — how the school funding formula connects to test scores and what that means for local per-pupil spending

**Arc 3: "Storefront Turnover"**
*Beat: Local Business | Duration: Weeks 5-11 | Lead reporter: Business reporter*

A series tracking the life cycle of commercial spaces in the downtown or main commercial corridor. Why businesses leave, what replaces them, and what the turnover rate says about the local economy.

- Week 5: Data piece — commercial vacancy rates, average lease duration, turnover rate over the past 3 years
- Week 7: Profile of a space that has had three tenants in five years — what went wrong, what the landlord says, what the former tenants say
- Week 9: The economics — what it costs to open a business in the coverage area (build-out, permits, first-year rent, working capital), told through one recent opening
- Week 11: The outlook — commercial real estate agents, economic development officials, and business owners on what comes next

---

#### 5. Ethics Review Template

**EDITORIAL ETHICS REVIEW — [Publication Name]**
*Complete before publication. Editor sign-off required.*

**Story:** ________________________
**Reporter:** ________________________
**Editor:** ________________________
**Date:** ________________________

**SOURCING**

- [ ] The story includes a minimum of two independent sources for every contested or consequential factual claim
- [ ] All named sources have been contacted for verification of their quotes and attributed statements
- [ ] Any subject of criticism or allegation has been given a meaningful opportunity to respond — and the response (or refusal to respond) is included in the story
- [ ] Anonymous sources are used only when the information cannot be obtained on the record, and the editor has been told the source's identity and reason for anonymity
- [ ] Source descriptions are accurate and current (title, affiliation, relevant credentials)

**CONFLICTS OF INTEREST**

- [ ] The reporter has disclosed to the editor any personal, financial, or social relationship with any person or organization in the story
- [ ] If a conflict exists, the editor has determined whether the reporter should continue on the story or hand it off
- [ ] The story does not quote or rely on sources who have an undisclosed financial interest in the outcome

**FAIRNESS AND BALANCE**

- [ ] Affected parties — people whose lives, reputations, or livelihoods are affected by the story — have been contacted and given the opportunity to be heard
- [ ] The story does not present one side's characterization of events without the other side's response
- [ ] Headlines and social media posts accurately represent the story's content and do not overstate or sensationalize

**HARM ASSESSMENT**

- [ ] The story does not name minors without parental or guardian consent, except in cases of clear public interest reviewed by the editor-in-chief
- [ ] Crime victims are not identified against their wishes, unless identification is necessary for the story and approved by the editor-in-chief
- [ ] Home addresses, workplaces, and other location details that could endanger individuals are included only when editorially necessary
- [ ] Graphic descriptions of violence, injury, or trauma are limited to what is necessary for the reader to understand the story
- [ ] The story considers whether publication could reasonably cause harm disproportionate to the public interest served

**PRIVACY**

- [ ] Information obtained from social media profiles is used in proper context and verified where possible
- [ ] Private individuals (not public officials or public figures) are treated with heightened privacy consideration
- [ ] Medical, financial, or personal information is included only when directly relevant and obtained through legitimate means

**AI DISCLOSURE**

- [ ] If AI tools were used beyond basic spell-check, the specific use is documented here: ________________________
- [ ] AI-generated research has been verified against primary sources
- [ ] AI-transcribed quotes have been checked against original audio
- [ ] The appropriate reader-facing disclosure language has been added to the story (per AI Policy, Section 4)
- [ ] No AI-generated text appears in the published story without substantive human rewriting

**CORRECTIONS**

- [ ] If this story corrects or updates prior coverage, the correction is clearly noted in the story
- [ ] If errors are discovered after publication, the correction protocol is: append a correction note to the story, update the headline if it was inaccurate, and notify the editor-in-chief

**EDITOR SIGN-OFF**

Editor name: ________________________
Date reviewed: ________________________
Approved for publication: [ ] Yes [ ] No — requires revisions (note below)

Revision notes: ________________________

---

#### 6. Implementation Checklist

1. **Circulate the AI policy.** Send Section 1 to all editorial staff. Schedule a 60-minute staff meeting within two weeks to walk through the policy, answer questions, and address the specific tools the newsroom plans to use. Do not assume people will read and absorb the document on their own.

2. **Assign beat guide review.** Send each reporter their beat setup guide (Section 2) and ask them to review it against their own knowledge of the beat. Give them one week to flag corrections, add sources they already have, and identify gaps. The guides are starting points — reporters should own and update them.

3. **Load the editorial calendar.** Transfer the 12-week calendar (Section 3) into the newsroom's planning tool (Trello, Notion, Google Sheets, whiteboard — whatever the team actually uses). Overlay reporter vacation and leave schedules. Adjust the council meeting and school board meeting dates to match the actual published schedules.

4. **Identify the first content arc to launch.** Review the three proposed arcs (Section 4) and decide which one to start first. If the city budget cycle is approaching, "Following the Money" is the natural first arc. Assign the lead reporter and confirm the timeline against the calendar.

5. **Pin the ethics template.** Print copies of the ethics review template (Section 5) and place them at the copy desk. If the newsroom uses a CMS with workflow stages, embed the checklist as a required step before the "publish" button. The template only works if it is unavoidable.

6. **Schedule the six-month policy review.** Put a calendar hold six months from the AI policy effective date. The editor-in-chief reviews the policy, surveys staff on what is working and what is not, and revises as needed. AI tools and capabilities will change — the policy should change with them.

7. **Brief freelancers and contributors.** If the newsroom works with non-staff writers, send them the AI policy and the ethics template. The policy applies to all content published under the newsroom's name, regardless of who wrote it.

---

*End of operations package. These are working documents — review, adapt, and update them as the newsroom evolves. The AI policy is reviewed every six months. The editorial calendar is rebuilt each quarter. The beat guides are updated whenever coverage areas change. The ethics template is permanent until the editor-in-chief decides otherwise.*

## Known limitations
- The agent builds beat setup guides from the newsroom description provided in the brief, but it does not research the actual coverage area — it does not know the names of real city council members, school board schedules, or local business associations. Every guide requires the reporter to fill in the specific names, schedules, and institutional details for their community. The guides provide structure and categories; the reporter provides the local knowledge.
- The editorial calendar is a planning tool, not a prediction. It cannot account for breaking news, staff turnover, reporter illness, or stories that take longer than expected. The calendar will need weekly adjustment by the editor-in-chief. The agent produces the skeleton; the newsroom puts muscle on it.
- The AI policy reflects current industry practice and general editorial principles, but it is not legal advice. Newsrooms operating under collective bargaining agreements, specific state laws regarding AI in journalism, or contractual obligations with platforms or wire services should have the policy reviewed by their legal counsel or union representative before adoption.
- Content arcs assume the reporters have the capacity to pursue planned series alongside their daily beat obligations. A six-reporter newsroom running a daily publication is already stretched thin. If breaking news consumes a week, the arcs will slip — and the package does not include contingency planning for that scenario. The editor-in-chief must decide what to defer when capacity is consumed.
- The ethics review template covers the most common ethical considerations in local journalism, but it cannot anticipate every situation. Stories involving undercover reporting, leaked documents, confidential sources facing legal jeopardy, or subjects with active restraining orders require case-by-case editorial judgment that no checklist can replace. The template is a floor, not a ceiling.

## Related agents and skills
- [investigative-reporter-agent](../agents/investigative-reporter-agent.md) — agent for building investigation packages when a newsroom reporter has a specific story spark; different purpose (single investigation vs. operational infrastructure)
- [magazine-editor-agent](../agents/magazine-editor-agent.md) — agent for editorial packages on individual articles, not newsroom-wide operations
- [newsletter-launch-agent](../agents/newsletter-launch-agent.md) — agent for launching a newsletter from scratch; overlaps on content planning but focused on newsletter-specific deliverables
- [newsroom-ai-policy](../skills/magazine-journalism/editing/newsroom-ai-policy/SKILL.md) — standalone skill for generating only the AI usage policy
- [editorial-calendar-planner](../skills/magazine-journalism/ideation/editorial-calendar-planner/SKILL.md) — standalone skill for generating only the editorial calendar
- [beat-setup-guide](../skills/magazine-journalism/ideation/beat-setup-guide/SKILL.md) — standalone skill for generating a single beat setup guide
- [content-arc-planner](../skills/newsletter/strategy/content-arc-planner/SKILL.md) — standalone skill for planning multi-edition content arcs
- [ethics-review-checklist](../skills/magazine-journalism/editing/ethics-review-checklist/SKILL.md) — standalone skill for generating only the ethics review template

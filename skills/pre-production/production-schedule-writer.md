---
name: production-schedule-writer
status: beta
category: pre-production
subcategory: pre-production
version: 1.0
eval_score: null
tags: [schedule, milestones, production planning, pre-production, timeline, deadlines]
---

# Production Schedule Writer

## What This Skill Does
Generates a structured production schedule with phased milestones and deadlines, tailored to the format, team size, and delivery date of a specific media project.

## When To Use This Skill
- You are starting a new project and need to map out every phase from development to delivery
- A commissioner or co-producer has asked for a production schedule as part of a funding or broadcast agreement
- You are taking over a project mid-stream and need to reset milestones against the remaining time
- Your team is small or freelance and needs a shared reference document to keep everyone aligned

## What You Need To Provide
**Required:**
- Project type and format (e.g., 3-part documentary series, 30-minute news special, 10-episode podcast, YouTube mini-series)
- Final delivery date or broadcast date
- Key phases you know are involved (e.g., research, filming, edit, grade, mix, delivery)
- Team size or key roles (even a rough list — director, producer, editor, etc.)

**Optional:**
- Start date or current project stage
- Any fixed external dates (contributor availability windows, archive access dates, festival submission deadlines)
- Commissioning body or platform requirements (e.g., rough cut review by broadcaster)
- Budget phase breakdown if milestones are tied to payments
- Known risks or constraints (e.g., international travel, seasonal filming windows)

## How Claude Approaches This
1. Works backwards from the delivery date, allocating time to each phase based on the project format and scope. Leaves buffer time before final delivery — typically one to two weeks — for unforeseen delays.
2. Breaks the schedule into clearly labelled phases (Development, Pre-Production, Production, Post-Production, Delivery), each with a start date, end date, and a short list of what must be completed within it.
3. Flags any milestone that is externally dependent (broadcaster review, contributor availability, archive licensing) with a note so the team knows it cannot be moved unilaterally.
4. Outputs the schedule in a format easy to paste into a shared document or project management tool — a simple table with dates, phases, milestones, and owners.

## Output Format
A phase-by-phase table (Markdown format) covering the full production timeline, followed by a short notes section flagging fixed points, risks, and assumptions. Each phase lists: date range, phase name, key deliverables, and responsible role(s). Overall length: 400–700 words including the table. Plain language throughout — no project management jargon. Dates written in full (e.g., 14 April 2026, not 14/04/26) to avoid ambiguity.

## Quality Criteria
- [ ] Every phase has a clear date range, named deliverables, and a responsible role
- [ ] The schedule works backwards correctly from the stated delivery date
- [ ] Buffer time is built in before final delivery — not just stacked against it
- [ ] Externally dependent milestones are visibly flagged
- [ ] The table can be copied directly into a shared document without reformatting
- [ ] No placeholder dates or TBD milestones remain in the schedule

## Example

### Input
Project: A 3-part documentary series, each episode 45 minutes, for a regional streaming platform
Delivery date: 30 September 2026
Start date: Today (19 March 2026)
Team: Executive producer, series producer, director (same person for all 3 eps), researcher, offline editor, online editor/colourist, sound mixer
Phases: Development wrap (already done), pre-production, filming (two shoot blocks), offline edit, picture lock, grade and mix, delivery
Fixed external dates: Broadcaster rough cut review must happen no later than 1 August. Main contributor available to film only in May.
Known risk: Archive footage from a national broadcaster — licensing may take 4–6 weeks.

### Output

---

**PRODUCTION SCHEDULE**
*Project: 3-Part Documentary Series*
*Delivery: 30 September 2026*
*Schedule prepared: 19 March 2026*

---

| Phase | Dates | Key Deliverables | Lead |
|-------|-------|-----------------|------|
| **Pre-Production** | 19 March – 25 April 2026 | Research complete; contributors confirmed; shoot plans signed off; archive request submitted ⚑ | Series Producer, Researcher |
| **Shoot Block 1** | 28 April – 22 May 2026 | Main contributor sequences filmed ⚑; supporting contributor interviews completed; B-roll for Episodes 1 & 2 in the can | Director, Series Producer |
| **Shoot Block 2** | 1 – 19 June 2026 | Episode 3 principal photography; pick-up interviews; cutaway and location material | Director |
| **Offline Edit — Episodes 1 & 2** | 22 June – 18 July 2026 | Assembly cut → rough cut for both episodes delivered internally | Offline Editor, Director |
| **Broadcaster Rough Cut Review** | By 1 August 2026 ⚑ | Rough cuts of all 3 episodes submitted to platform; notes received and actioned | Series Producer, Executive Producer |
| **Offline Edit — Episode 3 + Revisions** | 4 – 22 August 2026 | All three episodes at picture lock; editorial notes incorporated | Offline Editor, Director |
| **Picture Lock** | 25 August 2026 | Locked cut signed off by Executive Producer and broadcaster | Executive Producer |
| **Grade & Online** | 26 August – 5 September 2026 | Colour grade and online edit complete for all 3 episodes | Online Editor / Colourist |
| **Sound Mix** | 8 – 16 September 2026 | Final mix delivered for all 3 episodes | Sound Mixer |
| **QC & Delivery Prep** | 17 – 25 September 2026 | Technical QC pass; any fixes; delivery files prepared to platform spec | Online Editor, Series Producer |
| **Final Delivery** | 30 September 2026 | All 3 episodes delivered to platform ✓ | Series Producer |

**Buffer:** 5 days built into delivery prep phase. If QC reveals no major issues, this becomes contingency time.

---

**Notes & Fixed Points**

⚑ **Archive licensing (Pre-Production):** Submit the archive request to the national broadcaster by no later than **2 April** to allow for a 6-week turnaround. If licensing is not confirmed by **14 May**, escalate immediately — this affects the edit of at least one episode.

⚑ **Main contributor (Shoot Block 1):** This contributor is available only during May. All scenes involving them must be completed by **22 May**. Do not allow other scheduling pressures to push these dates.

⚑ **Broadcaster rough cut review:** The platform requires rough cuts no later than **1 August**. This date cannot move. Build editorial time accordingly — do not plan to be still shooting in July.

**Assumptions made in this schedule:**
- Development is complete and all contributors are already approached (though not yet confirmed)
- The director is available continuously from late March through September
- Post-production facilities are booked or available to book now
- No international travel is required (if travel is involved, add 2–3 days per shoot leg)

---

## Known Limitations
- Claude does not have access to real calendars or project management tools — the schedule is a starting framework, not a live document. Transfer it into your tool of choice (Airtable, Notion, Google Sheets, etc.) and assign actual ownership there.
- Public holidays, crew availability gaps, and facility booking lead times are not accounted for unless you supply them — review all dates against the actual calendar before sharing.
- For co-productions with multiple broadcasters or international partners, scheduling dependencies become significantly more complex and may need a dedicated production manager to model properly.
- The schedule assumes a linear edit workflow. If you are editing episodes in parallel with separate editors, the post-production phase will need restructuring.

## Related Skills
- [shoot-schedule-builder](../tv-documentary/pre-production/shoot-schedule-builder.md)
- [episode-concept-generator](../podcast/pre-production/episode-concept-generator.md)
- [story-pitch-writer](./story-pitch-writer.md)

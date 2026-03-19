---
name: call-sheet-writer
status: beta
category: pre-production
subcategory: pre-production
version: 1.0
eval_score: null
tags: [call-sheet, logistics, shoot-day, crew, production-management]
---

# Call Sheet Writer

## What This Skill Does
Generates a complete, formatted production call sheet for a single shoot day, including crew call times, location details, schedule, and key contacts.

## When To Use This Skill
- You have a shoot day confirmed and need to brief the full crew in one document
- You are coordinating multiple locations, crews, or interview subjects in a single day
- A producer or line producer needs to circulate logistics to cast, crew, and fixers before the shoot
- You are updating a call sheet after scheduling changes and need a clean version fast

## What You Need To Provide
**Required:**
- Shoot date and overall call time (or staggered call times per crew role)
- Location name(s) and full address(es), including any access instructions
- Scene or segment list for the day, in order, with estimated durations
- Crew list — names, roles, and contact numbers
- Any talent, interview subjects, or contributors — names, call times, and contact numbers

**Optional:**
- Nearest hospital or emergency services address
- Parking instructions or production vehicle details
- Catering arrangements and meal break times
- Equipment supplier or rental house contact
- Weather contingency plan or wet-weather location
- Wi-Fi or communications details on location
- Any special access requirements, permissions, or health and safety notes

## How Claude Approaches This
1. Reads all provided logistics and orders them into a standard call sheet structure — general production header, then schedule, then crew and contacts
2. Assigns clear call times and locations to each crew role and contributor, flagging any gaps or conflicts in the schedule
3. Formats the output as a clean, scannable document designed to be read quickly on a phone or printed on one page

## Output Format
A single structured document divided into clearly labelled sections. Uses bold headers, concise table-style rows for crew and schedule, and plain language throughout. Tone is professional and direct — call sheets are functional, not descriptive. Length: one to two pages maximum. No unnecessary prose.

## Quality Criteria
- [ ] Every crew member and contributor has a confirmed call time and contact number
- [ ] All locations include a full address and any access note required to enter
- [ ] The day schedule runs in chronological order with realistic buffer time between setups
- [ ] Emergency and safety contact information is present
- [ ] The document could be sent to a crew member unfamiliar with the production and they would know exactly where to be and when

## Example

### Input
Shoot date: Thursday 24 April 2026
Production: "The Last Estuary" — a feature documentary about coastal erosion

General crew call: 07:00
Location 1: Saltmarsh Nature Reserve car park, Harbour Road, Thorncliffe-on-Sea, TE4 8JJ. Gate code: 1472. Access via south gate only.
Location 2: Thorncliffe Community Hall, 14 Market Street, Thorncliffe-on-Sea, TE4 2AG. Key held by caretaker Jan Bright, 07700 900341.

Schedule:
- 07:30–09:30 — Drone and wide shots of estuary at low tide (Location 1)
- 09:30–10:00 — Travel and setup at community hall
- 10:00–13:00 — Interview with marine biologist Dr. Carla Mwangi (Location 2)
- 13:00–14:00 — Lunch break (catering van in hall car park)
- 14:00–16:30 — Interview with local fisherman Tom Reyes (Location 2)
- 16:30–17:30 — Cutaway filming inside hall
- 17:30 — Wrap

Crew:
- Sarah Park, Director, 07700 900112
- Ben Okafor, DOP, 07700 900223
- Lily Chen, Sound Recordist, 07700 900334
- Marco Rivera, Production Manager, 07700 900445
- Aigerim Bekova, Runner, 07700 900556

Contributors:
- Dr. Carla Mwangi (interviewee), call time 09:45, 07700 900667
- Tom Reyes (interviewee), call time 13:45, 07700 900778

Nearest hospital: Thorncliffe General, Cliffside Avenue, TE1 5QX — 4 miles from Location 1, 2 miles from Location 2.
Parking: Free at both locations. Production van (white Ford Transit, reg MK24 XRT) parked at Location 1 from 06:45.

### Output

---

# CALL SHEET
## The Last Estuary — Feature Documentary

**Date:** Thursday 24 April 2026
**General Crew Call:** 07:00
**Wrap:** 17:30 (estimated)
**Production Manager:** Marco Rivera — 07700 900445

---

## LOCATIONS

**Location 1 — Saltmarsh Nature Reserve**
Harbour Road, Thorncliffe-on-Sea, TE4 8JJ
Access: South gate only. Gate code: **1472**
Production van (white Ford Transit, MK24 XRT) on site from 06:45

**Location 2 — Thorncliffe Community Hall**
14 Market Street, Thorncliffe-on-Sea, TE4 2AG
Access: Key held by caretaker Jan Bright — 07700 900341

---

## DAY SCHEDULE

| Time | Activity | Location |
|------|----------|----------|
| 07:00 | General crew call | Location 1 |
| 07:30 | Drone and wide shots — estuary at low tide | Location 1 |
| 09:30 | Travel and setup | → Location 2 |
| 09:45 | Dr. Mwangi arrival | Location 2 |
| 10:00 | Interview — Dr. Carla Mwangi | Location 2 |
| 13:00 | Lunch break (catering van, hall car park) | Location 2 |
| 13:45 | Tom Reyes arrival | Location 2 |
| 14:00 | Interview — Tom Reyes | Location 2 |
| 16:30 | Cutaway filming inside hall | Location 2 |
| 17:30 | Wrap | Location 2 |

---

## CREW CALL TIMES

| Name | Role | Call Time | Mobile |
|------|------|-----------|--------|
| Sarah Park | Director | 07:00 | 07700 900112 |
| Ben Okafor | DOP | 07:00 | 07700 900223 |
| Lily Chen | Sound Recordist | 07:00 | 07700 900334 |
| Marco Rivera | Production Manager | 07:00 | 07700 900445 |
| Aigerim Bekova | Runner | 07:00 | 07700 900556 |

---

## CONTRIBUTORS

| Name | Role | Call Time | Mobile |
|------|------|-----------|--------|
| Dr. Carla Mwangi | Interviewee | 09:45 | 07700 900667 |
| Tom Reyes | Interviewee | 13:45 | 07700 900778 |

---

## EMERGENCY & SAFETY

**Nearest hospital:** Thorncliffe General, Cliffside Avenue, TE1 5QX
- From Location 1: approx. 4 miles
- From Location 2: approx. 2 miles

**First aid contact:** Marco Rivera (Production Manager) — 07700 900445

---

*Call sheet prepared by production. All times subject to change — check with Production Manager for updates.*

---

## Known Limitations
- Claude cannot verify that phone numbers, addresses, or access codes are correct — always check these against your own records before sending
- Scheduling is based on the durations you provide; Claude cannot account for unpredictable delays such as weather, equipment failure, or contributor lateness
- For complex multi-crew shoots with parallel units, the schedule may need manual adjustment to reflect simultaneous activity across locations
- Call sheets involving regulated environments (hospitals, schools, government buildings) may require additional permissions fields that you will need to add manually

## Related Skills
- [shoot-schedule-builder](../tv-documentary/pre-production/shoot-schedule-builder.md)
- [location-brief-writer](../tv-documentary/pre-production/location-brief-writer.md)
- [release-form-checklist](../tv-documentary/pre-production/release-form-checklist.md)

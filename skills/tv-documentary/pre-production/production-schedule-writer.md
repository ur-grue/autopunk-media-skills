---
name: production-schedule-writer
status: stable
category: tv-documentary
subcategory: pre-production
version: 1.0
eval_score: 4.3
tags: [documentary, pre-production, scheduling, production, logistics]
---

# Production Schedule Writer

## What This Skill Does
Writes a structured documentary production schedule from a list of scenes, interview subjects, and locations, organized by shooting day with time blocks, crew notes, and logistics flags.

## When To Use This Skill
- You are planning a multi-day shoot and need to organize scenes, subjects, and locations into a coherent day-by-day schedule
- You want to present a schedule to a broadcaster, co-producer, or fixers that shows the production is properly planned
- You are a producer or line producer building out logistics from a director's wish list
- You want to check the feasibility of a shoot before committing to travel, crew, and locations

## What You Need To Provide
**Required:** A list of everything that needs to be filmed: interview subjects (names and locations), observational scenes (location and approximate duration), and any special sequences; the total number of shooting days available; any fixed constraints (subject only available on specific dates, specific locations with access windows)
**Optional:** Crew size and composition; travel logistics (flying between locations, overnight stays); whether filming is single-camera or multi-camera; known difficult sequences (crowd scenes, weather-dependent shots, sensitive access)

## How Claude Approaches This
1. Groups scenes and subjects by location to minimize travel and maximize shooting efficiency — "location clustering" is the primary organizational principle
2. Within each day, sequences scenes in a logical shooting order: establishing shots before interviews, wide shots before close-ups, most technically demanding sequences when the crew is freshest
3. Assigns provisional time blocks to each sequence based on standard documentary production times, flagging which blocks are high-risk for overrun
4. Adds logistics notes (travel time, equipment needs, permit confirmation required) and flags days where contingency time should be built in

## Output Format
Day-by-day schedule. Each day: Day number and date (if known), Location(s), Time blocks (formatted as a table with Start Time, Duration, Sequence Description, Notes). Followed by a Logistics Notes section (crew call times, travel, equipment), and an End-of-day Assessment (risk level for overrun). Total schedule summary at the end: shooting days, estimated total hours, and critical dependencies.

## Quality Criteria
- [ ] All scenes and subjects from the input list are included — no omissions
- [ ] Scenes are clustered by location to minimize unnecessary travel
- [ ] Time blocks are realistic for documentary production (interviews typically 45–90 minutes, not 15; complex observational sequences typically 2–4 hours)
- [ ] High-risk sequences (weather-dependent, access-sensitive) are positioned where a contingency plan is possible
- [ ] Logistics notes address all standard production planning requirements

## Example

### Input
Documentary: A 55-minute film about urban beekeeping in a large city — featuring three beekeepers and their urban hives, one horticulture expert at a university, and one city planning official who manages green space policy.

Shoot: 4 days total (no fixed dates yet)

Subjects and scenes:
- Marcus Chen: rooftop beekeeper, city center. Interview + filming his hives. Has bees, so filming with protective gear required.
- Doris Ababio: community garden beekeeper, east end of city. Interview + filming garden + hives.
- Yusuf Petrov: industrial area beekeeper (former factory roof). Interview + hive filming + establishing shots of industrial surroundings.
- Dr. Helena Bauer: university entomologist. Talking-head interview in her lab. 30-minute interview only.
- Councilmember Alinta Watson: city hall or outdoor location. 20-minute interview on green space policy.
- B-roll needed: city skyline with hives visible, urban gardens, bees in flight, honey extraction (any subject)
- Opening sequence: time-lapse of dawn over the city — requires early morning setup

Crew: Director, camera, sound. Single camera. No overnight stays (all locations in same city).

### Output

**Production Schedule — Urban Beekeeping Documentary**
*4 shooting days | Single camera crew | All locations within city*

---

**DAY 1 — City Center / University**

*Rationale: Group the most controlled, logistics-simple sequences on Day 1 to settle the crew and establish working rhythms before the more complex outdoor and hive sequences.*

| Time | Duration | Sequence | Notes |
|------|----------|----------|-------|
| 06:00 | 90 min | Time-lapse setup — city dawn sequence | Rooftop access required; confirm permit night before. Camera operator arrives early to set up time-lapse rig. Director and sound arrive 07:30. |
| 08:00 | 30 min | Pack down time-lapse; travel to university | — |
| 09:00 | 60 min | Interview: Dr. Helena Bauer, university lab | Controlled environment. Brief Dr. Bauer on running time. Camera: standard interview setup, lab background. |
| 10:30 | 30 min | B-roll: university lab, specimens, equipment | While gear is still set up |
| 11:00 | 30 min | Travel to city center |  |
| 11:30 | 30 min | Setup: Marcus Chen rooftop | Confirm rooftop access and PPE (protective gear) for camera and sound operators. |
| 12:00 | 90 min | Interview + hive filming: Marcus Chen, city center rooftop | Protective gear required for crew near hives. Interview first while bees are calm. Hive filming second. Best bee activity in warm midday — check weather forecast. |
| 13:30 | 60 min | B-roll: city skyline with hive visible, rooftop context shots | — |
| 14:30 | WRAP |  | |

*Day 1 Risk Level: Low–Medium. Weather is a variable for the dawn sequence and rooftop filming. Build 30 minutes of contingency into the afternoon if dawn sequence overruns.*

---

**DAY 2 — Community Garden (East End)**

| Time | Duration | Sequence | Notes |
|------|----------|----------|-------|
| 09:00 | 30 min | Arrive and establish at community garden. Opening shots of garden before subjects arrive. | — |
| 09:30 | 90 min | Observational filming: Doris Ababio in the garden — tending, moving through the space | Do not direct. Follow her routine. |
| 11:00 | 75 min | Interview: Doris Ababio | Outdoor interview — position away from high-traffic paths. Check ambient sound (traffic, children playing). |
| 12:30 | 45 min | Hive filming: Doris's hives in the garden | — |
| 13:15 | 45 min | B-roll: garden wide shots, flowers, urban context, bees in flight | Bees in flight requires patience; allow full 45 minutes for usable footage. |
| 14:00 | 30 min | Honey extraction sequence (if Doris agrees to demo) | Confirm in advance — this is optional. |
| 14:30 | WRAP | | |

*Day 2 Risk Level: Medium. Outdoor interview sound environment and weather are variables. If rain: reschedule hive filming; interview can proceed under shelter if available.*

---

**DAY 3 — Industrial Area / City Hall**

| Time | Duration | Sequence | Notes |
|------|----------|----------|-------|
| 08:30 | 60 min | Establishing shots: industrial area surroundings — factory buildings, street level, environment | No access required — public area. Get this footage before Yusuf arrives. |
| 09:30 | 30 min | Setup on Yusuf Petrov's roof; health and safety check | Industrial roof — confirm access, safety assessment, and fall protection requirements in advance with the building owner. |
| 10:00 | 90 min | Interview + hive filming: Yusuf Petrov, factory roof | Interview first, hive filming second. This is the most visually distinctive location — allocate extra time for establishing shots of hives against the industrial skyline. |
| 12:00 | 45 min | B-roll: views from roof, industrial context, additional hive detail | — |
| 13:00 | 45 min | Travel to city hall + setup | Confirm interview room or outdoor location with Councilmember Watson's office in advance. |
| 14:00 | 30 min | Interview: Councilmember Alinta Watson | Short, policy-focused interview. Set up quickly. |
| 15:00 | WRAP | | |

*Day 3 Risk Level: High. Industrial roof safety assessment is non-negotiable — if clearance is not confirmed 48 hours in advance, reschedule to Day 4 and use Day 3 as a buffer day. Councilmember interviews frequently run late or reschedule; build a 30-minute buffer before the call time.*

---

**DAY 4 — Pickup Day / Contingency**

Reserve Day 4 for: sequences delayed by weather or access on Days 1–3; additional observational filming with any subject; B-roll pickups (honey extraction, street-level bees, additional urban context); re-shooting or extending any interview that was cut short.

*Do not fill Day 4 with primary sequences. Keep it as a real contingency day.*

---

**Schedule Summary**

| Item | Detail |
|------|--------|
| Total shooting days | 4 |
| Subjects filmed | 5 (3 beekeepers, 1 expert, 1 official) |
| Locations | 5 (city center rooftop, university, community garden, industrial roof, city hall) |
| Critical dependencies | Industrial roof safety clearance (Day 3); dawn time-lapse rooftop permit (Day 1); Councilmember availability (Day 3) |
| Highest-risk sequence | Industrial roof (Day 3) — safety assessment must be completed before filming is confirmed |

## Known Limitations
- Time block estimates are based on standard documentary production norms. Subjects who are first-time interviewees or who require significant rapport-building may need significantly more time. Add at least 30 minutes of padding for any subject the production has not filmed before.
- This schedule does not account for post-filming review, data management, or equipment charging time. In practice, crew days run longer than the shooting time shown here.
- Weather-dependent sequences (outdoor filming, hive activity) may require complete rescheduling. For productions with tight shoot windows, identify indoor alternative sequences for every weather-critical shoot day.
- The schedule assumes all access permissions and subject confirmations are in place. A schedule built on unconfirmed access is a wish list, not a production plan.

## Related Skills
- [location-scout-brief](./location-scout-brief.md)
- [subject-research-brief](./subject-research-brief.md)
- [archival-footage-brief](./archival-footage-brief.md)

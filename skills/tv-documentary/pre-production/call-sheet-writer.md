---
name: call-sheet-writer
status: stable
category: tv-documentary
subcategory: pre-production
version: 1.0
eval_score: 4.44
tags: [documentary, pre-production, call-sheet, scheduling, logistics, crew]
---

# Call Sheet Writer

## What This Skill Does
Drafts a complete production call sheet for a documentary shoot day, with crew calls, talent schedules, location details, parking, weather notes, and emergency contacts — formatted for immediate distribution.

## When To Use This Skill
- You have confirmed a shoot day and need to distribute call times, addresses, and logistics to crew and talent
- The production coordinator is unavailable and the call sheet cannot wait until morning
- You are producing a low-budget or self-shooting documentary and handling your own production management
- You need a clean, professional call sheet template populated with your specific shoot details

## What You Need To Provide
**Required:**
- Production title and episode or segment number (if applicable)
- Shoot date
- Location name and full address (including any specific access instructions — e.g., "enter via loading dock on west side")
- General call time or individual call times for crew and talent
- List of crew members with roles (e.g., "Director: J. Reeves," "Camera Operator: S. Okoro")

**Optional:**
- Talent or contributor names and their call/ready times
- Nearest hospital name and address
- Parking details
- Breakfast and lunch arrangements (catering call, restaurant address, or self-catering note)
- Weather forecast summary
- Special equipment notes or safety considerations
- Production company name and logo description (for header)
- Key contact numbers (production manager, location contact, runner)

## How Claude Approaches This
1. **Builds the header block.** Places production title, shoot date, day number (if part of a series), and the production company name at the top. Adds a one-line weather summary if provided, or flags it as "TBC — check morning of shoot."

2. **Structures crew and talent calls.** Lists every crew member and talent with their individual call time, role, and any specific instructions (e.g., "Camera Operator — arrive 30 min before talent for lighting setup"). If only a general call time is given, applies standard documentary offsets: crew call 60–90 minutes before first setup, talent call 30 minutes before scheduled interview or scene.

3. **Formats the location block.** Includes full address, nearest cross street or landmark, parking instructions, and access notes. Adds a "Nearest Hospital" line — populated if provided, flagged as "CONFIRM BEFORE DISTRIBUTION" if not.

4. **Adds the schedule grid.** Breaks the shoot day into timed blocks (setup, scenes/interviews, meal break, wrap). Uses realistic time estimates for documentary production: 30–45 minutes per interview setup, 15 minutes for camera repositioning, 60-minute lunch break placed no later than six hours after first crew call.

5. **Closes with the logistics and safety section.** Includes key phone numbers, catering details, and any safety notes (PPE requirements, weather contingencies, lone-worker protocols). Ends with a "Notes" section for any additional information the producer wants to communicate.

## Output Format
One-page document (when printed), structured in clearly labelled sections with horizontal rules between them. Uses a tabular layout for crew calls and the schedule grid. All times in 24-hour format (e.g., 07:30, not 7:30 AM) unless the user specifies 12-hour preference. Tone: factual, terse, unambiguous — a call sheet is a reference document, not prose. Any missing critical information (hospital address, parking, key contact numbers) is flagged in **bold** as "CONFIRM BEFORE DISTRIBUTION" rather than omitted silently.

```
PRODUCTION TITLE — CALL SHEET
Date | Day X of Y | Weather summary

CREW CALLS
[Table: Name | Role | Call Time | Notes]

TALENT / CONTRIBUTORS
[Table: Name | Call Time | Ready Time | Notes]

LOCATION
[Address, access, parking, nearest hospital]

SCHEDULE
[Table: Time | Activity | Notes]

CATERING
[Details]

KEY CONTACTS
[Table: Name | Role | Phone]

NOTES
[Any additional information]
```

## Quality Criteria
- [ ] Every crew member and talent listed has a specific call time — no "TBD" without a flag
- [ ] Location includes full address, access instructions, and nearest hospital (or a visible "CONFIRM" flag)
- [ ] Schedule grid accounts for setup time, not just shooting — reflects real documentary timings
- [ ] Meal break is scheduled and placed realistically within the shoot day
- [ ] All times are in a consistent format throughout the document
- [ ] Any information the user did not provide but that is safety-critical is flagged as "CONFIRM BEFORE DISTRIBUTION"
- [ ] Output is scannable in under 30 seconds — a crew member can find their call time immediately
- [ ] Key contacts section is present with at least one phone number or a visible prompt to add them

## Example

### Input
**Production title:** The River Between Us
**Episode:** 3 of 6
**Shoot date:** 14 April 2026
**Location:** Bridgewater Community Centre, 45 Riverside Drive, Millford, Northshire, MF4 7TP. Enter through the main reception. Free parking in the rear car park — access via the lane off Riverside Drive.
**Nearest hospital:** Millford General, Park Lane, Millford, MF1 2AB (10 min drive)
**General crew call:** 07:30
**Crew:**
- Director: Jamie Alden
- Camera Operator: Sam Okoro
- Sound Recordist: Lin Cheng
- Researcher/Runner: Priya Desai
**Talent:**
- Margaret Hale (contributor interview, approx 45 min) — available from 09:00
- David Asante (contributor interview, approx 30 min) — available from 11:00
**Catering:** Tea/coffee provided at location. Lunch at The Old Mill pub, 2 min walk, booked for 13:00.
**Notes:** Bridgewater CC has asked us to keep the main corridor clear during school pickup (15:30). All crew to wear lanyards.

### Output

---

**THE RIVER BETWEEN US — CALL SHEET**
**Episode 3 of 6 | Monday 14 April 2026**
**Weather: CONFIRM MORNING OF SHOOT**

---

**CREW CALLS**

| Name | Role | Call | Notes |
|------|------|------|-------|
| Jamie Alden | Director | 07:30 | |
| Sam Okoro | Camera Operator | 07:30 | Lighting setup in interview room before talent arrives |
| Lin Cheng | Sound Recordist | 07:30 | Recce room for sound — flag any issues to Director by 08:15 |
| Priya Desai | Researcher / Runner | 07:00 | Open location, confirm room access, set up tea/coffee |

---

**TALENT / CONTRIBUTORS**

| Name | Call | Ready | Notes |
|------|------|-------|-------|
| Margaret Hale | 08:45 | 09:00 | Interview approx. 45 min. Priya to meet at reception. |
| David Asante | 10:45 | 11:00 | Interview approx. 30 min. Priya to meet at reception. |

---

**LOCATION**
Bridgewater Community Centre
45 Riverside Drive, Millford, Northshire, MF4 7TP
**Access:** Main reception entrance.
**Parking:** Free, rear car park — access via the lane off Riverside Drive.
**Nearest Hospital:** Millford General, Park Lane, Millford, MF1 2AB (approx. 10 min drive).

---

**SCHEDULE**

| Time | Activity | Notes |
|------|----------|-------|
| 07:00 | Runner opens location | Priya confirms room access, sets up refreshments |
| 07:30 | Crew call — setup | Camera and sound setup in interview room |
| 08:15 | Sound check complete | Flag any issues to Director |
| 08:45 | Margaret Hale arrives | Priya meets at reception, escorts to green room |
| 09:00–09:45 | Interview — Margaret Hale | Approx. 45 min |
| 09:45–10:15 | Camera reposition / room reset | |
| 10:15–10:45 | GVs / cutaways | Exterior and interior general views |
| 10:45 | David Asante arrives | Priya meets at reception |
| 11:00–11:30 | Interview — David Asante | Approx. 30 min |
| 11:30–12:30 | Additional GVs / pickup shots | |
| 13:00–14:00 | Lunch | The Old Mill pub (2 min walk, booked) |
| 14:00–15:15 | Additional filming as needed | |
| 15:15 | Begin wrap | Clear corridor before 15:30 school pickup |
| 15:30 | **Corridor must be clear** | Bridgewater CC requirement |
| 16:00 | Wrap complete / depart | |

---

**CATERING**
Tea and coffee available at location throughout the day.
Lunch: The Old Mill pub, 2 min walk from location. Table booked for 13:00.

---

**KEY CONTACTS**

| Name | Role | Phone |
|------|------|-------|
| Jamie Alden | Director | **CONFIRM BEFORE DISTRIBUTION** |
| Priya Desai | Runner (on-site from 07:00) | **CONFIRM BEFORE DISTRIBUTION** |
| Bridgewater Community Centre | Location contact | **CONFIRM BEFORE DISTRIBUTION** |

---

**NOTES**
- All crew must wear lanyards at all times on site.
- Main corridor must be clear by 15:30 for school pickup — plan wrap accordingly.
- Crew parking in rear car park only. Do not park on Riverside Drive.

---

## Known Limitations
- Claude cannot verify addresses, travel times, or hospital locations. All location details must be confirmed by the production team before the call sheet is distributed.
- Phone numbers are almost never provided in full during briefing — the call sheet will flag every missing contact number, but the producer must populate these manually before sending.
- For multi-location shoot days with travel between sites, the schedule estimates may be inaccurate without specific travel time data. Provide drive times between locations for a realistic schedule.

## Related Skills
- [production-schedule-writer](production-schedule-writer.md) — plan the full multi-day shoot schedule before generating individual call sheets
- [location-scout-brief](location-scout-brief.md) — research and document location details before the shoot
- [equipment-list-generator](equipment-list-generator.md) — generate the kit list to accompany the call sheet

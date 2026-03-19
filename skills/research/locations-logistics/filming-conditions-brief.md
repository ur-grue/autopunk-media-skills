---
name: filming-conditions-brief
status: beta
category: research
subcategory: locations-logistics
version: 1.0
eval_score: null
tags: [locations, pre-production, documentary, filming, weather, scheduling, cinematography]
---

# Filming Conditions Brief

## What This Skill Does
Produces a practical brief covering the best time of day, season, and weather window for filming at a specific location, including light conditions, crowd patterns, access restrictions, and known logistical challenges a crew should anticipate.

## When To Use This Skill
- You are recce-ing or scheduling a shoot at an outdoor or semi-outdoor location and need to know when conditions are optimal
- You are planning a shoot in an unfamiliar region or climate and need to understand seasonal and daily light patterns before committing to dates
- Your director or cinematographer has asked for a conditions brief to inform shot selection and scheduling
- You need to flag weather or access risks to a production manager before locking the schedule

## What You Need To Provide
**Required:**
- Location — be as specific as possible (city, region, and type of location, e.g. "coastal clifftop, southwest Iceland" or "open-air market, coastal Morocco")
- What you intend to film (e.g. wide establishing shots, intimate interview, crowd observation, industrial process)
- Intended month or season (or a range of months if dates are flexible)

**Optional:**
- Aesthetic goal (e.g. golden hour light, overcast documentary tone, high-contrast noon sun)
- Crew size and equipment (affects feasibility of early-morning or restricted-access windows)
- Whether interviews or sync-sound work is planned (affects noise and wind tolerance)
- Any known access restrictions already identified

## How Claude Approaches This
1. Draws on geographic and climatic knowledge of the stated location to establish the general light envelope for the month: sunrise and sunset times, the quality and angle of light at different times of day, and how weather patterns in that season typically affect outdoor shooting.
2. Maps those conditions against the stated filming purpose — wide establishing shots have different optimal windows than intimate interviews; crowd scenes require different timing than empty-location work — and identifies the 1–3 windows within a typical day that best serve the production's needs.
3. Identifies practical complicating factors specific to this type of location: tourist or visitor crowds, noise patterns, permit-sensitive hours, seasonal closures, or weather risks (high winds, fog, monsoon-adjacent rain) that could disrupt the schedule.
4. Structures the output as a working brief the crew can read before the recce or before scheduling begins, with a clear recommendation at the top and supporting detail below.

## Output Format
A structured brief of 400–600 words with four sections: (1) Conditions Summary — the single best filming window stated plainly upfront; (2) Light and Weather — day and season detail; (3) Access and Crowd Patterns — logistical timing advice; (4) Risks and Contingencies — what could go wrong and how to mitigate it. Tone: clear, confident, and practical — written for a production manager or first AD who needs to make scheduling decisions, not a tourism brochure.

## Quality Criteria
- [ ] The recommended filming window is specific (time of day and season), not vague ("morning is usually nice")
- [ ] Light quality is described in cinematographic terms the crew will recognise (direction, hardness, colour temperature, duration of usable window)
- [ ] Crowd and access patterns are addressed, not just weather
- [ ] At least one genuine risk is identified with a concrete mitigation suggestion
- [ ] The brief is written for decision-making, not general interest — every paragraph answers a production question

## Example

### Input
Location: Faroe Islands, specifically the sea cliffs and coastal headlands on Streymoy island. Filming dramatic wide establishing shots and slow-motion ocean footage for a documentary about North Atlantic fishing communities. Intended month: June. Crew of four with a gimbal and drone. No interviews planned at this location.

### Output

**Filming Conditions Brief: Streymoy Coastal Headlands, Faroe Islands — June**

---

**Conditions Summary**

The strongest filming windows in June are the two hours after sunrise (approximately 04:30–06:30 local time) and the two hours before midnight (approximately 21:30–23:30). Both windows deliver low, directional light from the north that rakes across cliff faces and ocean surfaces with extraordinary texture and warmth. Midday shooting is possible but produces flat, diffuse light that loses cliff detail — avoid it for hero shots. This is a high-latitude shooting environment; plan to be exhausted by the schedule but rewarded by the footage.

---

**Light and Weather**

June is the peak of the Faroese near-midnight sun period. Civil twilight lasts almost continuously, meaning there is usable light — often beautiful, golden, and low-angled — for 20+ hours of the day. True darkness does not fall. Sunrise is around 04:20, sunset around 23:40. The most cinematic light arrives when the sun is within 15 degrees of the horizon: expect roughly four hours of exceptional shooting light split between early morning and late evening.

Weather in June is variable and can change within a single hour. The islands average 12–17°C in June but wind is the dominant variable — gusts above 40 km/h are common on exposed headlands and will affect drone operations and gimbal stability on any camera larger than mirrorless. Rain is frequent but rarely prolonged; overcast days produce beautiful, diffuse, moody ocean light that suits documentary work well. Clear days are stunning but rarer than you might hope.

---

**Access and Crowd Patterns**

The Faroe Islands have become a significant tourism destination. June is high season. Popular coastal viewpoints on Streymoy — including Sørvágsvatn (the "floating lake" viewpoint) and the Trælanípa cliffs — can have 50–100 visitors by mid-morning on fine days. For uncluttered wide shots, your early morning window (04:30–06:30) will be largely crowd-free. Drone operations require Civil Aviation Authority of the Faroe Islands approval; file the application before travel. There are no restrictions on filming in public outdoor spaces, but drone permits take 5–10 working days to process.

Parking and vehicle access to headland locations is limited — scout road-end access points during the recce. A 4WD vehicle is advisable for the rougher track approaches.

---

**Risks and Contingencies**

**Wind:** The primary production risk. Drone operations should be considered weather-dependent and not scheduled as guaranteed content on any given day. Build at least one drone contingency day into the schedule, or identify a protected coastal location (a sea inlet or fjord) as a backup low-wind alternative.

**Fog:** Sea fog rolls in quickly on the western headlands, particularly in the early morning window. It can be spectacular for atmospheric shots but will block wide ocean vistas. Have a fog-contingency shot list ready — close foreground material, texture shots, and sound-led sequences that work in low visibility.

**Weather holds:** Do not over-schedule shooting days. Allow one full weather-hold day per three shoot days in the Faroes in June. A locked schedule with no flex will be broken by conditions at some point.

**Gear:** Saltwater spray reaches cliff-top locations even on calm days. All camera equipment should be in weather-sealed housings or covered between shots. Budget for a full clean of gimbal and lens mounts after each day on the cliffs.

## Known Limitations
- Claude does not have access to live weather data or real-time forecasts. All climate information is based on historical averages and general geographic knowledge — verify current conditions and extended forecasts through a weather service (yr.no is standard for North Atlantic and Nordic locations) as you approach the shoot.
- Sunrise and sunset times given are approximate for the stated month and location. Always confirm exact times for your specific shoot date using a sun-calculator tool (The Photographer's Ephemeris or PhotoPills are widely used on productions).
- Permit requirements, drone regulations, and access conditions change. Always verify current rules with local authorities or a fixer on the ground before travel.
- For remote or very niche locations, Claude's knowledge of crowd patterns and access logistics may be limited. A local fixer or location manager is the most reliable source for granular access detail.

## Related Skills
- [location-brief-writer](../../tv-documentary/pre-production/location-brief-writer.md)
- [interview-location-researcher](./interview-location-researcher.md)
- [shoot-schedule-builder](../../tv-documentary/pre-production/shoot-schedule-builder.md)

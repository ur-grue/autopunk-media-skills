---
name: interview-location-researcher
status: beta
category: research
subcategory: locations-logistics
version: 1.0
eval_score: null
tags: [interview, location, pre-production, documentary, journalism, recce, production-design]
---

# Interview Location Researcher

## What This Skill Does
Researches and compares potential locations for a filmed or recorded interview, evaluating each against practical criteria — visual suitability, acoustic quality, access, and narrative fit — and producing a ranked shortlist with a recommendation.

## When To Use This Skill
- You are preparing a documentary, broadcast interview, or video feature and need to decide where to film a subject
- The interview subject has suggested a location but you want to evaluate it critically before committing
- You have a list of possible locations and need a structured comparison before the recce
- You are shooting in an unfamiliar city or environment and need a starting framework for location research

## What You Need To Provide
**Required:**
- Who is being interviewed — their role, field, or the subject matter of the interview (you do not need to name the person)
- The editorial tone and visual register you are aiming for (e.g. formal and authoritative, intimate and personal, industrial and gritty, warm and domestic)
- Any locations already under consideration — even rough ideas are useful ("their office", "a library", "somewhere outdoors")

**Optional:**
- Production format (single-camera documentary, broadcast news package, YouTube talking-head, podcast video)
- Crew size (affects how disruptive you can afford to be in a space)
- Whether the interview is long-form (60+ minutes) or short (under 20 minutes)
- Any known constraints: budget, travel limits, subject's availability or mobility

## How Claude Approaches This
1. Builds a profile of the interview's editorial requirements: what the location needs to communicate about the subject visually, what acoustic environment the format requires, and what practical constraints (crew access, lighting, sound) will determine whether a location is actually usable.
2. Evaluates each candidate location — or, if no candidates are given, generates a set of appropriate options — against five criteria: visual storytelling fit, acoustic suitability, access and logistics, production practicality, and subject comfort.
3. For each location, produces a clear-eyed assessment of pros and cons, flags deal-breaker risks (e.g. a visually ideal space with an uncontrollable HVAC hum), and suggests mitigation where possible.
4. Produces a ranked shortlist with a plain recommendation at the top — which location to pursue first and why.

## Output Format
A structured research brief of 450–650 words. Opens with a one-sentence recommendation (location name and reason). Followed by a comparison table or numbered list covering each candidate location across five criteria. Ends with a short "Questions to answer on the recce" section — a checklist of what to verify in person before confirming the location. Tone: practical and direct, written for a director, producer, or researcher making a real decision.

## Quality Criteria
- [ ] The recommendation is stated clearly upfront — not buried in the comparison
- [ ] Each location is evaluated on all five criteria, not just aesthetics
- [ ] Acoustic suitability is explicitly addressed (not assumed to be fine)
- [ ] At least one deal-breaker risk is identified across the set of candidates
- [ ] The recce checklist is specific to the locations discussed, not generic
- [ ] The output is written for decision-making, not description — every section moves toward a conclusion

## Example

### Input
I'm interviewing a marine biologist who studies deep-sea ecosystems for a feature documentary. The tone should feel quietly authoritative and a bit atmospheric — not clinical or corporate. The interview will be long-form, about 90 minutes. Single camera, crew of three. We're filming in a mid-sized coastal city. Locations under consideration: (1) her university lab, (2) a public aquarium, (3) her home study, (4) a working fishing dock.

### Output

**Interview Location Research: Marine Biologist, Feature Documentary**

**Recommendation: Home study, with the aquarium as first backup.**

The home study delivers the editorial tone most directly — intimate, personal, and surrounded by the subject's own material — with the most controllable production environment for a 90-minute interview. The aquarium is the strongest visual choice but carries logistical risks that need to be resolved before committing.

---

**Location Comparison**

**1. University Lab**
- *Visual fit:* Functional but generic. Institutional lighting and standard lab furniture read as corporate rather than atmospheric. Hard to distinguish from hundreds of other academic interviews. The visual language contradicts the "quietly authoritative" register you're after unless you can dress the background carefully.
- *Acoustic suitability:* Medium risk. Labs typically have ventilation systems and refrigeration units running continuously — these produce a low hum that is difficult to remove in post without audible artefacting on long-form dialogue. Requires assessment on-site.
- *Access and logistics:* Reliable access; the subject controls her own space. No third-party permissions needed. Parking and equipment load-in are usually straightforward at university buildings.
- *Production practicality:* Good. Power is plentiful, rigging is possible, and crew movement won't be restricted.
- *Subject comfort:* High — familiar professional environment.
- **Verdict:** Safe fallback but weak editorially. Pursue only if others fall through.

**2. Public Aquarium**
- *Visual fit:* Strong. Blue-tinted light, water movement, and marine life in background create immediate visual atmosphere that connects directly to the subject matter. High editorial impact.
- *Acoustic suitability:* Significant risk. Aquarium pump systems are loud and pervasive. Moving water creates broadband noise that is very difficult to isolate. This is a potential deal-breaker for a 90-minute interview and must be the first question on any recce call.
- *Access and logistics:* Requires negotiation with the aquarium's programming or events team. May require out-of-hours access (before or after public opening) which affects scheduling and cost. Third-party permits almost certainly needed.
- *Production practicality:* Complex. Power access may require negotiation; rigging near tanks may be restricted. Load-in through public areas.
- *Subject comfort:* Likely high given professional context, but confirm.
- **Verdict:** Best visual option but highest logistical risk. Viable only if acoustic assessment passes and out-of-hours access can be secured at reasonable cost.

**3. Home Study**
- *Visual fit:* Strong if the space has bookshelves, maps, specimens, or other personal material in frame. The domestic-professional environment reads as warm and authoritative — exactly the register described. Confirm the study has enough depth behind the subject for a workable background.
- *Acoustic suitability:* Generally good. Home environments are usually quieter than institutional spaces, with no HVAC or machinery. Main risks are domestic noise (pets, traffic, domestic appliances) that can be mitigated by scheduling and brief on the day.
- *Access and logistics:* Simple. Subject controls access completely; no third-party permissions.
- *Production practicality:* Moderate. Domestic rooms limit rigging options; power sockets may require extension management. A crew of three is workable in most home studies without the space feeling cramped.
- *Subject comfort:* Very high. Home environment typically relaxes subjects and improves interview performance on long-form sessions.
- **Verdict:** Recommended first choice. Combines editorial quality with the lowest production risk.

**4. Working Fishing Dock**
- *Visual fit:* Atmospheric and visually connected to the subject's research context, but potentially at odds with the "quietly authoritative" register. A working dock reads as rugged and active — which may suit some editorial approaches but risks feeling imposed rather than genuine if the biologist's personal connection to the dock is unclear.
- *Acoustic suitability:* High risk. Working docks have machinery, engine noise, wind, and water. Sync-sound interview in this environment is very difficult; if used, plan for significant post-production or treat as a B-roll environment only.
- *Access and logistics:* Variable. Working docks are active commercial environments; access for a camera crew will require permission and may be time-restricted.
- *Production practicality:* Challenging — wind affects audio and camera stability; variable natural light; no power access.
- *Subject comfort:* Unknown — confirm whether the subject has a professional connection to this environment.
- **Verdict:** Not recommended for the primary interview. Strong B-roll location; consider as a separate filming element rather than the interview setting.

---

**Questions to Answer on the Recce**

- Home study: What is behind the subject when seated? Enough depth and visual interest for a usable background? What is the dominant ambient noise source (street, neighbours, appliances)?
- Aquarium: Can out-of-hours access be negotiated? What is the measured ambient noise level in the tank room with pumps running? Is there a quieter area of the building that retains visual interest?
- Lab: Is the ventilation system switchable? If not, what is the ambient noise floor with a sound meter reading?
- All locations: Where is power? Where does the crew park and load in? Is there a dedicated holding area for the subject between setups?

## Known Limitations
- Claude cannot physically assess a location — acoustic quality, real ambient noise levels, and precise visual suitability must be verified on the recce. This brief is a pre-recce research tool, not a substitute for site visit.
- Recommendations are based on the information provided. If the subject has a strong preference for a particular location, that preference should be weighted heavily — subject comfort has a measurable effect on interview performance, particularly in long-form sessions.
- For locations requiring third-party access (aquariums, public buildings, working industrial sites), negotiation timelines and costs can vary widely. Build more lead time into the schedule than you expect to need.
- Claude's knowledge of specific venues in specific cities is limited. For granular location intelligence in an unfamiliar city, a local fixer or location manager with regional knowledge will provide more reliable detail.

## Related Skills
- [filming-conditions-brief](./filming-conditions-brief.md)
- [location-brief-writer](../../tv-documentary/pre-production/location-brief-writer.md)
- [shoot-schedule-builder](../../tv-documentary/pre-production/shoot-schedule-builder.md)
- [interview-question-generator](../../tv-documentary/scripting/interview-question-generator.md)

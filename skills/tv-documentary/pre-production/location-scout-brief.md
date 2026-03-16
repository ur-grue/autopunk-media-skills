---
name: location-scout-brief
status: stable
category: tv-documentary
subcategory: pre-production
version: 1.0
eval_score: 4.3
tags: [documentary, pre-production, locations, production, scouting]
---

# Location Scout Brief

## What This Skill Does
Writes a structured brief for filming a specific location, covering visual and narrative requirements, logistics, permissions, and contingency planning.

## When To Use This Skill
- You need to brief a location scout or line producer on what you need from a specific filming location
- You are visiting a location yourself and want a checklist of what to assess and document
- You are requesting permissions from a location owner or government authority and need to articulate exactly what filming will involve
- You are planning a filming day and want to anticipate logistical challenges before arriving on location

## What You Need To Provide
**Required:** The location (type and approximate geography); the scenes or sequences you intend to film there; the film or story context
**Optional:** The crew size; the intended shooting style (observational, interview, aerial, reconstruction); specific equipment (large lights, cranes, drones); seasonal or time-of-day requirements; any known sensitivities (active business, private land, protected site)

## How Claude Approaches This
1. Establishes the narrative function of the location — what story work it needs to do — so every logistical decision is anchored to a creative purpose
2. Specifies visual requirements: light conditions, angles, background elements, clearance needs (unwanted signage, bystanders, competing sound)
3. Maps the practical logistics: access, permission pathways, parking and crew staging, power supply, time constraints
4. Identifies contingency requirements: weather alternatives, backup dates, and fallback approaches if the primary visual or access plan fails

## Output Format
Structured brief, 500–700 words. Sections: Location Function (narrative role), Visual Requirements, Logistics and Access, Permissions and Clearances, Potential Problems and Contingencies. Practical, production-standard language — suitable for handing to a line producer or location manager.

## Quality Criteria
- [ ] Narrative function section clearly states what the location needs to achieve in the film
- [ ] Visual requirements are specific — light direction, background elements, minimum clear space — not generic ("needs to look good")
- [ ] Logistics section addresses all standard production planning requirements: access, staging, power, sound environment
- [ ] Permissions section identifies the correct authority to approach and the type of permission required
- [ ] Contingency section anticipates at least two specific failure modes with practical alternatives

## Example

### Input
Location: A decommissioned coal-fired power station on the edge of a mid-size industrial city. The production has been granted provisional access but needs to formally notify the property management company about filming requirements.
Scenes: Establishing shots of the exterior; observational walk-through with a former plant engineer (the film's main subject); one sit-down interview inside the turbine hall
Film context: Feature documentary about the energy transition and the communities built around fossil fuel industries
Crew: Director, two camera operators, sound recordist, production coordinator. No large lighting rigs; natural light preferred.
Shooting style: Observational and interview

### Output

**Location Scout Brief — Decommissioned Coal Power Station**
*Documentary: Energy Transition Feature Film*

---

**Location Function**

This location serves three narrative purposes: (1) establishing the industrial scale of what is being lost — its visual mass is the physical argument for the community's sense of displacement; (2) giving the main subject, a former plant engineer, a concrete environment in which his expertise and memory can be activated through space rather than just words; (3) providing the visual contrast at the film's emotional center — a working environment that no longer works.

---

**Visual Requirements**

- **Exterior:** Morning or late afternoon light to give the cooling towers and chimney stacks maximum texture and shadow depth. Avoid direct overhead midday light, which flattens industrial structures. If possible, a low angle from the access road to maximize the station's apparent scale against the skyline.
- **Walk-through:** The turbine hall and control room are the priority interior spaces. Look for surfaces that retain evidence of use — wear patterns on floors, residue marks, faded labels — rather than cleaned or repainted sections. The subject should be filmed moving through the space, not staged in it.
- **Interview:** The turbine hall is the preferred interview location: the machinery as background creates the visual argument without a cutaway. Identify a section where background clutter is manageable and where ambient sound can be controlled. Natural light from high windows is preferable to artificial light; assess the direction and intensity during the scout visit.
- **Sound environment:** Industrial sites often have residual sounds — wind through open structures, metal expansion, HVAC if any systems remain active. The sound recordist must assess whether these are usable texture or problematic interference.

---

**Logistics and Access**

- Access is provisional; a formal location agreement with the property management company (confirm company name and signatory) is required before any filming
- Site has multiple access points; confirm with property management which entrance is cleared for production vehicles and whether there is on-site parking for a 6-person crew plus equipment vehicles
- Power: assume no mains power on site. All battery-powered equipment. Confirm with property management whether any circuits are live before sending crew into the building
- Time constraint: confirm whether the site has a security curfew or patrol schedule that limits filming hours
- Health and safety: a decommissioned industrial site requires a site safety assessment before crew entry. Confirm whether the property management company requires the production to submit its own risk assessment or if they have a site access protocol

---

**Permissions and Clearances**

- Primary permission: property management company — written location agreement, confirmed insurance coverage for public liability
- If any filming involves aerial (drone) work: check Civil Aviation Authority (or equivalent national authority) regulations for filming over industrial sites and confirm site falls within permitted airspace
- Confirm whether any areas of the site are under heritage protection or listed status, which may restrict what can be moved, altered, or filmed
- Model releases: if any current site staff, security personnel, or contractors are visible in footage, obtain signed releases

---

**Potential Problems and Contingencies**

**Problem 1 — Access revoked or delayed:** Property management companies sometimes add conditions after provisional agreement. Contingency: identify a second industrial or post-industrial location within the same region that can serve the narrative function — a redundant power station, a decommissioned factory, or a mine surface works.

**Problem 2 — Interior light insufficient for observational filming:** High windows in turbine halls can provide dramatic but unpredictable light. If natural light is inadequate on the filming day, the interview and walk-through may need to be relocated to an exterior courtyard or structured around a bright overcast day. Assess light levels at the scout visit at the same time of day as the intended filming call.

**Problem 3 — Structural safety assessment restricts access to key areas:** Heritage or decommissioned industrial sites sometimes limit access to specific zones. Identify early which areas are unrestricted and plan the filming sequences around confirmed access rather than assumed access.

## Known Limitations
- This brief covers standard documentary production scenarios. Specialist filming contexts — live emergency services sites, courtrooms, operating mines, or internationally controlled territories — require additional permissions and risk frameworks not covered here.
- Permissions timelines vary widely. Government or institutional sites may require weeks of approval; private property can sometimes be cleared in days. The brief cannot advise on specific timelines, which the line producer must research for each jurisdiction.
- This skill does not generate a formal location agreement or risk assessment — both are legal documents that require production company input and, in some cases, legal review.

## Related Skills
- [production-schedule-writer](./production-schedule-writer.md)
- [archival-footage-brief](./archival-footage-brief.md)
- [subject-research-brief](./subject-research-brief.md)

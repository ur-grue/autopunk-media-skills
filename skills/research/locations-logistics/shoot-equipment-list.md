---
name: shoot-equipment-list
status: beta
category: research
subcategory: locations-logistics
version: 1.0
eval_score: null
tags: [equipment, logistics, pre-production, field, crew]
---

# Shoot Equipment List

## What This Skill Does
Generates a complete, shoot-specific packing and equipment checklist organized by category, crew role, and travel constraints.

## When To Use This Skill
- You are preparing for a field shoot and need a comprehensive equipment list to brief your crew or rental house
- You are a solo journalist or small crew with limited kit and need to prioritize what to bring
- You are hiring a local crew in an unfamiliar location and need to specify exactly what equipment to source
- You are submitting a production budget and need an itemized list to cost against

## What You Need To Provide
**Required:**
- Type of shoot (documentary interview, news package, branded video, event coverage, etc.)
- Shooting environment (indoor studio, outdoor urban, remote wilderness, conflict zone, etc.)
- Crew size and roles (e.g., solo journalist, director + camera operator + sound, full broadcast crew)
- Approximate duration of shoot (half-day, multi-day, week-long)

**Optional:**
- Specific deliverable format (broadcast HD, cinema 4K, social vertical, etc.)
- Known technical requirements (live feed, underwater housing, low-light, aerial, etc.)
- Travel method and luggage restrictions (domestic flight, international flight, road vehicle, boat)
- Any equipment already confirmed available on location

## How Claude Approaches This
1. Identifies the core technical requirements based on shoot type, environment, and deliverable format — what the job actually demands before any preferences are added
2. Builds the list by crew role, so each person can check their own responsibilities independently; flags items that are shared between roles
3. Applies travel constraints last — flags oversize, overweight, or restricted items and suggests alternatives where packaging or rental is preferable to shipping

## Output Format
A structured checklist organized into clearly labeled sections: Camera & Lenses, Audio, Lighting, Power & Batteries, Support (tripods, rigs, cases), Data & Storage, Connectivity, Expendables, and Personal / Safety. Each item includes a quantity. Items requiring customs documentation, airline approval, or specialist handling are flagged with a note. Total estimated case count and approximate checked-luggage weight are included at the end. Plain language throughout — no model numbers unless specifically requested.

## Quality Criteria
- [ ] Every item is specific (not "camera" but "main camera body + backup body")
- [ ] Quantities are realistic for crew size and shoot duration
- [ ] Travel restrictions are addressed if travel method was provided
- [ ] At least one "easy to forget" category is included (expendables, gaffer tape, adapters, etc.)
- [ ] List is immediately usable as a pre-shoot checklist without further research

## Example

### Input
Shoot type: Documentary interview and b-roll in a working factory — two interview setups and observational filming on the factory floor.
Environment: Indoor, mixed artificial light, loud ambient noise.
Crew: Director, camera operator, sound recordist.
Duration: Two full days.
Deliverable: Broadcast HD (1920x1080).
Travel: Driving — no airline restrictions.
Equipment available on location: None.

### Output

# Equipment List — Factory Documentary (2 Days)
**Crew:** Director / Camera Operator / Sound Recordist
**Format:** Broadcast HD · Indoor industrial environment

---

## Camera & Lenses
- [ ] Main camera body × 1
- [ ] Backup camera body × 1 (for b-roll or emergency)
- [ ] Wide-angle lens (14–24mm equivalent) × 1
- [ ] Standard zoom lens (24–70mm equivalent) × 1
- [ ] Short telephoto lens (85–135mm equivalent) × 1 — for interview close-ups
- [ ] Lens cleaning kit (cloths, blower, fluid) × 1

## Audio
- [ ] Boom microphone (supercardioid, suited to loud environments) × 1
- [ ] Lavalier microphone kit (transmitter + receiver) × 2 — for both interview subjects
- [ ] Backup lavalier kit × 1
- [ ] Audio mixer / field recorder (minimum 4-channel) × 1
- [ ] Headphones, closed-back (for monitoring in loud space) × 2
- [ ] XLR cables, 5m × 4
- [ ] Blimp / windshield for boom × 1
- [ ] Spare AA and AAA batteries × 40 — wireless systems consume heavily in industrial RF environments

## Lighting
- [ ] LED panel, bi-colour, large (interview key light) × 2
- [ ] LED panel, bi-colour, small (interview fill / hair light) × 1
- [ ] Portable LED panel for b-roll / tight spaces × 2
- [ ] Light stands × 4
- [ ] Diffusion frames and frames × 2
- [ ] Extension cables, 10m × 3
- [ ] Multi-socket power board × 2
- [ ] Gels: CTO, CTB, neutral density (assorted pack) × 1

## Power & Batteries
- [ ] Camera batteries × 8 (4 per body minimum for full shooting days)
- [ ] Camera battery charger × 2
- [ ] V-lock batteries for LED panels × 4
- [ ] V-lock charger × 1
- [ ] Portable power station (backup, for locations with limited outlets) × 1

## Support
- [ ] Fluid-head tripod, heavy-duty × 1
- [ ] Lightweight tripod or travel tripod (b-roll) × 1
- [ ] Shoulder rig or cage for handheld b-roll × 1
- [ ] Monopod × 1 — useful in restricted floor space
- [ ] Sandbags × 4

## Data & Storage
- [ ] Primary recording media (cards or drives for main camera) × 6
- [ ] Backup recording media × 4
- [ ] Laptop with editing software for dailies review × 1
- [ ] Portable SSD drives, 4TB × 2 — primary and backup copy
- [ ] Card reader (multi-format) × 1
- [ ] USB hub × 1

## Expendables & Small Accessories
- [ ] Gaffer tape × 3 rolls
- [ ] Black wrap (aluminum foil tape for flagging lights) × 1 roll
- [ ] Camera rain cover × 2 — industrial environments often have moisture and dust
- [ ] Lens filters: ND kit × 1
- [ ] Magic arm and super clamp set × 1 (for rigging lights in tight spaces)
- [ ] Velcro cable ties × 1 pack
- [ ] Marker pens and labels for media × 1 pack
- [ ] Earplugs for crew (mandatory in loud factory) × 1 pack

## Safety & Personal
- [ ] Hard hats × 3 — likely required on factory floor
- [ ] High-visibility vests × 3 — confirm requirements with location contact
- [ ] Safety footwear (steel-toe) — each crew member responsible for own
- [ ] First aid kit × 1
- [ ] Crew contact sheet and site emergency numbers, printed × 1

---

**Estimated case / bag count:** 8–10 cases and bags
**Driving load:** Fits comfortably in a large estate car or small van

**Notes:**
- Confirm power outlet types and amperage limits with location manager before arrival — industrial sites sometimes run 3-phase power requiring adaptors
- Industrial environments are high-risk for dust ingress on lenses and sensors; bring extra blowers and cloths
- Wireless audio may be unreliable near heavy machinery — have wired fallback ready

## Known Limitations
- Claude cannot verify exact equipment specifications or confirm compatibility between specific camera bodies and accessories — always have your camera operator review the list before rental
- Power requirements are estimated; actual outlet availability and amperage on location must be confirmed with the location manager
- Safety equipment requirements vary by country and industry — the list above is a general prompt, not a compliance checklist; always check local health and safety regulations

## Related Skills
- [location-brief-writer](../../tv-documentary/pre-production/location-brief-writer.md)
- [shoot-schedule-builder](../../tv-documentary/pre-production/shoot-schedule-builder.md)
- [travel-logistics-brief](travel-logistics-brief.md)

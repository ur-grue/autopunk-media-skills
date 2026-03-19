---
name: location-permit-brief
status: beta
category: research
subcategory: locations-logistics
version: 1.0
eval_score: null
tags: [location, permits, filming, access, logistics, pre-production]
---

# Location Permit Brief

## What This Skill Does
Produces a structured brief summarising the permit requirements, access restrictions, and key contacts needed to film or photograph at a specific location.

## When To Use This Skill
- You are in pre-production and need to know whether a location requires a permit before committing to a shoot
- A producer or fixer has asked for a permit overview before a recce
- You are shooting in a country or jurisdiction unfamiliar to your crew and need to understand local rules quickly
- A shoot date is approaching and you need a single document to hand to a production coordinator

## What You Need To Provide
**Required:** The specific location (city, building, public space, or geographical feature), the country or region, and the type of production (news, documentary, commercial, short film, or social media content).

**Optional:** Planned shoot dates, crew size, whether drone or aerial footage is needed, whether the shoot involves interviews with members of the public, and any known sensitivities about the location (government building, religious site, protest area, military zone).

## How Claude Approaches This
1. Identifies the jurisdictional layer — national, regional, and municipal — that governs filming at the specified location, noting which level issues permits and which enforces restrictions.
2. Lists the typical permit categories that apply (public space permit, film office permit, property owner consent, police notification, drone authorisation) and flags which are likely mandatory versus optional based on crew size and content type.
3. Identifies the most relevant permit-issuing bodies or film commissions for that location, with their typical processing times and known fee structures where this information is established.
4. Flags any known access restrictions, seasonal closures, banned equipment, or politically sensitive considerations that could affect the shoot.
5. Produces a clean brief with an action checklist: what to apply for, in what order, and what lead time is realistic.

## Output Format
A single document of 400–600 words divided into five sections: Location Overview, Permit Requirements, Key Contacts and Bodies, Known Restrictions, and Action Checklist. The checklist uses numbered steps in order of priority. Tone is direct and practical — written for a production coordinator, not a lawyer. No legalese; plain-language summaries only.

## Quality Criteria
- [ ] Every permit category listed is specific to the named location or jurisdiction — not a generic global list
- [ ] Processing time estimates are included where established practice is known
- [ ] The action checklist is in a logical sequence a production coordinator can follow without prior knowledge of the location
- [ ] Drone and aerial restrictions are addressed if the shoot type warrants it
- [ ] At least one contact body or film commission is named with its role clearly explained
- [ ] Any politically or culturally sensitive access issues are noted without speculation

## Example

### Input
Location: Valletta waterfront, Malta. Production type: documentary. Crew size: 6 people including a drone operator. Shoot dates: mid-October. We plan to film on the quayside, in public streets, and to fly a drone over the Grand Harbour. No interviews with members of the public.

### Output

**Location Permit Brief — Valletta Waterfront, Malta**
*Prepared for pre-production reference. Verify current requirements with Malta Film Commission before confirming shoot.*

---

**Location Overview**

Valletta is Malta's capital and a UNESCO World Heritage Site. The waterfront and Grand Harbour area fall under the jurisdiction of Heritage Malta and Valletta Waterfront (a privately operated quayside precinct), alongside the Malta Film Commission (MFC), which is the national body responsible for all commercial and documentary filming permits on the island.

---

**Permit Requirements**

Three permit streams apply to this shoot:

1. **Malta Film Commission permit** — required for all professional productions regardless of crew size. This is the primary document and unlocks access to most public locations on the island.
2. **Valletta Waterfront property permit** — the quayside is managed by a private operator. A separate location agreement with Valletta Waterfront Ltd. is required for filming on their precinct, even if an MFC permit is already held.
3. **Drone/aerial permit (Transport Malta)** — all commercial drone flights in Malta require advance approval from Transport Malta's Civil Aviation Directorate. Flights over Valletta and the Grand Harbour are in controlled airspace; approval can take 10–15 working days and may require proof of the operator's Remote Pilot Licence and drone insurance.

No public interview permit is needed as no members of the public are being approached on camera.

---

**Key Contacts and Bodies**

- **Malta Film Commission** — issues the primary filming permit and can advise on all subsidiary approvals. Standard processing time: 5–10 working days for documentary shoots.
- **Valletta Waterfront Ltd.** — contact via their commercial/events office for the property licence. Lead time: 3–7 working days.
- **Transport Malta – Civil Aviation Directorate** — handles drone authorisation. Apply at least 15 working days before the shoot date given the controlled airspace designation.

---

**Known Restrictions**

- Grand Harbour airspace is restricted; drone flights above certain altitudes or near the breakwater require specific waivers.
- Heritage Malta may impose additional conditions for filming within or adjacent to fortifications; check whether any planned shots include the city walls or bastions.
- October coincides with the end of the sailing season; harbour traffic may affect drone flight windows. Early morning slots (before 08:00) are typically less congested.
- Tripods and larger camera rigs on public footpaths in Valletta may require notification to the Valletta Local Council if obstructing pedestrian access.

---

**Action Checklist**

1. Submit MFC permit application — include crew list, equipment manifest, and proposed shot locations (allow 10 working days).
2. Contact Valletta Waterfront Ltd. commercial office to negotiate location agreement (allow 7 working days).
3. Apply to Transport Malta Civil Aviation Directorate for drone authorisation — attach pilot licence and insurance documents (allow 15 working days; initiate first).
4. Confirm with Heritage Malta whether any planned shots fall within their managed sites.
5. Notify Valletta Local Council if equipment will occupy public footpaths.
6. Obtain production liability insurance — MFC and Valletta Waterfront will both request proof at point of application.

## Known Limitations
- Claude's knowledge of specific permit fees, online application portals, and processing times reflects information available before its training cutoff; fees and procedures change regularly. Always verify current requirements directly with the Malta Film Commission and Transport Malta before confirming the shoot schedule.
- For shoots in jurisdictions with limited English-language documentation — or where film commissions do not have an active public-facing office — Claude may be unable to name specific contacts or accurate lead times, and the brief will note this gap explicitly.
- This brief does not constitute legal advice. For sensitive locations (military zones, active protest areas, religious sites with specific access rules), a local fixer or production lawyer should review the plan before any permit application is submitted.

## Related Skills
- [filming-conditions-brief](filming-conditions-brief.md)
- [travel-logistics-brief](travel-logistics-brief.md)
- [interview-location-researcher](interview-location-researcher.md)
- [shoot-equipment-list](shoot-equipment-list.md)

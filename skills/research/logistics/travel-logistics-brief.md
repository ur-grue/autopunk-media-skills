---
name: travel-logistics-brief
status: stable
category: research
subcategory: logistics
version: 1.0
eval_score: 4.39
tags: [research, logistics, travel, reporting-trip, planning, safety]
---

# Travel Logistics Brief

## What This Skill Does
Produces a structured logistics checklist for a reporting trip — covering the research categories a journalist needs to investigate before travel, including transport, accommodation, credentials, safety considerations, communications, and local contacts — so nothing critical is overlooked in trip planning.

## When To Use This Skill
- You are planning a reporting trip to an unfamiliar location and need a systematic checklist of what to arrange and research before departure
- You are sending a reporter or crew into the field and need to ensure all logistics, safety, and legal considerations are covered
- You are travelling to a location with specific risks (conflict zone, restricted access, extreme climate) and need a thorough preparation framework
- You are working on a tight budget and need to plan efficiently to avoid costly oversights

## What You Need To Provide
**Required:** The destination (city, region, country); the purpose of the trip (what story you are covering); the duration; the number of people travelling and their roles (reporter only, reporter + photographer, full crew).

**Optional:** Your departure city; budget constraints; specific risks you are aware of (security situation, legal restrictions on journalism, extreme weather); whether you need to film or photograph (affects equipment and permit requirements); any contacts you already have at the destination; special requirements (disability access, dietary needs, equipment transport).

## How Claude Approaches This
1. **Builds the logistics checklist by category.** Organises the preparation into clear categories — travel documents, transport, accommodation, credentials and access, equipment, communications, safety, health, finances, and local contacts. For each category, lists the specific items to research and arrange, tailored to the destination and purpose.

2. **Prioritises by lead time.** Identifies which items need to be arranged weeks in advance (visas, press accreditation, equipment carnets) vs. days before (local SIM cards, currency exchange, contact confirmation) vs. on arrival (ground transport, check-in protocols). This prevents last-minute scrambles.

3. **Flags destination-specific considerations.** Based on the destination, highlights any unusual logistical requirements — press freedom restrictions, permit requirements for filming in public spaces, import restrictions on equipment, altitude or climate preparation, health precautions, or cultural considerations that affect how journalists operate.

4. **Provides a safety framework.** For any destination with elevated risk, includes a security assessment checklist — communication protocols, check-in schedules, emergency contacts, medical facilities, hostile-environment considerations, and digital security measures. Scaled to the actual risk level — does not apply conflict-zone protocols to routine domestic travel.

5. **Lists the information sources to consult.** For each category, names the specific sources the journalist should check — government travel advisories, press freedom indexes, embassy websites, journalist safety organisations, and professional networks that may have local knowledge.

## Output Format
600–1,000 words (length varies with destination complexity). Organised as a **categorised checklist** with items grouped under clear headings. Items requiring long lead times are marked. Destination-specific flags are highlighted. Ends with a **Pre-Departure Confirmation** section listing the 5–7 items that must be confirmed before the journalist boards the plane. Tone: practical, thorough, concise. Written so the journalist can print it and use it as a working checklist.

## Quality Criteria
- [ ] Checklist categories cover all critical logistics — nothing a working journalist would need is missing
- [ ] Items are prioritised by lead time — the journalist knows what to do first
- [ ] Destination-specific considerations are based on the actual location, not generic travel advice
- [ ] Safety framework is proportionate to the destination risk — neither paranoid nor negligent
- [ ] Information sources are specific and real — not generic advice to "check online"
- [ ] The pre-departure confirmation list is genuinely the 5–7 most critical items — not a recap of the full checklist
- [ ] Output is usable as a printed working checklist without reformatting

## Example

### Input
**Destination:** A mid-sized city in a Southeast Asian country with a mixed press freedom record
**Purpose:** Reporting on illegal logging in a protected forest region approximately 4 hours' drive from the city. Interviews with local communities, environmental NGOs, and (if possible) timber industry workers.
**Duration:** 8 days
**Team:** Reporter + photographer (2 people)
**Budget:** Moderate (national media outlet, not a freelance budget)
**Known risks:** Press freedom is restricted; several journalists covering environmental stories have faced harassment and legal threats. The logging area is remote with limited mobile coverage. Rainy season begins partway through the trip.
**Equipment:** DSLR cameras, audio recorders, laptop. No video.

### Output

**Travel Documents and Credentials**
- [ ] Confirm visa requirements for journalists specifically — some countries issue tourist visas to media workers but require journalist visas for formal reporting. Check the embassy website and call directly if unclear. *Arrange 3–4 weeks before departure.*
- [ ] Obtain press credentials from your outlet — a formal letter on letterhead identifying you as accredited journalists, translated into the local language. Carry multiple copies.
- [ ] Check whether the country requires foreign journalists to register with a government press office or information ministry upon arrival. Non-compliance can be grounds for detention or equipment seizure.
- [ ] Photocopy all passports, visas, and credentials. Store copies separately from originals and upload digital copies to a secure cloud location accessible from any device.

**Transport**
- [ ] Book international flights. Confirm baggage allowance for camera equipment.
- [ ] Research ground transport to the logging region. A 4-hour drive on potentially unpaved roads during rainy season requires a 4WD vehicle with a reliable driver who knows the route. *Book a local driver through a fixer or NGO contact — do not rely on taxi apps in remote areas.*
- [ ] Confirm road conditions during rainy season. Some roads become impassable — have an alternative route or contingency plan.
- [ ] Budget for fuel costs and driver downtime (the driver waits while you report).

**Accommodation**
- [ ] Book city accommodation near the area where you will conduct urban interviews (NGO offices, ministry buildings).
- [ ] Research accommodation options near the forest region. Options may be limited to guesthouses or homestays. *Confirm availability before arrival — do not assume walk-in availability in remote areas.*
- [ ] If homestaying with local communities, confirm expectations around payment, meals, and cultural norms through your local contact.

**Communications**
- [ ] Purchase a local SIM card on arrival for voice and data. Research which carrier has the best coverage in the remote forest region — coverage maps are available on carrier websites but may be unreliable.
- [ ] Carry a satellite phone or satellite communicator if mobile coverage in the logging area is genuinely unavailable. *Rent or borrow from your outlet — check import regulations, as satellite phones are restricted in some countries.*
- [ ] Establish a check-in protocol with your editor: scheduled calls at agreed times. If a check-in is missed, the editor should have a pre-agreed escalation plan.
- [ ] Set up encrypted messaging (Signal) for sensitive communications with sources. Assume local mobile networks are monitored.

**Equipment**
- [ ] Check import regulations for camera equipment. Some countries require equipment to be declared at customs and may charge a temporary import bond or carnet. Carry a detailed equipment list with serial numbers.
- [ ] Carry weatherproof bags or cases — rainy season conditions will damage unprotected equipment.
- [ ] Pack adequate memory cards, batteries, and charging equipment. Assume limited power access in the remote area. A portable battery bank is essential.
- [ ] Back up all files daily to an encrypted external drive and upload to cloud storage when connectivity allows.

**Safety and Security**
- [ ] Register with your country's embassy or consular service in the destination country. Carry the emergency consular number.
- [ ] Consult the Committee to Protect Journalists (CPJ), Reporters Without Borders (RSF), and your outlet's safety desk for current threat assessments related to environmental journalism in this country.
- [ ] Briefing on local legal risks: identify which activities could expose you to legal jeopardy (filming in restricted areas, publishing material the government considers defamatory, interviewing certain sources). Consult a local press freedom lawyer if possible.
- [ ] Do not carry all raw material in one location. If equipment is seized, you should have backups stored separately (cloud upload, drives left at the hotel).
- [ ] Brief your local contacts on your itinerary but not your full source list. Assess each contact's trustworthiness individually.

**Health**
- [ ] Check vaccination requirements and recommendations for the destination (WHO or national travel health service). Malaria prophylaxis may be needed for forested areas.
- [ ] Carry a personal first-aid kit including rehydration salts, insect repellent, and any personal medications. Identify the nearest hospital to the remote area.
- [ ] Confirm travel insurance covers medical evacuation from remote areas.

**Local Contacts and Fixers**
- [ ] Engage a local fixer with knowledge of the environmental beat and the specific region. *Arrange 2–3 weeks before departure.* Verify through journalist networks (CPJ, RSF, local press clubs) rather than cold-hiring on arrival.
- [ ] Make introductory contact with the environmental NGOs before departure. Confirm interview availability and ask for introductions to community contacts.
- [ ] Identify a local press freedom lawyer who can be reached by phone if legal issues arise during the trip.

**Finances**
- [ ] Confirm which payment methods work at the destination — cash (in what currency), credit cards, mobile payment. Remote areas are almost always cash-only.
- [ ] Carry sufficient local currency for the remote portion of the trip. Withdraw before leaving the city.
- [ ] Budget contingency for unexpected costs: road closures requiring alternative transport, equipment repair, extended accommodation.

**Pre-Departure Confirmation**

Before boarding the plane, confirm:
1. Visa and press credentials in hand, copies stored digitally
2. Local fixer confirmed with agreed itinerary and payment terms
3. Check-in protocol agreed with editor, including missed-check-in escalation plan
4. Equipment import requirements cleared — customs documentation ready
5. First two nights' accommodation confirmed
6. Travel insurance confirmed and emergency medical evacuation coverage verified
7. Embassy registration completed

## Known Limitations
- Claude cannot verify current visa requirements, travel advisories, road conditions, or security situations. All logistical details must be confirmed through the sources listed in the checklist. Conditions change rapidly — a checklist prepared weeks before departure must be re-verified close to the travel date.
- This skill provides a planning framework, not destination-specific intelligence. For high-risk destinations (active conflict, severe press restrictions, natural disaster zones), the journalist should also consult specialist hostile-environment advisors and their outlet's security team.
- Budget estimates and logistical specifics (driver costs, accommodation prices, SIM card availability) cannot be provided by Claude. The checklist identifies what to research; the journalist must source the specifics through local contacts and current information.

## Related Skills
- [press-office-finder](../people/press-office-finder.md) — find press contacts for organisations you will visit during the trip
- [person-biography-brief](../people/person-biography-brief.md) — research the people you will interview during the trip
- [legal-framework-brief](../fact-checking/legal-framework-brief.md) — understand the legal framework for journalism in the destination country
- [coverage-review-brief](../media/coverage-review-brief.md) — review how the story has been covered before you arrive

---
name: location-request-letter-writer
status: beta
category: pre-production
subcategory: pre-production
version: 1.0
eval_score: null
tags: [location, permissions, letter, access, filming, pre-production]
---

# Location Request Letter Writer

## What This Skill Does
Drafts a professional, ready-to-send letter requesting permission to film or photograph at a specific location, addressed to the relevant property owner or authority.

## When To Use This Skill
- You have identified a filming location and need written permission before the shoot
- You are approaching a public body, private business, or institutional landlord for access
- You need to give a location manager or fixeran approved letter template to adapt locally
- You are submitting a permit application that requires a formal access request

## What You Need To Provide
**Required:**
- Location name and address
- Type of production (documentary, news report, YouTube series, podcast promo shoot, etc.)
- Intended shoot dates and approximate hours
- Size of crew (rough headcount)
- What you intend to film and why this location matters to the story

**Optional:**
- Broadcaster, platform, or commissioning body (if confirmed)
- Whether you need exclusivity or can share the space
- Any special equipment (drones, lighting rigs, vehicles)
- Contact name at the property if known
- Whether a recce visit is also being requested

## How Claude Approaches This
1. Identifies the type of location owner (private individual, local authority, corporate property manager, heritage body, etc.) and adjusts the register and emphasis accordingly — a letter to a council planning department reads differently from one to a café owner.
2. Leads with a clear, one-paragraph summary of who is asking, what the production is, and what access is needed — written so the recipient can answer without reading further.
3. Details the practical logistics in a short numbered section: dates, crew size, equipment, any disruption, and how it will be managed. Addresses liability and insurance coverage briefly so the recipient does not need to ask.
4. Closes with a specific next step and a named contact, keeping the tone warm but professional throughout.

## Output Format
Single-page formal letter, 350–500 words. Structured as: sender block → date → recipient block → subject line → opening paragraph → logistics section → closing paragraph → sign-off. Formal business English, accessible to any adult reader. No jargon. No legalese. Bullet points only in the logistics section — everything else in prose.

## Quality Criteria
- [ ] The first paragraph tells the recipient exactly what is being asked without needing to read further
- [ ] Crew size, dates, and hours are stated clearly and specifically
- [ ] Insurance and liability coverage is mentioned, even briefly
- [ ] The tone is professional but human — not cold or bureaucratic
- [ ] A clear next step and named contact are given in the closing paragraph
- [ ] No placeholder text remains anywhere in the letter

## Example

### Input
Location: Westgate Covered Market, a Victorian-era indoor market in a mid-size UK city
Production: A 3-part documentary series for a public broadcaster about the decline and revival of indoor markets
Shoot dates: 14–16 April, approximately 08:00–18:00 each day
Crew: Director, camera operator, sound recordist, producer — 4 people
Filming: Wide establishing shots of the market interior, interviews with traders at their stalls, observational footage of shoppers
Broadcaster: Confirmed commission from a regional public broadcaster
Special equipment: None — handheld camera, small portable audio kit only
Recce: Requesting a recce visit the week before

### Output

**Northlight Documentary Films**
12 Riverside Studios, Canal Quarter
[City], [Postcode]
production@northlightfilms.co.uk

19 March 2026

**The Market Manager**
Westgate Covered Market
[Address]
[City], [Postcode]

**Subject: Filming Permission Request — Documentary Series, 14–16 April 2026**

Dear Market Manager,

I am writing on behalf of Northlight Documentary Films to request permission to film inside Westgate Covered Market across three days in April. We are producing a documentary series — currently in production for a regional public broadcaster — about the history and ongoing renewal of Britain's covered markets. Westgate is central to our story, and we would be grateful for the opportunity to capture it on camera with your permission.

**What we are proposing:**

- **Dates:** Tuesday 14 April to Thursday 16 April 2026, 08:00–18:00 each day
- **Crew:** Four people — director, camera operator, sound recordist, and producer
- **Equipment:** Handheld camera and a small portable audio kit. No lighting rigs, no drones, no heavy equipment
- **What we will film:** Wide shots of the market interior, interviews with willing traders at their stalls, and observational footage of the market in its normal working day. We will not film any individual shopper without their explicit consent
- **Disruption:** Minimal. Our crew size and kit mean we can work unobtrusively alongside your normal trading hours. We will agree any specific access arrangements with you in advance
- **Insurance:** Northlight Documentary Films holds full public liability insurance to £5 million. We are happy to share our certificate in advance of the shoot

We would also welcome a short recce visit during the week of 7 April, if convenient, so we can confirm camera positions and introduce ourselves to your team.

We are genuinely enthusiastic about this project and would be delighted to share the finished programme with you once it airs. If you have any questions or would like to discuss the details further, please contact me directly.

Yours sincerely,

**[Producer Name]**
Series Producer, Northlight Documentary Films
[Phone] · production@northlightfilms.co.uk

## Known Limitations
- Claude cannot verify local permit requirements, listed building restrictions, or any specific rules that apply to a given authority or venue — always check with the relevant body before submitting.
- Letters involving heritage sites, government buildings, or locations with active security protocols will need legal review before sending.
- If the property owner is not known, Claude cannot identify or research them — you must supply the correct recipient details.
- The letter will not include specific insurance policy numbers or certificate references; those must be added manually from your insurer.

## Related Skills
- [shoot-schedule-builder](../tv-documentary/pre-production/shoot-schedule-builder.md)
- [location-brief-writer](../tv-documentary/pre-production/location-brief-writer.md)
- [release-form-checklist](../tv-documentary/pre-production/release-form-checklist.md)

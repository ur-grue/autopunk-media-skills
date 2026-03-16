---
name: press-release-writer
status: stable
category: pr-communications
subcategory: press-office
version: 1.0
eval_score: 4.6
tags: [pr, press-release, press-office, announcement, newswire]
---

# Press Release Writer

## What This Skill Does
Writes a complete, newswire-ready press release from a briefing note, following inverted-pyramid structure and standard AP/PR-wire conventions.

## When To Use This Skill
- You need to announce a product launch, partnership, appointment, award, or organisational milestone
- You have a briefing note or bullet-point facts and need a publication-ready document within the hour
- You want a draft that wire services (PR Newswire, Business Wire, Globe Newswire) will accept without structural edits
- The communications team is small and needs to produce multiple releases in a single day

## What You Need To Provide
**Required:** The core announcement (what happened, who is involved, when, where); at least one attributed quote from a named spokesperson with their title; the organisation's city/state of origin for the dateline.

**Optional:** Embargo date and time; a second quote from a partner, client, or external voice; supporting data or statistics; background context; boilerplate "About" paragraph; media contact name, phone, and email.

## How Claude Approaches This
1. Identifies the single most newsworthy fact and places it in the headline and opening sentence — no "we are pleased to announce" throat-clearing.
2. Builds the first paragraph to answer who, what, when, where, and why-it-matters in under 50 words.
3. Expands in subsequent paragraphs in descending order of news value, integrating quotes at natural breaks rather than front-loading them.
4. Closes with boilerplate, embargo notice (if provided), and a standard media contact block formatted for wire distribution.
5. Flags any factual gaps that would require confirmation before publication.

## Output Format
400–600 words. Headline in title case, sub-headline optional. Dateline in AP style (CITY, State, Month DD, YYYY —). Body in short paragraphs (2–3 sentences each). One or two pull quotes in quotation marks with full attribution. "###" end mark. Contact block at the foot. Plain prose — no bullet points in the body. Tone: neutral third-person, factual, formal but not stiff.

## Quality Criteria
- [ ] Headline states the news, not the marketing spin
- [ ] First paragraph contains who, what, when, where, and significance
- [ ] No quote appears before the second paragraph
- [ ] All quotes are attributed to a named individual with title and organisation
- [ ] No unsupported superlatives ("world-leading", "revolutionary") without a source
- [ ] Boilerplate and contact block are present and correctly formatted
- [ ] Document ends with "###"

## Example

### Input
Announcement: Meridian Health Network is opening a new telehealth hub in Phoenix, Arizona, next month. It will serve rural patients across a five-state region and is the first such facility the organisation has built entirely from philanthropy funding — $12 million raised over two years.

Spokesperson: Dr. Amara Osei, Chief Medical Officer, Meridian Health Network. Quote: "Rural communities have waited too long for the same standard of care available in cities. This facility changes that for 400,000 patients."

Second quote: James Hartwell, Director, Hartwell Family Foundation (the lead donor). Quote: "We funded this because we believe access to a doctor shouldn't depend on your postcode."

Boilerplate: Meridian Health Network is a non-profit healthcare provider operating 47 clinics across the American Southwest. Founded in 1988, Meridian serves more than 1.2 million patients annually.

Contact: Press office, press@meridianhealth.example.com, (602) 555-0182.

Embargo: None.

### Output
FOR IMMEDIATE RELEASE

**Meridian Health Network Opens $12 Million Telehealth Hub to Reach 400,000 Rural Patients Across Five States**

*First major telehealth facility funded entirely through philanthropy launches in Phoenix next month*

PHOENIX, Ariz., March 16, 2026 — Meridian Health Network will open a new telehealth hub in Phoenix next month, expanding specialist care to an estimated 400,000 rural patients across Arizona, New Mexico, Utah, Nevada, and Colorado. The $12 million facility, funded entirely through philanthropic donations over two years, is the first of its kind built without government or insurance reimbursement revenue.

The hub will connect patients in under-served rural areas to primary care physicians, mental health counsellors, and specialist consultants via high-definition video. Extended weekday hours and Saturday morning slots are designed to accommodate agricultural and shift workers who cannot travel to urban clinics.

"Rural communities have waited too long for the same standard of care available in cities," said Dr. Amara Osei, Chief Medical Officer of Meridian Health Network. "This facility changes that for 400,000 patients."

The Hartwell Family Foundation provided the lead gift in the capital campaign. "We funded this because we believe access to a doctor shouldn't depend on your postcode," said James Hartwell, the Foundation's Director.

Meridian Health Network currently operates 47 clinics across the American Southwest. The Phoenix telehealth hub will function as a regional coordination centre, with satellite access points at 12 existing rural clinics expected to come online within six months of the main facility's launch.

An opening event for media is scheduled at the facility on the morning of April 14. Details will be circulated separately.

**About Meridian Health Network**
Meridian Health Network is a non-profit healthcare provider operating 47 clinics across the American Southwest. Founded in 1988, Meridian serves more than 1.2 million patients annually.

**Media Contact**
Press Office, Meridian Health Network
press@meridianhealth.example.com
(602) 555-0182

###

## Known Limitations
- Claude cannot verify facts, statistics, or quotes provided in the briefing — all figures must be confirmed by the communications team before distribution.
- For highly regulated sectors (pharmaceuticals, financial services, publicly listed companies), legal and compliance review is essential before any release is sent; Claude does not apply sector-specific disclosure rules.
- If no genuine news value is present in the briefing, Claude cannot manufacture it — it will write the strongest possible version of what exists, which may not achieve media pickup.

## Related Skills
- [media-alert-writer](./media-alert-writer.md)
- [boilerplate-writer](./boilerplate-writer.md)
- [journalist-pitch-email](../media-relations/journalist-pitch-email.md)

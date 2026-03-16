---
name: media-alert-writer
status: stable
category: pr-communications
subcategory: press-office
version: 1.0
eval_score: 4.5
tags: [pr, media-alert, press-office, event, journalist-outreach]
---

# Media Alert Writer

## What This Skill Does
Writes a short, factual media alert inviting journalists to a press conference, launch event, or photo opportunity, formatted for fast scanning.

## When To Use This Skill
- You are holding a press conference, product launch, grand opening, or photo call and need to notify journalists
- You need to issue a media alert 24–72 hours before the event
- A full press release is not needed — you just want journalists to show up, then cover the story from what they witness
- You need a version that can be pasted directly into email or shared via PR distribution software

## What You Need To Provide
**Required:** Event name and description (one sentence); date, time, and address (including room or entrance details); name and title of the key speaker or subject; the news peg — why this is happening now; RSVP contact name, email, and phone.

**Optional:** Additional speakers or attendees; on-site PR contact for the day; photography or filming permission status; parking or access instructions; note on what journalists will have access to (exclusive interviews, product demo, etc.).

## How Claude Approaches This
1. Opens with a bold, descriptive subject line formatted as if it were an email subject, followed by a "MEDIA ALERT" label.
2. Writes a one-sentence lead that answers: what is happening, who is hosting it, and why it is newsworthy today.
3. Formats the logistical core — What, When, Where, Who — in a scannable block rather than prose paragraphs, so a journalist can check the facts at a glance.
4. Adds a brief paragraph (2–3 sentences) on the news context: why this event matters and what coverage hook it offers.
5. Closes with a clear RSVP line, accreditation instructions if relevant, and the on-site contact for the day.

## Output Format
150–250 words. "MEDIA ALERT" label at top. Bold field labels (WHAT / WHEN / WHERE / WHO / WHY) with concise content beside or below each. Brief context paragraph in prose. RSVP block at foot. No boilerplate, no quotes, no ###. Tone: direct, factual, journalist-friendly. First person ("we") acceptable only in the RSVP line.

## Quality Criteria
- [ ] "MEDIA ALERT" label appears at the top of the document
- [ ] WHAT / WHEN / WHERE / WHO / WHY fields are all present and filled
- [ ] Date and time include timezone where relevant
- [ ] Full street address is included, not just neighbourhood or city
- [ ] RSVP contact has name, email, and phone
- [ ] Total length does not exceed 250 words
- [ ] No unsupported claims about the event's significance

## Example

### Input
Event: Greenway Urban Farms is opening its first rooftop growing facility in a disused commercial building in downtown Portland, Oregon. The opening marks the first inner-city commercial rooftop farm in the state.

Date/time: Tuesday, March 24, 2026, 10:00 a.m. – 12:00 p.m. Pacific Time

Venue: Greenway Urban Farms Rooftop Facility, 4th Floor, 802 NW Davis Street, Portland, OR 97209. Entry via freight elevator, lobby level.

Key speaker: Founder and CEO, Maya Delacroix

Photography: Full media access to rooftop for photography and filming. Drone filming not permitted.

RSVP: Communications Manager, Tomás Reyes, tomas@greenwayurbanfarms.example.com, (503) 555-0247. RSVP by March 21.

### Output
**MEDIA ALERT**

**Oregon's First Inner-City Commercial Rooftop Farm Opens in Portland — Media Invited**

Greenway Urban Farms will open the doors to Oregon's first inner-city commercial rooftop growing facility on March 24, offering media a first look at a farming model the company says could supply fresh produce to 50 downtown restaurants year-round.

**WHAT:** Opening of Oregon's first inner-city commercial rooftop farm

**WHEN:** Tuesday, March 24, 2026 | 10:00 a.m. – 12:00 p.m. PT

**WHERE:** Greenway Urban Farms Rooftop Facility, 4th Floor
802 NW Davis Street, Portland, OR 97209
*(Entry via freight elevator, lobby level)*

**WHO:** Maya Delacroix, Founder and CEO, Greenway Urban Farms

**WHY:** The facility is the first commercial rooftop farm in Oregon, converting a disused commercial building into a year-round urban food source.

Media will have full rooftop access for photography and filming. Drone filming is not permitted on site.

**RSVP by March 21:**
Tomás Reyes, Communications Manager
tomas@greenwayurbanfarms.example.com | (503) 555-0247
*(On-site contact on the day)*

## Known Limitations
- A media alert does not substitute for a press release — it does not carry quotes, background detail, or boilerplate. If journalists need more context to decide whether to cover the story, pair this alert with a short press release.
- Claude cannot confirm that the event details are accurate — any error in date, time, or address will be reproduced in the output. Always verify logistics before sending.
- For events requiring security clearance or press accreditation, additional accreditation fields will need to be added manually.

## Related Skills
- [press-release-writer](./press-release-writer.md)
- [journalist-pitch-email](../media-relations/journalist-pitch-email.md)

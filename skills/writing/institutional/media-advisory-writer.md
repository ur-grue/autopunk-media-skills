---
name: media-advisory-writer
status: beta
category: writing
subcategory: institutional
version: 1.0
eval_score: null
tags: [media advisory, press, pr, event, news alert]
---

# Media Advisory Writer

## What This Skill Does
Drafts a concise, correctly formatted media advisory that gives journalists everything they need to decide whether to cover an event, with all logistical details in a scannable layout.

## When To Use This Skill
- You are announcing a press conference, public event, product launch, or broadcast-worthy moment and want journalists to show up or tune in.
- You need a short alert — not a full press release — that leads with the event, not the backstory.
- A deadline is close and you need a professional document ready in minutes, not hours.

## What You Need To Provide
**Required:**
- The event type (press conference, panel discussion, live demonstration, etc.)
- Date, time, and time zone
- Location or streaming link
- The core news angle in one sentence — what is happening and why it matters
- Name and contact details for media inquiries

**Optional:**
- Names and titles of speakers or participants
- Whether credentials or photo ID are required for entry
- Embargo time, if applicable
- Background context (1–2 sentences) for journalists unfamiliar with the story

## How Claude Approaches This
1. Opens with the event headline — a single declarative sentence answering "what is happening and why does it matter to a journalist's audience."
2. Formats the Who / What / When / Where / Why block so an editor can scan it in under ten seconds and decide whether to assign a reporter.
3. Adds a short "Details" paragraph with any essential context, then a clean media contact block at the foot of the document.

## Output Format
- Length: 200–350 words total
- Structure: Headline → Date line → WHO / WHAT / WHEN / WHERE / WHY block → one paragraph of detail → boilerplate or background (1–2 sentences) → media contact block
- Tone: factual, declarative, zero promotional language
- Language register: formal but plain; written for a news editor who reads fifty advisories a day
- Formatting: bold labels for the five W's; contact block separated by a horizontal rule or clear spacing

## Quality Criteria
- [ ] The headline states the specific event and news value without adjectives like "exciting" or "groundbreaking."
- [ ] Every logistical fact (time zone, address or URL, credential requirements) appears in the five-W block.
- [ ] The document contains no promotional phrasing — no "we are thrilled to announce" or similar.
- [ ] The media contact block includes a name, phone number, and email address.
- [ ] The entire advisory fits on a single page at standard font sizes.

## Example

### Input
Event type: Press conference
News angle: A regional water authority is releasing findings from a two-year independent review of treatment plant contamination levels following a series of public complaints.
Date: Tuesday, 14 April 2026
Time: 10:00 AM Eastern
Location: Riverside Conference Centre, 440 Lakefront Drive, Room 2B
Speakers: Authority director (name: Carla Osei), lead independent reviewer (name: Dr. Marcus Yuen)
Media contact: Communications manager Janine Ferreira, jferreira@riverwater.example.org, +1 555 204 7700
Credentials required: Press ID

### Output
**MEDIA ADVISORY**

**For Immediate Release**
Tuesday, 14 April 2026

---

**Water Authority to Release Independent Contamination Review Findings at Press Conference**

**WHO:** Riverside Regional Water Authority, with independent reviewer Dr. Marcus Yuen

**WHAT:** Press conference presenting the results of a two-year independent review of contamination levels at regional water treatment facilities. Authority Director Carla Osei and Dr. Yuen will present findings and take questions from credentialed media.

**WHEN:** Tuesday, 14 April 2026 — 10:00 AM Eastern (doors open 9:30 AM)

**WHERE:** Riverside Conference Centre, 440 Lakefront Drive, Room 2B

**WHY:** The authority commissioned the independent review in response to sustained public complaints about taste, odour, and clarity in municipal water supplies across three counties. This marks the first full public disclosure of findings.

**Details**
Media must present valid press credentials at the door. No advance registration is required. A summary report will be distributed to attending journalists at the start of the conference. The full report will be available for download after the event at the authority's website. Embargo: findings are under embargo until the start of the press conference.

*Riverside Regional Water Authority provides drinking water and wastewater services to approximately 480,000 residents across Lakefront County and neighbouring municipalities.*

---

**Media Contact**
Janine Ferreira, Communications Manager
jferreira@riverwater.example.org
+1 555 204 7700

## Known Limitations
- Does not verify that the logistical information you provide is accurate — double-check dates, times, and addresses before sending.
- Not suited for product launch announcements that require marketing language; this skill writes in strict news-advisory register only.
- If the event involves a complex legal or scientific finding, the output will summarise but will not explain the technical substance — you will need to add that context yourself or use the `research-brief-creator` skill first.

## Related Skills
- [press-release-writer](./press-release-writer.md)
- [press-kit-generator](../../tv-documentary/post-production/press-kit-generator.md)

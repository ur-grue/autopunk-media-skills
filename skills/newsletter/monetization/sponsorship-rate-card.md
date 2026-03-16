---
name: sponsorship-rate-card
status: stable
category: newsletter
subcategory: monetization
version: 1.0
eval_score: 4.4
tags: [newsletter, monetization, sponsorship, rate-card, advertising, media-kit]
---

# Sponsorship Rate Card

## What This Skill Does
Generates a formatted newsletter sponsorship rate card that documents placement options, audience metrics, pricing tiers, and terms — suitable for sending to prospective sponsors or publishing as part of a media kit.

## When To Use This Skill
- A potential sponsor has asked "what are your rates?" and you do not yet have a document to send them
- You are preparing a media kit for outbound sponsor prospecting and need the rate card component
- Your current rates need to be formalised from informal notes or email threads into a professional document
- You have grown your list significantly and want to update your rates and reframe the value proposition for sponsors

## What You Need To Provide
**Required:** Newsletter name, subscriber count, open rate, click rate (if available), and publishing cadence; the placement options you offer or are considering (e.g. dedicated send, top-of-newsletter banner, mid-newsletter mention, sponsored post, classified ad)
**Optional:** Audience demographics or professional profile (the more specific the better — sponsors pay more for precisely defined audiences); CPM or flat-rate pricing preferences; any existing sponsors you are comfortable naming as references; exclusivity terms; typical format constraints for each placement (word count, image specs)

## How Claude Approaches This
1. Calculates or presents CPM (cost per thousand impressions) ranges for each placement based on provided metrics and industry benchmarks for newsletter advertising, flagging if the provided rates are above or below typical ranges for the audience type
2. Describes each placement option with specificity: what it includes, where it appears in the edition, typical format and length, and what the sponsor can expect in terms of reader context when they encounter the ad
3. Frames the audience description in the language sponsors use when evaluating media buys — job titles, decision-making authority, professional context — not in editorial language about what makes the newsletter interesting to read
4. Structures the document so the most valuable placement leads (not buried in a wall of text) and pricing is unambiguous — sponsors should not need to write back to ask what a placement actually costs
5. Includes standard terms that protect both parties: booking lead time, content approval process, exclusivity conditions, cancellation policy

## Output Format
A structured document with these sections: **Audience Overview** (3–5 bullet points in sponsor language), **Placement Options** (one sub-section per placement, each with format description and price), **Audience Demographics** (if provided), **Terms & Process** (booking lead time, approval, exclusivity, cancellation), **Contact** (placeholder). Formatted for a professional document: clear headers, consistent pricing format, no marketing hyperbole. Length: 400–600 words. Designed to be sent as-is or dropped into a PDF media kit.

## Quality Criteria
- [ ] Every placement option has a specific price — no "pricing available on request" unless that is a deliberate strategy the editor has chosen
- [ ] The audience description uses sponsor-relevant language (professional titles, purchasing influence, decision-making context) not editorial enthusiasm ("our readers are curious and engaged")
- [ ] CPM rates are calculated and contextualised — the sponsor can see the implied cost per impression, not just a flat fee
- [ ] Terms are complete enough that a first-time sponsor knows what they are agreeing to before signing
- [ ] The document is clean enough to send without editing — no placeholders in the final output except [YOUR NAME/CONTACT]

## Example

### Input
Newsletter: *The Friction Report*
Subscribers: 6,200 active (out of 8,100 total list)
Open rate: 46% (average last 90 days)
Click rate: 5.2%
Cadence: Weekly, Wednesday mornings
Audience: Product managers and UX professionals, primarily at technology companies and digital agencies. Approximately 60% manager or director level, 25% senior individual contributors, 15% founders.
Placement options wanted:
1. Top-of-edition sponsored note (200-250 words, written by sponsor, reviewed by editor)
2. Mid-edition product mention (60-80 words, written by editor in newsletter voice)
3. Dedicated sponsor edition (full edition, clearly labelled as sponsored, written collaboratively)
Rate preferences: Flat fee per send
Exclusivity: One sponsor per edition, category exclusivity available for 3-month packages
Booking lead time: 2 weeks minimum

### Output

---

## The Friction Report — Sponsorship Rate Card

### Audience Overview
- **6,200 active subscribers** — product managers, UX professionals, and design leads at technology companies and digital agencies
- **46% average open rate** (industry benchmark for professional B2B newsletters: 22–28%)
- **5.2% click rate** across editorial content
- Audience breakdown: 60% manager/director level, 25% senior ICs, 15% founders
- Decision-making authority: software purchasing, tooling budgets, agency selection, team hiring

---

### Placement Options

**1. Top-of-Edition Sponsored Note**
Appears above the first editorial paragraph. 200–250 words, written by the sponsor, reviewed and approved by the editor for tone fit. Includes one link. Published once.

**Rate: $950 per edition**
*Implied CPM (on 2,852 opens): $333 per 1,000 opens*

---

**2. Mid-Edition Product Mention**
60–80 words, written by the editor in the newsletter's voice. Appears after the first section break. Includes one link. The editor writes the copy; the sponsor reviews for factual accuracy.

**Rate: $550 per edition**
*Implied CPM: $193 per 1,000 opens*

---

**3. Dedicated Sponsor Edition**
Full edition, clearly labelled "Sponsored Edition" in the subject line and header. Written collaboratively: sponsor provides brief, editor writes and retains editorial control over structure and tone. One send.

**Rate: $2,800 per edition**
*Please enquire for availability — maximum one per quarter*

---

**3-Month Packages**
Any placement can be booked as a 3-edition package with category exclusivity (no competing sponsors in the same product category for the duration).

3x Top-of-Edition: $2,600 *(save $250)*
3x Mid-Edition: $1,500 *(save $150)*

---

### Terms & Process

- **Booking lead time:** Minimum 2 weeks before send date
- **Content approval:** All sponsor-written copy reviewed by the editor. Changes may be requested for tone fit. Factual claims are the sponsor's responsibility.
- **Exclusivity:** One sponsor per edition. Category exclusivity available on 3-month packages only.
- **Cancellation:** Full refund if cancelled more than 10 days before send date. No refund within 10 days.
- **Payment:** Invoice on booking, due before send.

---

### Contact

[YOUR NAME]
[YOUR EMAIL]
[YOUR WEBSITE]

## Known Limitations
- CPM benchmarks used by this skill are based on general professional newsletter industry norms as of early 2026; actual market rates vary by niche, audience quality, and sponsor demand — treat the contextualisation as directional, not prescriptive
- The skill cannot set your prices for you — it can calculate implied CPMs and flag if rates seem out of range, but pricing strategy depends on your growth trajectory, exclusivity scarcity, and negotiating position
- Audience demographics can only be as specific as what you provide: if you do not have verified data on your readers' job titles or seniority levels (e.g. from a reader survey), the audience section will be appropriately qualified rather than invented
- This skill produces a rate card document, not a full media kit — audience growth charts, case studies, and testimonial pages are not included

## Related Skills
- [paid-tier-pitch-writer](./paid-tier-pitch-writer.md)
- [landing-page-copy-writer](../growth/landing-page-copy-writer.md)
- [niche-positioning-brief](../strategy/niche-positioning-brief.md)

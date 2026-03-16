---
name: youtube-media-kit-generator
status: stable
category: youtube
subcategory: business
version: 1.0
eval_score: 4.4
tags: [youtube, business, media-kit, monetization, sponsorship, brand-partnerships]
---

# YouTube Media Kit Generator

## What This Skill Does
Generates the complete text content for a YouTube channel media kit — the document brands use to evaluate a creator before committing to a partnership — structured as a ready-to-design one or two-page document.

## When To Use This Skill
- A brand has asked for a media kit and you don't have one
- You're building a sponsorship pitch pipeline and want a professional leave-behind document
- You're attending a creator event or industry conference and want a document that represents the channel
- You're working with a graphic designer to produce a media kit and need all the copy before they start

## What You Need To Provide
**Required:** Channel name; channel niche and one-line description of what you make; subscriber count; average monthly views; average view duration (or completion rate); top 3 performing videos (title and view count); audience demographic data (age range, gender split, top 3 geographic markets).
**Optional:** Engagement rate (likes + comments / views); past brand partnerships and categories; content formats offered and rates; email list or other platform following; awards, press mentions, or credibility markers; channel growth trajectory (e.g., "grew from 10K to 78K in 18 months").

## How Claude Approaches This
1. Organizes the channel story in the order a brand evaluator reads it: channel identity first (who are you, what do you make, why does it matter to a brand), then audience data, then format and rate options. Brands skim — this skill structures the document for skimming.
2. Translates raw metrics into brand-relevant framing: "78,000 subscribers" becomes "78,000 working professionals who have already self-selected into content about tools and productivity." Numbers gain meaning from context.
3. Writes all rate card language clearly and without hedging — vague rate cards are the most common reason media kits fail to convert. If rates are not provided, generates placeholder copy with clear instructions to fill in.

## Output Format
Six labeled sections formatted for a designer to lay out on 1–2 pages:
1. Channel Identity (2–3 sentences)
2. Audience Profile (demographic data in plain-language summary + formatted data table)
3. Content Formats and Integration Options (bulleted list)
4. Rate Card (table format with integration type and price)
5. Past Partners (optional section — include if data provided)
6. Contact and Next Steps

Total copy length: 350–500 words. All sections clearly labeled. Written for a brand reader, not a viewer.

## Quality Criteria
- [ ] Channel Identity section leads with audience value, not channel history
- [ ] Audience data is presented in both summary prose and formatted data — not one or the other
- [ ] Integration options are specific and realistic for the channel size and format
- [ ] Rate card is complete and clearly formatted — no vague language ("contact for pricing" only as last resort)
- [ ] Tone is professional and confident — the document should feel like a serious media property, not a request for charity
- [ ] All sections are distinct and non-repetitive

## Example

### Input
**Channel:** The Productive Developer
**Niche:** Productivity tools and workflows for software developers and technical professionals
**Description:** Review and tutorial content on developer tools, focus systems, and workflow optimization
**Subscribers:** 78,000
**Monthly views:** 310,000
**Avg view duration:** 8.4 min on 14-min videos (60% completion)
**Top videos:** "The VSCode Setup I Use Every Day" (280,000 views), "I Tested 6 Task Managers for Developers — Final Ranking" (195,000 views), "Stop Using Notion Wrong" (148,000 views)
**Demographics:** 72% male / 28% female; Age 24–38 primary (67%); Top markets: USA (42%), UK (14%), Germany (9%), Canada (8%)
**Engagement rate:** 3.2%
**Growth:** 12K to 78K in 24 months
**Past partners:** Developer tool SaaS company (affiliate), peripheral brand (dedicated video)
**Formats offered:** Dedicated video review, mid-roll integration, product walkthrough, newsletter mention
**Rates:** Dedicated video $2,500 / Mid-roll $900 / Newsletter mention $400

### Output

---

**THE PRODUCTIVE DEVELOPER**
*YouTube Channel Media Kit*

---

**1. CHANNEL IDENTITY**

The Productive Developer makes review and tutorial content for software developers and technical professionals who take their tools seriously. 78,000 subscribers choose this channel because it answers the question developers actually ask — does this tool improve how I work, or doesn't it? — with honest, long-term-use testing rather than first-impressions content.

Grown from 12,000 to 78,000 subscribers in 24 months. 310,000 views per month. 60% average completion rate on 14-minute videos.

---

**2. AUDIENCE PROFILE**

The Productive Developer audience is primarily working software developers, technical writers, and engineers between 24 and 38 years old — a demographic with above-average disposable income, high willingness to pay for tools that save time, and strong purchasing autonomy.

| Metric | Data |
|--------|------|
| Subscribers | 78,000 |
| Monthly Views | 310,000 |
| Avg. Completion Rate | 60% |
| Engagement Rate | 3.2% |
| Primary Age Range | 24–38 (67% of audience) |
| Gender | 72% male / 28% female |
| Top Markets | USA 42% · UK 14% · Germany 9% · Canada 8% |

Comments consistently run toward purchasing intent — "Is this worth it?", "Which plan do you use?", "Does this work better than X?" — indicating an audience actively in-market for tools and subscriptions.

---

**3. CONTENT FORMATS AND INTEGRATION OPTIONS**

- **Dedicated review video** — Full 10–16 minute video with 60-day use period. Includes on-camera demonstration, honest assessment, and affiliate link in description and pinned comment for 90 days.
- **Mid-roll integration** — 60–90 second mid-roll placement in a standard tutorial video. Scripted by creator, approved by brand before publish.
- **Product walkthrough** — Tutorial-format video demonstrating a specific product feature or workflow. Ideal for software with an onboarding use case.
- **Newsletter mention** — Placement in the channel's email newsletter (current list: [X subscribers]) with a direct link and 1–2 sentence context note.

---

**4. RATE CARD**

| Format | Rate |
|--------|------|
| Dedicated review video | $2,500 |
| Mid-roll integration | $900 |
| Product walkthrough | $1,800 |
| Newsletter mention | $400 |
| Bundle (dedicated video + newsletter) | $2,750 |

All rates include one revision round. Dedicated video and walkthrough include 90-day pinned affiliate link. Exclusivity windows available on request.

---

**5. PAST PARTNERSHIP CATEGORIES**

Developer tools (SaaS), productivity peripherals, desktop and workspace equipment. Audience responds best to tools they can use immediately in a professional workflow.

---

**6. CONTACT AND NEXT STEPS**

Ready to discuss integration timing, campaign fit, or custom formats. Response within 48 hours.

**[Creator name]**
**[Email]**
**[Channel URL]**

---

## Known Limitations
- This skill generates the copy for a media kit, not the designed document itself. Use the output as a brief for a graphic designer, or structure it yourself in Canva or a PDF template — the sections are designed to map directly to standard one-page media kit layouts.
- Rates in this example are illustrative and not market recommendations. Rates vary significantly by niche, audience geography, and platform demand. Research current creator market rates before finalizing your rate card.
- This skill cannot fabricate past partnership data. If you have no past brand deals to list, the Past Partners section should be omitted or replaced with a "categories I'm open to" note.

## Related Skills
- [brand-deal-pitch-writer](../business/brand-deal-pitch-writer.md)
- [sponsorship-email-writer](../business/sponsorship-email-writer.md)
- [audience-persona-builder](../channel-strategy/audience-persona-builder.md)

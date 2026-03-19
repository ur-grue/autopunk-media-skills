---
name: trending-topics-brief
status: beta
category: research
subcategory: media-competitive
version: 1.0
eval_score: null
tags: [trending, editorial-planning, beat-reporting, story-discovery, audience-signals]
---

# Trending Topics Brief

## What This Skill Does
Produces a short editorial brief that maps the trending conversations on a beat — identifying which topics are gaining public attention, why, and whether any of them represent a genuine news opportunity for your outlet.

## When To Use This Skill
- You are preparing for an editorial meeting and want to arrive with a clear picture of what is moving on your beat right now
- An editor has asked you to find a timely news peg for a story you were already planning
- You cover a fast-moving topic (politics, markets, health, culture) and need a weekly reset to spot what you may have missed
- You are planning content for the week and want to align at least some of it with documented audience interest rather than instinct alone

## What You Need To Provide
**Required:** Your beat or topic area (one sentence describing what you cover); the time window you are interested in (past 24 hours, past week, past month); your platform or format (news article, video, podcast, newsletter)

**Optional:** The audience you write for (general public, specialist professionals, specific demographic); any signals you have already noticed (topics that came up in reader mail, on your own social feeds, in tip-offs from sources); topics you want to deliberately exclude

## How Claude Approaches This
1. Identifies the categories of trending signal that are most relevant to the stated beat — not all platforms trend the same stories, so the brief maps which signals matter most for the format and audience you described
2. For each identified trending topic or cluster, assesses whether it reflects a durable story (an issue with ongoing developments) or a spike (a single event or reaction that is likely to fade quickly), and flags the distinction clearly
3. Evaluates each trending topic against a simple editorial test: is there a news story here that your outlet is not already covering, or a new angle on a story you are covering? The output prioritises topics that pass that test

## Output Format
A brief with three sections: **Trending Now** (a numbered list of four to six topics gaining attention on the stated beat, each with a two-sentence description covering what it is and why it is moving), **Editorial Assessment** (for each topic: a one-line verdict — "pursue," "monitor," or "pass" — with a single sentence explaining the reasoning), and **Recommended Angle** (for the one or two topics rated "pursue," a concise suggested story angle of two to three sentences). Total length: 300 to 450 words. Practical, direct tone — this is a working document, not a presentation.

## Quality Criteria
- [ ] Each trending topic in the list is described specifically enough that a reporter could immediately begin researching it without further clarification
- [ ] The editorial assessment distinguishes meaningfully between "pursue," "monitor," and "pass" — at least one of each should appear if the topics genuinely differ
- [ ] Recommended angles are original relative to the stated beat — they should not replicate what any roundup of obvious coverage would already contain
- [ ] The brief is calibrated to the stated format and audience — a trending topic brief for a podcast sounds different from one for a daily news outlet
- [ ] No fabricated statistics, search volumes, or social media metrics are included in the output

## Example

### Input
Beat: Urban housing policy — I cover planning decisions, rental market conditions, and housing affordability, primarily for a general-audience city news outlet.

Time window: Past week.

Format: News articles, one to three per week.

Audience: Residents of a mid-to-large city, mixed ages, not specialist. Many are renters; some are homeowners; few are real estate professionals.

Signals I've already noticed: There's been a lot of reader mail about short-term rental platforms and their effect on long-term rental supply. Nothing specific has happened — it's more of a slow burn.

Exclude: Mortgage interest rates (our finance desk covers that).

### Output

---

**TRENDING NOW**

1. **Short-term rental caps** — Several city councils in comparable markets have moved this week to cap the number of nights a property can be listed on short-term rental platforms. The conversation is moving from advocacy to active policy, and reader interest is already signalled by your inbox.

2. **Social housing waiting lists** — A wave of local government budget announcements has prompted renewed public attention to the gap between housing need and social housing availability. Online discussion is picking up around wait times and eligibility criteria.

3. **Build-to-rent developments** — Planning approval for a large build-to-rent scheme in a comparable city sparked significant online debate about whether institutional landlords stabilise or distort the rental market. The conversation is spreading to other cities.

4. **Tenant blacklisting** — A report published this week by a housing rights organisation alleged that some property management companies share informal blacklists of tenants. The story is getting traction in tenant advocacy circles but has not crossed into mainstream city press yet.

5. **Adaptive reuse of commercial space** — Sustained discussion, partly driven by visible empty shopfronts, about converting unused commercial buildings into housing. More ambient than breaking, but interest is consistent.

---

**EDITORIAL ASSESSMENT**

1. Short-term rental caps — **Pursue.** Your reader mail confirms local appetite. Policy is moving, which gives you a natural news peg.
2. Social housing waiting lists — **Monitor.** Relevant to your audience, but without a local budget announcement to anchor it, the story risks being too general for your outlet right now.
3. Build-to-rent developments — **Pursue.** The policy debate is live and your audience includes renters directly affected. A local angle (any pending approvals in your city?) would make this immediate.
4. Tenant blacklisting — **Monitor.** Strong story, but it needs a local source — a tenant who has experienced this, or a local agency willing to comment — before it is publishable for a city outlet.
5. Adaptive reuse — **Pass for now.** Interest is real but diffuse. Worth revisiting when a specific local planning application creates a hook.

---

**RECOMMENDED ANGLES**

**Short-term rental caps:** Focus on the policy gap in your own city — has your city council been asked to consider a cap, and if not, why not? Contrast with cities that have enacted one. Reader mail gives you a ready-made source pool for tenant voices.

**Build-to-rent developments:** Find the most recent or pending build-to-rent planning application in your city and use it as the spine of a piece examining whether this type of development actually delivers the affordability it promises. Local planning records are public.

---

## Known Limitations
- Claude cannot access live social media platforms, search trend tools, or real-time audience data. The brief is built from the signals you describe and from knowledge of how issues typically travel across platforms — it cannot substitute for checking actual trend data yourself before publishing.
- Trending interest does not equal editorial value. The brief flags public attention, but your editorial judgment about newsworthiness, source availability, and outlet fit must override any suggested angle.
- For highly localised beats (a single neighbourhood, a small city), trending signals drawn from broader platforms may not reflect local interest accurately. Reader mail, source tip-offs, and community engagement are more reliable signals than national or global trend indicators.
- This skill does not generate social media metrics, search volumes, or audience size estimates. Any numbers in your output would be fabricated — do not add them.

## Related Skills
- [news-topic-monitor-brief](news-topic-monitor-brief.md)
- [press-roundup-writer](press-roundup-writer.md)
- [competitor-coverage-gap-finder](competitor-coverage-gap-finder.md)

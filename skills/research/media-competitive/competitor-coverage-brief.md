---
name: competitor-coverage-brief
status: beta
category: research
subcategory: media-competitive
version: 1.0
eval_score: null
tags: [competitive-research, editorial-planning, story-development]
---

# Competitor Coverage Brief

## What This Skill Does
Produces a structured summary of how other outlets have already covered a given topic, so you can enter any story with a clear picture of the existing media landscape.

## When To Use This Skill
- Before commissioning or pitching a new story, to avoid duplicating coverage that already exists
- When an editor asks "what else has been done on this?" and you need a fast, organised answer
- At the start of an investigation or feature to map which outlets have the deepest stakes in the story
- When preparing for an interview and you want to know what angles sources have already been asked about

## What You Need To Provide
**Required:** The topic or story subject (a sentence or a few keywords is enough). A list of outlet names or types you want included (e.g. "national newspapers, trade press, major podcasts").
**Optional:** A date range to limit the review. Any specific sub-angles you want tracked. The format your outlet publishes in (print, digital, broadcast) — this helps Claude flag the most relevant competitor formats.

## How Claude Approaches This
1. Reads the topic and identifies the core story question — what a piece on this subject is fundamentally trying to answer.
2. Works through each outlet or outlet type you listed and characterises how they have approached the topic: format used, angle taken, sources quoted, depth of coverage.
3. Synthesises the individual outlet notes into a brief that makes the competitive landscape readable at a glance — what has been done well, what has been done superficially, and where the field currently stands.

## Output Format
A brief of 400–600 words, structured in three parts:
- **Landscape overview** (2–3 sentences): the dominant narrative across all outlets examined.
- **Outlet-by-outlet notes** (bullet list): one to three sentences per outlet covering format, angle, notable sources, and depth.
- **Editorial takeaways** (3–5 bullets): what a new piece needs to do to add value given what already exists.

Tone is professional and direct — written for an editor or commissioning producer, not a general audience. No filler. Every sentence should inform a decision.

## Quality Criteria
- [ ] Every outlet listed in the input appears in the outlet-by-outlet notes with a specific angle described, not a generic summary
- [ ] The landscape overview accurately reflects what the outlet notes say — no new claims introduced at synthesis stage
- [ ] Editorial takeaways name specific gaps or opportunities, not general advice ("cover the human angle" is not acceptable)
- [ ] No outlet is described using only vague language ("covered it well") — each entry includes at least one concrete detail (format, source type, or specific angle)
- [ ] Output stays within the 400–600 word range

## Example

### Input
Topic: The rising cost of health insurance for self-employed workers.

Outlets to cover: national broadsheet press, personal finance magazines, small-business trade press, long-form podcast journalism.

Date range: last 18 months.

Our format: digital magazine, 2,000-word features aimed at freelancers and independent contractors.

### Output

**Landscape Overview**

Coverage of health insurance costs for self-employed workers over the past 18 months has been high in volume but narrow in scope. The dominant narrative across all outlet types frames the issue as a policy problem — driven by premium hikes and shrinking plan options on individual markets — with most pieces anchored to official statistics and quotes from insurance industry representatives. First-person or deeply reported human stories are rare, and the freelance workforce specifically (as distinct from small-business owners with employees) is consistently underserved.

**Outlet-by-Outlet Notes**

- **National broadsheet press:** Covered primarily as a healthcare policy story tied to legislative cycles. Typical format is 800–1,200 words, sourced from health economists and government spokespersons. The lived experience of individual freelancers rarely appears. Coverage spikes around open-enrollment periods then drops off.

- **Personal finance magazines:** Treat the subject as a consumer decision guide — how to choose a plan, how to deduct premiums, what to do if you miss enrollment. Useful but transactional. Sources are financial advisors and comparison-site analysts. No investigative depth.

- **Small-business trade press:** Focuses heavily on workers with at least one employee, not solo freelancers. When solo workers appear, they are mentioned as a data category rather than given a voice. Long-form features are rare; most pieces are 400–600-word news items.

- **Long-form podcast journalism:** Two notable series have touched the topic — one focused on the US individual mandate's collapse, one on gig-economy workers in delivery and ride-share sectors. Neither targeted the professional freelance class (designers, writers, consultants). Production values are high but the specific audience of your feature is absent.

**Editorial Takeaways**

- The freelance professional — earning enough to disqualify subsidies but not enough to absorb full premiums — is well-documented statistically but almost never reported as an individual. A feature built around three to five specific profiles would immediately stand out.
- No outlet has reported on how freelancers negotiate or pool risk informally (professional associations, co-ops, spouse coverage arrangements). This is a genuine reporting gap.
- The open-enrollment spike in coverage creates an opportunity: a piece published in the summer, when the topic is quiet, faces less competition and can set the agenda before the autumn news cycle.
- Trade press has defined the problem narrowly around employer-size categories. A piece that reframes around income volatility rather than business structure would offer a fresh analytical lens.
- Premium data is widely cited but rarely contextualised against freelance income growth (or stagnation). A data-led introduction comparing premium increases to median freelance rate changes over the same period would add something no existing piece provides.

## Known Limitations
- Claude cannot retrieve live articles or real-time data. This brief is most accurate when you paste in actual article text, headlines, or detailed notes from your own reading — treating Claude as an analyst rather than a researcher. If you provide only outlet names and a topic, the output reflects Claude's training data, which has a knowledge cutoff and may miss recent developments.
- For niche trade publications or regional outlets with limited online presence, Claude's knowledge will be thinner. Supplement with your own desk research for these.
- The brief describes angles and depth, not audience reach or traffic data. It is an editorial tool, not a market research report.

## Related Skills
- [coverage-gap-identifier](./coverage-gap-identifier.md)
- [competitor-framing-analyzer](./competitor-framing-analyzer.md)
- [research-brief-creator](../../magazine-journalism/ideation/research-brief-creator.md)

---
name: news-topic-monitor-brief
status: beta
category: research
subcategory: media-competitive
version: 1.0
eval_score: null
tags: [monitoring, news-tracking, editorial-planning, beat-reporting]
---

# News Topic Monitor Brief

## What This Skill Does
Produces a structured monitoring brief that tells a reporter or editor exactly what to watch, where to watch it, and how often — so a developing story never slips through unnoticed.

## When To Use This Skill
- You are following a long-running story (a court case, a policy process, a public health situation) and need to set up a systematic watching routine
- An editor has asked you to "keep an eye on" a topic but hasn't defined what that means in practice
- You are handing a beat off to a colleague and need to document the monitoring sources and signals
- You are preparing to cover a predictable future event (an election, a budget announcement, a corporate earnings season) and want a tracking plan in place before it begins

## What You Need To Provide
**Required:** The topic or story you are monitoring (one clear sentence describing it); the time horizon (days, weeks, months); your role (staff reporter, freelancer, editor, researcher)

**Optional:** Geographic scope; any sources or outlets you are already tracking; specific sub-angles you want flagged; how you will receive alerts (email, Slack, RSS, manual checks)

## How Claude Approaches This
1. Defines the story's core monitoring questions — the specific developments that would constitute news — so you know what a meaningful update looks like versus routine noise
2. Maps the landscape of sources into tiers: primary sources (official statements, public records, direct contacts), secondary sources (specialist outlets, trade press, academic or NGO trackers), and ambient signals (social media, aggregators, court filings)
3. Recommends a checking cadence for each tier based on how fast the story moves, then packages everything as a one-page brief you can pin to your desk or share with a colleague

## Output Format
A single-page brief, structured in four labelled sections: **Story Summary** (two sentences on what you are tracking and why), **Key Monitoring Questions** (four to six bullet points describing the specific developments you want to catch), **Source Map** (a tiered table listing each source, what signal to look for, and how often to check it), and **Alert Thresholds** (plain-language descriptions of what would justify an immediate story, a follow-up, or simply an internal note). Plain prose and tables throughout. No jargon. Fits on one printed page.

## Quality Criteria
- [ ] Every monitoring question is specific enough that a colleague with no prior knowledge of the story could check it independently
- [ ] The source map covers at least three distinct source types and includes at least one primary source (official or on-record)
- [ ] Checking cadences are realistic for the stated time horizon — not so frequent they are unworkable, not so infrequent they risk missing a break
- [ ] Alert thresholds distinguish clearly between "file a story now," "note for next weekly review," and "no action needed"
- [ ] No sources named are specific real-world publications, people, or proprietary databases that could become outdated or identifiable

## Example

### Input
Topic: A national government has announced a review of regulations governing online food delivery platforms, following a series of worker safety incidents. The review is expected to run for six months and produce binding recommendations. I am covering this as a labour and employment reporter. I need a monitoring plan for the full duration of the review.

Time horizon: Six months.

Role: Staff reporter at a general-interest national news outlet.

Geographic scope: Domestic (one country, no international comparison needed at this stage).

### Output

---

**STORY SUMMARY**

The government has launched a formal six-month regulatory review of online food delivery platforms, triggered by a cluster of worker safety incidents. The review will produce binding policy recommendations. This brief sets out what to watch, where, and how often for the duration.

---

**KEY MONITORING QUESTIONS**

- Has the review committee published interim findings, consultation documents, or call-for-submissions notices?
- Have any platforms, unions, or worker advocacy groups made formal submissions to the review — and what positions are they taking?
- Have any new worker safety incidents occurred involving delivery platform workers during the review period?
- Has the government signalled any change in its expected timeline, scope, or committee membership?
- Are opposition parties, labour regulators, or employer associations publicly responding to the review's direction?
- Have comparable reviews or rulings been issued in other jurisdictions that could influence the domestic outcome?

---

**SOURCE MAP**

| Source | What to look for | Frequency |
|---|---|---|
| Government review committee's official page | New documents, consultation notices, committee announcements | Every 2 days |
| Labour ministry press releases | Ministerial statements on the review or on platform worker conditions | Every 2 days |
| Parliamentary record / Hansard | Questions, debates, or committee hearings referencing the review | Weekly |
| Workplace health and safety authority | Incident reports, enforcement actions involving delivery platforms | Weekly |
| Platform companies' investor relations pages | Earnings calls, regulatory risk disclosures, public statements | Monthly |
| Trade union and worker advocacy group websites | Submissions, press statements, campaign updates | Weekly |
| Industry association for food delivery platforms | Submissions, member communications, public responses | Weekly |
| Labour and employment specialist press | Analysis, leaked documents, expert commentary | Every 2 days |
| Court and tribunal records | Worker misclassification cases, injury claims, enforcement proceedings | Weekly |
| Social media (platform worker communities) | Organised action, incident reports, sentiment shifts | Twice weekly |

---

**ALERT THRESHOLDS**

**File a story immediately if:**
- The committee publishes a document that contains a specific policy recommendation or ruling
- Any major platform announces a significant operational or policy change in direct response to the review
- A serious or fatal worker safety incident occurs and receives official acknowledgement
- The review timeline is extended, narrowed, or cancelled

**Note for next weekly editorial review if:**
- A submission from a significant stakeholder (major union, employer group) is published and takes a clear or unexpected position
- Parliamentary debate on the topic intensifies or a motion is tabled
- A comparable ruling or finding is issued in another jurisdiction

**No immediate action if:**
- Routine procedural updates (committee meeting dates, minor schedule changes) with no substantive content
- Social media activity that is not corroborated by any on-record source

---

## Known Limitations
- This brief is built from the information you provide. If you omit a key stakeholder or source category, it will not appear in the source map — review the output against your own knowledge of the beat before using it.
- Checking cadences assume a single-reporter workload. If you are on a team, redistribute tasks explicitly rather than assuming shared coverage.
- Claude cannot access live monitoring tools, set up RSS feeds, or create alerts — the brief tells you what to watch, but you must set up the actual tools yourself.
- For highly technical regulatory topics (financial regulation, pharmaceutical approvals), the monitoring questions may need review by a subject-matter specialist before use.

## Related Skills
- [press-roundup-writer](press-roundup-writer.md)
- [competitor-coverage-gap-finder](competitor-coverage-gap-finder.md)
- [trending-topics-brief](trending-topics-brief.md)

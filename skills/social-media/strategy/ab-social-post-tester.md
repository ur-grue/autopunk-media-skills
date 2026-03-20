---
name: ab-social-post-tester
status: stable
category: social-media
subcategory: strategy
version: 1.0
eval_score: 4.50
tags: [social-media, A/B-testing, optimization, engagement, strategy, copywriting]
---

# A/B Social Post Tester

## What This Skill Does
Generates two distinct social media post variants for the same content — each using a different hook strategy, tone, or call to action — with a clear hypothesis for what each variant tests, ready for split-testing on any platform.

## When To Use This Skill
- You are promoting an article, video, or podcast episode and want to test which framing drives more engagement
- You have a post that underperformed and want to test an alternative approach before re-sharing
- You need to post the same content across platforms and want to adapt the framing rather than copy-paste
- You are building a systematic content testing practice and need structured A/B pairs with clear hypotheses

## What You Need To Provide
**Required:** The content to promote (title, link, and a 2-3 sentence summary of what it covers); the platform (Instagram, X/Twitter, LinkedIn, Facebook, or Threads); the primary goal (engagement/comments, click-throughs, shares, or saves).

**Optional:** The existing post text if you want to improve a specific underperformer; the brand or publication voice; the target audience in one phrase; a specific variable you want to isolate (hook style, CTA type, emotional register, length).

## How Claude Approaches This

1. **Identifies the testable variable.** Every meaningful A/B test isolates one variable. Claude determines the highest-leverage variable to test based on the content type and goal: hook style (question vs. statement vs. statistic), emotional register (curiosity vs. urgency vs. authority), CTA type (direct ask vs. implied invitation vs. no CTA), or length (concise vs. expanded). If the user specifies a variable, Claude uses it. If not, Claude selects the one most likely to produce a measurable difference for the stated goal.

2. **Writes Variant A and Variant B.** Each variant is a complete, ready-to-post piece of copy for the specified platform. Both share the same core message and information — only the isolated variable differs. This ensures any performance difference is attributable to the tested element, not to different information.

3. **States the hypothesis.** For each pair, writes a one-sentence hypothesis in plain language: "If Variant A outperforms Variant B, it suggests that [audience insight]." This turns the test from a guessing game into a learning exercise that informs future content decisions.

4. **Adds measurement guidance.** Specifies which metric to compare (tap-through rate, comment count, share ratio, save rate), the minimum sample size or time window needed to draw a meaningful conclusion, and what to do with the result.

## Output Format

Two complete post variants, each labeled and preceded by a one-line description of its approach. After the variants, a hypothesis statement and measurement note. Posts respect platform character limits (280 for X/Twitter, 2,200 for Instagram, 3,000 for LinkedIn). Total output: under 300 words.

```
**Variable being tested:** [The isolated variable]

**Variant A — [Approach label]**
[Complete post text]

**Variant B — [Approach label]**
[Complete post text]

---
*Hypothesis: If Variant [A/B] outperforms, it suggests [audience insight].*

*Measurement: Compare [specific metric] after [time window or impression threshold]. If the difference is under [X%], the variable is not a significant driver for this audience — test a different element next.*
```

## Quality Criteria
- [ ] Only one variable differs between variants — if you cover the post text and read both, you can identify exactly what changed
- [ ] Both variants are complete, platform-appropriate, and ready to post without editing
- [ ] The hypothesis is specific enough to inform a future content decision — not "Variant A may perform better"
- [ ] Neither variant is an obvious weak version designed to lose — both represent genuinely plausible best approaches
- [ ] Posts respect the platform's character limit and conventions (hashtag use, line breaks, emoji norms)
- [ ] Measurement guidance specifies a concrete metric and a minimum threshold for drawing conclusions
- [ ] The tested variable is relevant to the stated goal — not testing hook style when the goal is saves, for example

## Example

### Input
**Content:** "The Hidden Cost of Always Being Available" — a newsletter article about how always-on communication culture reduces deep work and increases burnout. The article includes original survey data from 300 knowledge workers.

**Platform:** LinkedIn

**Goal:** Click-throughs to the article

**Audience:** Mid-career professionals and managers

### Output

**Variable being tested:** Hook style — personal revelation vs. data-led authority

**Variant A — Personal Revelation Hook**
I used to reply to every message within five minutes. I thought it made me a good colleague. It was actually making me worse at my job.

A survey of 300 knowledge workers found that the "always available" norm doesn't just feel exhausting — it measurably reduces the quality of focused work.

I wrote about what the data actually shows, and the three changes that made the biggest difference for the people who broke the cycle.

[Link]

**Variant B — Data-Led Authority Hook**
We surveyed 300 knowledge workers about always-on communication culture. The results challenge a norm most companies treat as non-negotiable.

The cost of constant availability isn't just burnout — it's a measurable decline in the quality of deep work. And the professionals who set boundaries didn't damage their careers. In most cases, the opposite.

The full findings and three practical takeaways are in this week's article.

[Link]

---
*Hypothesis: If Variant A outperforms, it suggests this audience responds more strongly to personal vulnerability than to data authority — meaning future LinkedIn posts should lead with personal stakes and bring in data as supporting evidence, not the reverse.*

*Measurement: Compare click-through rate (link clicks / impressions) after 48 hours or 5,000 impressions, whichever comes first. If the difference is under 10%, hook style is not the primary driver for this audience — test CTA placement or post length next.*

## Known Limitations
- This skill generates test variants but cannot run the test or measure results. You need access to platform analytics or a scheduling tool with A/B testing capability (e.g., native LinkedIn analytics, Buffer, or Hootsuite) to execute the test and read the data.
- A/B testing on social media is inherently noisy. Posting time, algorithm fluctuations, and audience activity patterns all affect results. A single test rarely produces a definitive conclusion — use results directionally and confirm with repeated tests.
- The skill isolates one variable per pair. Real social media performance is driven by multiple interacting factors. For complex optimization, run sequential single-variable tests rather than trying to test everything at once.

## Related Skills
- [caption-writer](../content/caption-writer.md) — write the baseline post before generating test variants
- [tag-keyword-generator](tag-keyword-generator.md) — optimize tags alongside the post copy
- [hashtag-strategy-writer](hashtag-strategy-writer.md) — test hashtag strategies as a separate variable
- [platform-strategy-brief](platform-strategy-brief.md) — build a broader testing program across platforms

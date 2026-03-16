---
name: ab-title-test-brief
status: stable
category: youtube
subcategory: analytics
version: 1.0
eval_score: 4.5
tags: [youtube, analytics, testing, titles, seo, optimization, click-through-rate]
---

# A/B Title Test Brief

## What This Skill Does
Generates 4–5 distinct title variants for A/B testing on a YouTube video, each testing a different click psychology principle, with a rationale for each variant and a recommended testing hypothesis.

## When To Use This Skill
- A published video has lower-than-expected click-through rate (CTR) and you want to test whether a title change improves performance
- You've finished a video and have multiple title directions you're considering before publishing
- You want to build systematic title-testing habits and need a structured framework for each test
- You're analyzing what title elements work for your specific audience and need controlled variants to learn from

## What You Need To Provide
**Required:** The video topic and main argument or value proposition; the target viewer's primary reason to click (what problem does this video solve or what curiosity does it satisfy); your current title or working title.
**Optional:** Channel niche and audience description; current CTR if this is an optimization test on a live video; titles that have performed well on your channel; your main competitor titles on this topic.

## How Claude Approaches This
1. Analyzes the current or working title to identify what click psychology principle it's using (or failing to use) — search intent match, curiosity gap, benefit promise, social proof, urgency, specificity.
2. Generates 4–5 title variants, each deliberately testing one distinct principle: one optimized for search (exact-match language), one optimized for social/browse (emotion and curiosity), one with a specific number or data point, one with a "mistake" or "warning" frame if it fits the topic, and one that leads with the viewer's desire rather than the topic.
3. For each variant: states the principle being tested, rates the estimated CTR potential (relative, not absolute), and notes which audience segment is most likely to respond to it. Ends with a testing hypothesis: which variant to test first and why.

## Output Format
Table of 4–5 variants with columns: Title, Principle Tested, Why It Should Work, Likely Audience. Followed by a "Testing Hypothesis" section (1 short paragraph) recommending which variant to run first and what to watch for in the results. Total length: 300–450 words.

## Quality Criteria
- [ ] Each variant is genuinely distinct — different words, not just different word order
- [ ] Each variant tests a clearly stated, different principle
- [ ] Variants are all under 70 characters (YouTube title display limit)
- [ ] Testing hypothesis names a specific first variant to test and explains why
- [ ] At least one variant is optimized for search discovery, at least one for browse/suggested
- [ ] Rationale column is specific — not "good for clicks" but "targets viewers already in-market for a solution"

## Example

### Input
**Video topic:** How to stop procrastinating on deep work tasks — specifically the psychological technique of implementation intentions
**Main argument:** Writing down exactly when, where, and how you'll do a task increases follow-through by 2–3x compared to just intending to do it
**Target viewer:** Productive people who struggle with procrastination on their most important tasks
**Current working title:** "How to Stop Procrastinating on Deep Work"
**Channel niche:** Productivity science and evidence-based work habits
**Well-performing channel titles:** "Why Your To-Do List Is Making You Less Productive," "The Science Behind Getting Things Done"

### Output

**A/B Title Test Variants**

| # | Title | Principle Tested | Why It Should Work | Likely Audience |
|---|-------|-----------------|-------------------|----------------|
| 1 | How to Stop Procrastinating on Deep Work (2025) | Search intent match | Exact-match query; year token adds freshness signal for returning searchers | Viewers actively searching for procrastination solutions |
| 2 | The Procrastination Fix Scientists Actually Recommend | Authority + curiosity gap | "Scientists actually recommend" implies mainstream advice is wrong; curiosity drives the click | Browse/suggested viewers; responds to authority framing |
| 3 | Write This Sentence Before Every Task — Procrastination Disappears | Specific action + intrigue | Concrete, mysterious instruction creates an irresistible "what sentence?" question | High social share potential; works in browse and Shorts clip |
| 4 | Why You Keep Procrastinating on Your Most Important Work | Problem acknowledgment | Speaks directly to the viewer's frustration rather than offering a solution upfront; validated by channel's top performers | Self-aware procrastinators who have tried other solutions |
| 5 | I Tested the Science of Implementation Intentions for 30 Days | Personal experiment + credibility | First-person experiment format + scientific term signals depth; "30 days" promises a real test | Audience that trusts data and personal case studies over opinion |

---

**Testing Hypothesis**

Start with **Variant 3** ("Write This Sentence Before Every Task"). It creates the strongest curiosity gap of all five options, tests well against the channel's pattern of performing well when titles frame a specific, unexpected action. The phrase "Procrastination Disappears" is a benefit promise that could draw concern about overclaiming — monitor for comment pushback. If CTR improves but view duration drops, the title may be overpromising relative to the content; adjust the video's hook to deliver the "sentence" earlier.

If Variant 3 underperforms after 2–3 weeks, switch to **Variant 4** — the problem acknowledgment frame has a direct analog in "Why Your To-Do List Is Making You Less Productive," the channel's strong performer.

---

## Known Limitations
- YouTube's built-in A/B title testing feature (currently available to some channels via YouTube Studio experiments) is the correct tool for this — it splits impressions between variants automatically. If you don't have access, manual title changes can be tested by switching after 2–3 weeks, but confounding factors (time of year, algorithm changes) affect reliability.
- CTR estimates in the output are relative, not absolute. A "high CTR" variant for a 2% average-CTR channel looks different from the same variant on a 10% CTR channel. Calibrate expectations against your channel's own baseline.
- This skill generates title variants, not thumbnail direction. CTR is a product of title and thumbnail together — title changes without matching thumbnail optimization are often incomplete tests.

## Related Skills
- [seo-title-optimizer](../pre-production/seo-title-optimizer.md)
- [performance-report-writer](../analytics/performance-report-writer.md)
- [hook-generator](../pre-production/hook-generator.md)

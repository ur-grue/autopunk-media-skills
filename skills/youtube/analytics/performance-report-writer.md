---
name: performance-report-writer
status: stable
category: youtube
subcategory: analytics
version: 1.0
eval_score: 4.4
tags: [youtube, analytics, reporting, strategy, monthly-review]
---

# Performance Report Writer

## What This Skill Does
Writes a structured monthly or quarterly YouTube channel performance report from raw analytics data, with metric summaries, trend observations, and specific next-step recommendations.

## When To Use This Skill
- You track your channel performance monthly and want a formatted report rather than a raw data dump
- You manage a YouTube channel on behalf of a client or organization and need to produce a readable summary for non-technical stakeholders
- You want to turn a month's analytics into decisions — not just observation but action
- You're preparing for a channel strategy review and need a documented baseline to reference

## What You Need To Provide
**Required:** Time period (e.g., February 2026); key metrics for the period — total views, watch time, subscriber change, top 5 videos by views or watch time; comparison to the previous period (same metrics) if available.
**Optional:** Revenue data (if applicable); click-through rate and impressions; traffic source breakdown; audience retention rate on top videos; any notable events during the period (publishing schedule changes, viral moments, collaboration, new content format tested).

## How Claude Approaches This
1. Organizes the metrics into a structured summary: period overview, key wins (what improved or performed above expectation), areas of concern (what declined or underperformed), and standout content analysis (what the top-performing video tells you about audience preference).
2. Identifies patterns and trends rather than just reporting numbers — the goal is insight, not recitation. Where data shows a meaningful change, Claude identifies what likely caused it and what it suggests about future content decisions.
3. Ends with three to five specific, prioritized recommendations — content, publishing, or format decisions that follow directly from the data. Recommendations are specific enough to act on: not "improve video quality" but "three of the top 5 videos this month are tutorials — prioritize tutorials in next month's calendar."

## Output Format
Four sections: Period Summary (metrics table), Performance Highlights, Areas for Attention, and Recommendations. Total length: 400–600 words plus the metrics table. Written in plain language — assumes the reader understands basic YouTube metrics but does not need jargon. If the report is for a client or stakeholder, the tone adjusts to professional and third-person; if for personal use, it's more direct and conversational.

## Quality Criteria
- [ ] Metrics table is complete and clearly formatted
- [ ] Highlights and attention sections draw on specific data points, not general observations
- [ ] Standout video analysis identifies what made the top performer succeed — not just its numbers
- [ ] Recommendations are numbered and each is specific enough to become a calendar item
- [ ] Trend observations compare to the previous period — month-over-month context
- [ ] Report length is proportional to data provided — no padding when data is limited

## Example

### Input
**Period:** February 2026
**Channel:** The Productive Developer (developer tools and productivity)

**February metrics:**
- Total views: 312,000
- Watch time: 43,800 hours
- Subscribers gained: +820
- Subscribers lost: -210
- Net subscriber change: +610
- Top 5 videos (views): "Stop Using VSCode Defaults" (89K), "I Tested 6 Task Managers for Developers" (71K), "The Keyboard That Changed How I Type at Work" (54K), "Weekly Review System for Developers" (38K), "Why Your Git Workflow Is Slowing You Down" (29K)

**January metrics (for comparison):**
- Total views: 271,000
- Watch time: 37,400 hours
- Net subscriber change: +430

**Notes:** Published 6 videos in February vs. 4 in January. No viral moments. One video (keyboard review) featured a sponsored integration.

### Output

**The Productive Developer — Monthly Performance Report**
**February 2026**

---

**Period Summary**

| Metric | February 2026 | January 2026 | Change |
|--------|--------------|--------------|--------|
| Total Views | 312,000 | 271,000 | +15% |
| Watch Time (hours) | 43,800 | 37,400 | +17% |
| Net Subscribers | +610 | +430 | +42% |
| Videos Published | 6 | 4 | +2 |

---

**Performance Highlights**

February was a strong month. Views and watch time were both up 15–17% month-over-month, and subscriber growth increased 42% — the largest net subscriber gain in the past three months.

"Stop Using VSCode Defaults" was the standout video at 89,000 views. This performance pattern matches previous top videos on the channel: the title frames a known behavior as a mistake, which drives both search discovery and social sharing from developers who recognize themselves in the problem. Tutorial format with a specific "don't do this" angle continues to be the channel's strongest performer.

The keyboard review (sponsored integration) performed well relative to previous product reviews, suggesting the audience is receptive to gear content when it's framed around typing and workflow rather than purely hardware enthusiasm.

---

**Areas for Attention**

"Why Your Git Workflow Is Slowing You Down" (29K views) is the lowest performer of the month despite a strong title. This may reflect that Git workflow content already exists in high volume from larger channels — the search market is more competitive and the audience may already have a reference source for this topic. Worth monitoring before investing in a follow-up.

The overall uplift partially reflects the increase from 4 to 6 videos — average views per video was 52,000 in February vs. 67,750 in January. Publishing more did not produce proportionally more views.

---

**Recommendations**

1. **Prioritize "mistake framing" tutorials in March.** "Stop Using X Defaults" and "You're Doing X Wrong" titles are consistently outperforming on this channel. Plan 2–3 videos using this angle next month.
2. **Test gear content as a monthly feature.** The keyboard review performed above average. Scheduling one gear or setup video per month is supported by the data.
3. **Do not increase publishing frequency beyond 6 videos next month.** Average views per video dropped when going from 4 to 6. Quality and depth appear to be more valuable than frequency for this audience. Hold at 5–6 and improve video depth rather than adding more uploads.
4. **Investigate the Git video's lower-than-expected performance.** Before producing more Git-related content, check whether the search traffic is dominated by larger channels, or whether the video's retention rate is lower than channel average. This determines whether the issue is competition or content quality.
5. **Monitor sponsored content performance.** The keyboard review integrated a brand deal without measurable negative effects on engagement. This supports a continued approach of integrating sponsors into content that has natural product-fit.

---

## Known Limitations
- This skill cannot access your YouTube Analytics directly — all data must be pasted in manually. The accuracy of the report is only as good as the data provided.
- Month-over-month comparisons are the minimum context needed for meaningful trend analysis. Single-period reports without a comparison period will produce a summary but cannot generate reliable trend observations.
- Audience retention rate (the percentage of each video viewers watch) is the single most useful diagnostic metric for video quality and is not included in the example above because it was not provided. When available, include it — it will significantly improve the recommendation quality.

## Related Skills
- [ab-title-test-brief](../analytics/ab-title-test-brief.md)
- [content-calendar-planner](../channel-strategy/content-calendar-planner.md)
- [audience-persona-builder](../channel-strategy/audience-persona-builder.md)

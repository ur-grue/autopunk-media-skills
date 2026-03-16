---
name: content-calendar-planner
status: stable
category: youtube
subcategory: channel-strategy
version: 1.0
eval_score: 4.4
tags: [youtube, strategy, planning, content-calendar, publishing-schedule]
---

# Content Calendar Planner

## What This Skill Does
Builds a realistic 4-week content calendar for a YouTube channel, with specific video topics, formats, publishing dates, and strategic notes for each upload.

## When To Use This Skill
- You're starting a new channel and need a structured publishing plan to build momentum
- You've been uploading inconsistently and want a committed schedule to work from
- You're entering a high-priority content period (product launch, seasonal trend, channel rebrand) and need to plan ahead
- You want to batch-produce content and need a shooting schedule to work backward from

## What You Need To Provide
**Required:** Channel niche and content style; publishing frequency goal (e.g., once a week, twice a week); 4–6 video ideas or topic areas you want to cover this month; any fixed dates or events relevant to your niche (seasonal moments, product releases, community events).
**Optional:** Audience persona or subscriber base description; which videos have performed best historically; any formats you want to test this month (new series, Shorts, collaboration); days of the week that work best for your editing schedule.

## How Claude Approaches This
1. Maps the available publishing slots across 4 weeks against the ideas provided, applying a strategic sequence — balancing evergreen content (long shelf life) with timely content (seasonal or trend-responsive), and varying formats to maintain audience engagement across the month.
2. Assigns each slot a specific video topic (not just a theme), a format note (tutorial, opinion, case study, vlog, Shorts clip), and a one-line strategic rationale explaining why this video goes in this position in the calendar.
3. Adds a brief production notes section flagging which videos need the most lead time (research-heavy topics, interviews, external locations) and recommending a batch filming schedule.
4. After the calendar, provides a "Next Step" note: the first video to film (based on lead time and publish date), which skill to run next for the first title (seo-title-optimizer or hook-generator), and what to set up in the creator's scheduling tool before the first filming day.

## Output Format
A 4-week calendar table with columns: Week, Publish Date, Video Title (working), Format, Strategic Note. Followed by a Production Schedule section listing which videos to film in which order. Total length: 400–600 words including the table and production notes. No preamble. Output ends with a "Next Step" note: which video to start producing today, which skill to run next (seo-title-optimizer to finalize the first working title), and what scheduling or tool setup is needed before filming begins.

## Quality Criteria
- [ ] Every slot has a specific video title, not just a topic area ("How I Fixed My Studio Lighting for $80" not just "Gear setup")
- [ ] Formats are varied across the month — not every video the same type
- [ ] Strategic notes explain positioning, not just content ("Opens the month with a beginner-entry video to capture new subscribers" vs. "Good video idea")
- [ ] Production schedule accounts for real lead times — research-heavy videos are not scheduled back-to-back
- [ ] Calendar respects the frequency goal — no more slots than the creator committed to
- [ ] Fixed dates and seasonal moments from the input are incorporated where relevant
- [ ] Output includes at least one concrete next action the user can take immediately (start producing the first video, run seo-title-optimizer, set up the publishing schedule in their chosen tool)

## Example

### Input
**Niche:** Home recording and music production for bedroom producers
**Frequency:** Twice a week (Wednesday and Saturday)
**Ideas to cover:** Budget microphone comparison, how to mix vocals in the box, setting up a home studio acoustic treatment on a tight budget, a "What I actually use" gear walkthrough, a beginner's guide to compression, and a process video showing how I produce a full track start to finish
**Fixed dates:** The month includes a major music production software update release (Week 2)
**Best performers historically:** Tutorial videos and gear comparisons
**Formats to test:** One YouTube Short this month

### Output

**4-Week Content Calendar — Home Recording Channel**

| Week | Date | Working Title | Format | Strategic Note |
|------|------|--------------|--------|---------------|
| 1 | Wed 2 | Budget Mic Comparison: $50 vs $100 vs $200 | Comparison/Tutorial | High-search entry point; benchmarks early in the month to capture new subscribers searching gear |
| 1 | Sat 5 | The Only 3 Things That Actually Treat Your Room Acoustics (For Under $150) | Tutorial | Pairs with the mic video — both address core setup problems; keeps Week 1 focused on the beginner/setup audience |
| 2 | Wed 9 | [Software Name] Update: What Changed and What It Means for Your Workflow | News/Walkthrough | Timely hook on the software release; higher short-term search and social share potential |
| 2 | Sat 12 | How to Mix Vocals In the Box: The Process I Use Every Time | Tutorial | Back to evergreen; strong tutorial for the channel's core intermediate audience after the news video |
| 3 | Wed 16 | Everything I Actually Use in My Studio (Honest Gear Rundown) | Gear walkthrough | Mid-month trust-builder; personal format performs well after tutorials — feels like a reward for subscribers |
| 3 | Sat 19 | Compression Explained in 4 Minutes [SHORT] | YouTube Short | Short version of a future full tutorial; tests Short performance and drives discovery from a different feed |
| 4 | Wed 23 | Beginner's Guide to Compression: When, Why, and How | Tutorial | Full companion to the Short; the Short seeds interest, this video delivers the deep-dive |
| 4 | Sat 26 | How I Produced a Full Track Start to Finish (Real Time Walkthrough) | Process video | Month-closer; process videos reward loyal subscribers and showcase creative voice, not just technical skills |

---

**Production Schedule**

**Film in Week 1 (before any publishing):**
- Budget mic comparison (requires testing and recording 3 microphones — needs setup time)
- Acoustic treatment tutorial (photograph treatment options before filming)

**Film in Week 2:**
- Software update walkthrough (film within 24 hours of release for maximum timeliness)
- Vocal mixing tutorial (can batch with compression tutorial — same setup)
- Compression Short (film as a 4-minute tight cut; will also serve as outline for full tutorial)

**Film in Week 3:**
- Gear walkthrough (clean studio required; dress the space first)
- Full track walkthrough (longest production — allow 3–4 hours of capture time; screen record throughout)

**Batch filming note:** The compression Short and full compression tutorial can be filmed in the same session (shoot Short first, then expand for the full video).

## Known Limitations
- This skill plans based on the ideas you provide — it does not independently generate video ideas. Use the Niche Video Idea Generator first if you don't have 4–6 topics ready.
- Publishing dates are illustrative — adjust to your actual calendar. The skill assumes a generic start date; update all dates before putting the calendar into production use.
- For channels covering fast-moving topics (news, technology, financial markets), the evergreen/timely balance in this calendar will need manual adjustment — trend timing cannot be predicted in advance.

## Related Skills
- [niche-video-idea-generator](../pre-production/niche-video-idea-generator.md)
- [audience-persona-builder](../channel-strategy/audience-persona-builder.md)
- [seo-title-optimizer](../pre-production/seo-title-optimizer.md)

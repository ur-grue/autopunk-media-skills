---
name: seo-title-optimizer
status: stable
category: youtube
subcategory: pre-production
version: 1.0
eval_score: 4.5
tags: [youtube, pre-production, seo, titles, search-optimization]
---

# SEO Title Optimizer

## What This Skill Does
Generates 8–10 search-optimized YouTube title options for a given video topic, ranked by click-through and discoverability potential.

## When To Use This Skill
- You have a finished or near-finished video and need a title before publishing
- You are planning a video and want to validate search demand through title testing
- Your current title is underperforming and you want to A/B test alternatives
- You are building a content calendar and need working titles for upcoming videos

## What You Need To Provide
**Required:** Video topic or working title; target audience (who watches this channel); primary goal of the video (inform, entertain, tutorial, opinion, review)
**Optional:** Channel niche and tone (casual, educational, journalistic); top 2–3 competitor titles on the same topic; desired video length or format; any keywords you already rank for

## How Claude Approaches This
1. Identifies the core search intent behind the topic — what specific question or desire would drive someone to search for this video
2. Extracts 3–5 high-value keywords and phrases likely to match how the audience actually searches, including long-tail variants
3. Generates titles across multiple proven YouTube title structures: listicle, how-to, question, "why/what/how" explanatory, curiosity-gap, and value-promise formats
4. Filters for character count (under 60 characters preferred for full display on most devices), front-loads the strongest keyword, and avoids clickbait that would increase bounce rate
5. Ranks the options by estimated click-through potential and annotates each with a one-line rationale

## Output Format
A numbered list of 8–10 titles. Each title is followed by a parenthetical note explaining the structural approach used and the primary keyword being targeted. Titles are ordered from highest to lowest estimated click-through potential. Total length: under 400 words. Plain text, no markdown headers within the output.

## Quality Criteria
- [ ] Every title includes at least one concrete keyword, not just abstract descriptors
- [ ] Titles span at least 4 different structural formats (list, how-to, question, statement)
- [ ] No title exceeds 70 characters
- [ ] The top-ranked title front-loads the primary keyword within the first 4 words
- [ ] At least two titles target long-tail search queries
- [ ] None of the titles contain misleading superlatives that cannot be substantiated

## Example

### Input
Topic: How to build a morning routine that actually sticks
Target audience: Productivity-focused adults, 25–40, who have tried and abandoned morning routines before
Goal: Tutorial/advice
Channel tone: Direct, practical, no fluff
Competitor titles seen: "My 5AM Morning Routine", "How I Became a Morning Person"

### Output
1. **How to Build a Morning Routine That Actually Sticks** (Direct how-to; keyword: "morning routine"; matches exact search intent of frustrated repeaters)
2. **Why Your Morning Routine Keeps Failing (And How to Fix It)** (Problem-solution; targets the frustration angle; strong curiosity gap)
3. **Build a Morning Routine You Won't Quit in 3 Days** (Specificity + pain point; long-tail for "morning routine quit" searches)
4. **Morning Routine for People Who Hate Morning Routines** (Counterintuitive hook; addresses the core audience identity directly)
5. **The Only Morning Routine System That Works Long-Term** (Authority + promise; targets "morning routine that works" searches)
6. **Stop Failing at Morning Routines — Do This Instead** (Imperative; high urgency; targets repeat searchers)
7. **How I Finally Built a Morning Routine That Stuck** (Personal testimony; "finally built" targets long-term searchers)
8. **Morning Routine Habits That Last (No 5AM Required)** (Objection removal; "no 5AM" differentiates from competitor titles)
9. **What Nobody Tells You About Building a Morning Routine** (Curiosity-gap; targets people who have read the standard advice)
10. **Consistent Morning Routine — The Step-by-Step Guide** (SEO anchor title; targets structured, long-tail tutorial searches)

**Recommended:** Option 1 for primary publish; Option 2 as A/B test candidate.

## Known Limitations
- Title effectiveness depends heavily on thumbnail — a strong title with a weak thumbnail will still underperform; use this skill alongside thumbnail-concept-brief
- Claude cannot access live YouTube search volume data; keyword suggestions are based on structural patterns, not real-time analytics
- Niche channels with highly specific audiences (e.g., professional subtopics) may need additional domain context for accurate keyword selection
- Titles optimized for search may sacrifice brand voice; creators with established tonal identity should filter accordingly

## Related Skills
- [thumbnail-concept-brief](thumbnail-concept-brief.md)
- [hook-generator](hook-generator.md)
- [description-seo-writer](../post-production/description-seo-writer.md)

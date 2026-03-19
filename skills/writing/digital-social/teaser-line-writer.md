---
name: teaser-line-writer
status: beta
category: writing
subcategory: digital-social
version: 1.0
eval_score: null
tags: [teaser, social-media, newsletter, digital, engagement, journalism]
---

# Teaser Line Writer

## What This Skill Does
Generates a short, compelling teaser line — one or two sentences — that earns a click through genuine story value, not misleading hype.

## When To Use This Skill
- You need a teaser for a newsletter subject line, social media caption, or article preview module
- You have a strong story but your opening sentence is either dull or too on-the-nose
- You want to surface the most compelling element of a piece without giving away the conclusion
- You are writing a series of teasers for a batch of stories and need consistent voice and tone

## What You Need To Provide
**Required:** A summary of the story — the topic, the central finding or event, and who it affects. One paragraph is enough.
**Optional:** The intended platform (newsletter, Instagram, LinkedIn, homepage preview); target audience (general public, industry professionals, specialist readers); tone preference (urgent, measured, curious, wry); the actual headline if one already exists.

## How Claude Approaches This
1. Identifies the single most newsworthy or surprising element in the story — the detail most likely to make a reader stop scrolling.
2. Frames that element as an open loop: enough information to create genuine curiosity, not so much that the reader feels they already have the answer.
3. Calibrates language register to the platform and audience — concise and direct for social, slightly more expansive for newsletters, warmer for human-interest stories, crisper for breaking news.
4. Delivers three variants: one that leads with stakes, one that leads with a specific detail, and one that leads with a question the story answers — so you can choose the register that fits the editorial context.

## Output Format
Three numbered teaser lines per run. Each is one or two sentences, under 160 characters where possible (fits most preview truncation limits). No hashtags unless explicitly requested. No rhetorical hype phrases ("You won't believe…", "This changes everything"). Labels indicate the approach used for each variant: **Stakes**, **Detail**, **Question**.

## Quality Criteria
- [ ] Each teaser creates a genuine reason to read on — a knowledge gap the story fills
- [ ] No teaser overpromises: the story must deliver what the teaser implies
- [ ] Language matches the specified platform and audience register
- [ ] None of the three variants says the same thing in different words — each opens a distinct angle
- [ ] Under 160 characters each (excluding labels), unless the story genuinely requires more

## Example

### Input
Story summary: An investigation into how a major city's emergency response times have increased by 40% over five years, traced to a combination of budget cuts, dispatcher understaffing, and routing software that has not been updated since 2014. The finding: the city's wealthiest neighbourhoods still receive faster response times than lower-income ones, despite officials claiming the system is area-neutral. Intended for a newsletter with a general civic-minded audience.

### Output
**Stakes:** The city promised equal emergency response across all neighbourhoods. New data shows that promise has not been kept — and response times are getting worse.

**Detail:** Since 2014, the city's 999 dispatch software has not been updated. In that time, average response times have climbed 40%.

**Question:** Why does it still take longer for an ambulance to reach one side of the city than the other? The answer runs through a decade of deferred decisions.

## Known Limitations
- Teasers work best when the story has a clear, specific finding. If the source material is vague or the story's angle is still unresolved, the output will be similarly vague — improve the story brief before running this skill.
- Character counts are approximate. Always paste final output into your platform's preview tool to confirm nothing is cut off at the wrong word.
- This skill does not generate hashtags, emojis, or platform-specific formatting. Use the twitter-post-writer skill if you need a post formatted for X/Twitter.

## Related Skills
- [twitter-post-writer](twitter-post-writer.md)
- [newsletter-teaser-writer](../../magazine-journalism/distribution/newsletter-teaser-writer.md)
- [hook-generator](../../youtube/pre-production/hook-generator.md)

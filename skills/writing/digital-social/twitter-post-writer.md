---
name: twitter-post-writer
status: beta
category: writing
subcategory: digital-social
version: 1.0
eval_score: null
tags: [twitter, x, social-media, journalism, 280-characters, news, digital]
---

# Twitter Post Writer

## What This Skill Does
Writes a single, publication-ready post for X/Twitter — 280 characters maximum — in a clear journalistic voice that reports or contextualises a story without hollow engagement hooks.

## When To Use This Skill
- You need to post a news story, investigation finding, or video link to X/Twitter and want copy that sounds like editorial, not marketing
- You are packaging a newsletter story or article for social distribution and need the post drafted quickly
- You want a post that works without relying on the reader clicking through first — one that delivers value in the tweet itself
- You are writing a thread opener and need the first post to be strong enough to earn the tap to expand

## What You Need To Provide
**Required:** The story summary — one paragraph covering what happened, who is involved, and why it matters. Include a link if there is one to share.
**Optional:** The intended account voice (newsroom, individual journalist, documentary channel, podcast); whether the post should stand alone or function as a thread opener; any specific element to foreground (data point, quote, date, outcome); words or frames to avoid.

## How Claude Approaches This
1. Reads the story for its single most shareable fact — the specific number, ruling, reversal, or detail that carries the most information in the fewest words.
2. Leads with that fact or its direct consequence, not with context. Context earns its place only if it changes how the fact reads.
3. Writes in clean indicative sentences — active voice, concrete nouns, no editorial amplification ("shocking," "bombshell," "must-read"). The fact does the work.
4. Counts characters precisely. If the post runs long, cuts from the context end, never from the lead fact.
5. Delivers two variants: one that leads with the finding and one that leads with the implication, so you can choose based on what performs on your account.

## Output Format
Two numbered post variants, each 280 characters or fewer (including spaces and any link placeholder). Character counts are shown for each. A brief one-line note explains the lead angle for each variant. No hashtags unless explicitly requested — hashtag placement is an editorial decision the account holder should make. Link placeholder shown as [link] if a URL will be added.

## Quality Criteria
- [ ] Each post is 280 characters or fewer — verified, not estimated
- [ ] No engagement-bait phrasing ("What do you think?", "Thread incoming", "This is huge")
- [ ] The post delivers a usable piece of information even if the reader never clicks the link
- [ ] Active voice, specific nouns, concrete numbers preferred over passive construction and vague language
- [ ] Both variants lead from different angles — not the same sentence reworded

## Example

### Input
Story summary: An independent audit has found that a regional hospital trust spent £4.2 million on management consultancy fees in a single financial year — the same year it reported a £3.8 million deficit and cut 47 nursing posts. The trust's chief executive said the spending was "essential for long-term financial stability." The audit report was published today. Link to include: [link]

### Output
**Variant 1 — leads with the finding:**
A hospital trust cut 47 nursing posts while spending £4.2m on management consultants in the same year — more than its entire reported deficit. Audit published today. [link]
*Character count: 178. Angle: the contrast between cuts and spending is the story.*

**Variant 2 — leads with the implication:**
A £3.8m deficit. 47 nursing posts cut. £4.2m spent on consultants. A new audit of one hospital trust raises questions about where savings are actually being made. [link]
*Character count: 172. Angle: accumulates the three figures before delivering the judgment — works well if you want readers to feel the weight before the conclusion.*

## Known Limitations
- This skill writes single posts and thread openers, not full threads. If you need a multi-post thread drafted in sequence, use it for the opener and continue manually, or run it separately for each post.
- Character counting is performed as part of the output but should always be verified in the platform composer before posting — platform updates occasionally change how URLs, media attachments, and special characters are counted toward the limit.
- Journalistic voice means this skill will not write promotional, branded, or first-person personal posts well. If the account is a creator or influencer rather than a newsroom, specify that so the register can be adjusted.
- Posts that rely on breaking developments or live situation updates go stale fast. This skill works best when the story has a clear, established finding rather than a still-developing situation.

## Related Skills
- [teaser-line-writer](teaser-line-writer.md)
- [newsletter-teaser-writer](../../magazine-journalism/distribution/newsletter-teaser-writer.md)
- [social-media-excerpt](../../magazine-journalism/distribution/social-media-excerpt.md)

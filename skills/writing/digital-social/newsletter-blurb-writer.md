---
name: newsletter-blurb-writer
status: beta
category: writing
subcategory: digital-social
version: 1.0
eval_score: null
tags: [newsletter, email, distribution, blurb, journalism, audience-engagement]
---

# Newsletter Blurb Writer

## What This Skill Does
Writes a short, punchy newsletter blurb — the 60–120-word teaser entry that introduces one story inside a curated email digest, giving subscribers just enough to decide whether to click through.

## When To Use This Skill
- You are assembling a newsletter edition and need a blurb for each featured story
- You have a long-form piece and need a condensed entry-point that does not spoil the full read
- You are writing a multi-story digest (daily briefing, weekly roundup, thematic edition) where each item must be tonally consistent but individually compelling
- A story requires a different angle in email than was used in the headline — because your email audience differs from your general readership

## What You Need To Provide
**Required:** Story headline and URL · A two- or three-sentence description of what the story covers · The single most surprising, useful, or urgent thing in the piece

**Optional:** Newsletter tone (e.g., dry and analytical, warm and editorial, urgent and breaking) · Audience description (e.g., policy professionals, general readers, media industry insiders) · Word limit if your template has one · Whether to include a read-time estimate (e.g., "5-minute read")

## How Claude Approaches This
1. Identifies the sharpest entry point into the story — the detail, finding, or question that would make the target reader stop scrolling and click, rather than a straight restatement of the headline
2. Writes an opening sentence that earns attention without resorting to clickbait — specific, grounded in fact, and honest about what the piece delivers
3. Adds one or two sentences of essential context, then closes with a forward-leaning phrase that functions as a soft call-to-action (e.g., "Read the full investigation →") — never a hard sell
4. Matches the newsletter's established voice: analytical newsletters get precise, economical prose; warmer editorial newsletters get a human observation before the link

## Output Format
60–120 words. Two to three sentences plus the link line. No subheadings. No bullet points. Prose only — newsletters are read as editorial voice, not interface. Link formatted as "Read more →" or "Full story →" followed by the URL or a [link] placeholder. No hashtags.

## Quality Criteria
- [ ] Opens with something other than the headline restated verbatim
- [ ] Contains at least one specific detail (number, name, place, quote fragment) from the piece
- [ ] Does not reveal the full conclusion — preserves enough curiosity to motivate a click
- [ ] Fits the newsletter's voice: would not feel out of place alongside the other entries in the same edition
- [ ] Ends with a natural, non-pushy link prompt

## Example

### Input
**Headline:** The Last Local Paper: How a Community of 40,000 Lost Its Only News Source in Six Months
**URL:** [link]
**Story description:** A reported feature on the closure of a regional daily newspaper after its parent company sold the printing assets and made all editorial staff redundant. Focuses on what residents say they have lost — council oversight, local sports coverage, obituaries — and what, if anything, has filled the gap.
**Sharpest detail:** Residents describe finding out about a major zoning decision affecting their neighbourhood through a Facebook post, months after it passed, because no one was covering local council meetings.
**Newsletter tone:** Warm, editorial — this is a media industry newsletter for journalists and editors
**Audience:** Journalists, editors, media executives

### Output
Residents of one regional city found out that a major zoning decision had reshaped their neighbourhood through a Facebook post — months after it passed, because no one had been covering council meetings. This is the story of what happens when a local paper closes not gradually but all at once: 40,000 people, one sold printing plant, and a town working out in real time what accountability journalism actually does that nothing else can replace.

It is a hard read. It is also a necessary one.

Full story → [link]

## Known Limitations
- Blurbs work best when the underlying story has a clear hook; if the piece is genuinely complex or ambiguous (a methodological explainer, a legal analysis), the blurb may feel thinner than the story deserves — in those cases, consider leading with the relevance to the reader rather than a narrative hook
- This skill produces one blurb per story; for a full newsletter edition with multiple stories, run it once per item and then review the edition as a whole for tonal consistency across blurbs
- Claude does not have access to your newsletter's historical voice or style guide — if you have specific phrasing conventions ("This week's must-read", "Worth your time"), include them in the prompt

## Related Skills
- [newsletter-teaser-writer](../../magazine-journalism/distribution/newsletter-teaser-writer.md)
- [newsletter-subject-line-writer](./newsletter-subject-line-writer.md)
- [social-media-excerpt](../../magazine-journalism/distribution/social-media-excerpt.md)

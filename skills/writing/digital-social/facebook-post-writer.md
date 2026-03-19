---
name: facebook-post-writer
status: beta
category: writing
subcategory: digital-social
version: 1.0
eval_score: null
tags: [facebook, social media, post, distribution, audience engagement, journalism]
---

# Facebook Post Writer

## What This Skill Does
Writes a ready-to-publish Facebook post that drives clicks and shares for a news story, documentary, podcast episode, or video — matched to how Facebook audiences actually read and engage.

## When To Use This Skill
- You have published or are about to publish a piece and need a Facebook post to accompany it
- You want to re-promote older content to a new audience without simply re-sharing the original link
- You are managing a media organisation's Facebook page and need consistent, on-brand posts at volume
- Your team's social posts feel flat or get low engagement and you want a more effective format

## What You Need To Provide
**Required:** The headline or title of the piece, a two- to four-sentence summary of what it covers, and the link to the published content.

**Optional:** The tone of your publication (serious and authoritative, conversational, campaigning), the target audience (general public, specialist professionals, local community, etc.), one surprising or counterintuitive fact from the piece to use as a hook, and any call to action beyond clicking the link (e.g. "share if you know someone affected by this").

## How Claude Approaches This
1. Identifies the most shareable or emotionally resonant element of the story — a striking statistic, an unexpected finding, a human detail — and leads with it rather than the headline.
2. Writes an opening line designed to stop the scroll: a question, a bold statement, or a specific detail that rewards attention. Avoids clickbait phrasing that Facebook's algorithm deprioritises.
3. Adds two to three sentences of context that make the post readable as a standalone piece, so readers understand why the story matters before clicking through.
4. Closes with a call to action or an invitation to engage — a direct question to the audience, a share prompt, or a simple directive to read more.
5. Adjusts length and register to the publication's tone and the content type (a breaking news post reads differently from a documentary launch post).

## Output Format
One post, 80–200 words. Plain prose — no bullet points, no headers. An optional emoji at the start if the publication uses them (note in the output if omitted). A closing line with the link placeholder. No hashtags unless requested (Facebook does not benefit from hashtag use the way Instagram or LinkedIn does). One variation offered at a shorter length (under 60 words) for testing purposes.

## Quality Criteria
- [ ] The first sentence works as a standalone hook — it does not begin with the publication name or "New:"
- [ ] The post gives enough context to understand the story without clicking, which paradoxically increases clicks
- [ ] Tone matches the stated publication voice (or defaults to clear, authoritative journalism if none specified)
- [ ] The closing line includes a specific call to action, not just a link
- [ ] No hashtags unless explicitly requested
- [ ] The short variation cuts to the core without losing the hook

## Example

### Input
Headline: "One in three care home workers has considered leaving the profession in the past year"
Summary: A new survey of 2,400 care workers across the country finds that low pay, understaffing, and lack of training are pushing experienced staff out of the sector. The report warns that a workforce crisis is building that will affect millions of elderly and disabled people within five years.
Link: [article URL]
Tone: Serious, public-interest journalism
Target audience: General public, especially people with elderly relatives
Hook fact: 61% of respondents said they had cried at work in the past month due to overwork

### Output

**Main post (140 words):**

Six in ten care workers say they cried at work last month — not from grief, but from exhaustion.

A new survey of more than 2,400 people working in care homes has found that one in three has thought about leaving the profession in the past year. Low pay, chronic understaffing, and almost no formal training are the reasons they give. Most say the situation has got worse, not better.

The people who look after our parents and grandparents are burning out — and the report that produced these findings warns that if nothing changes, the care system will face a workforce collapse within five years.

This affects every family. Read the full investigation here: [article URL]

If someone you know works in care, share this so their reality is heard.

---

**Short variation (52 words):**

Six in ten care workers say they cried at work last month — from overwork, not grief.

A new survey finds one in three is considering leaving the profession. The people caring for our elderly relatives are burning out.

Read the investigation: [article URL]

## Known Limitations
- Facebook's algorithm weighting changes frequently. Posts that perform well today (e.g. posts with external links in the body rather than the comments) may be penalised differently in future platform updates.
- This skill cannot predict whether a post will perform better with an image, a video thumbnail, or no visual attachment. Visual strategy requires testing on your specific page.
- For breaking news posted within the first hour of an event, the framing in this skill (context-first, measured tone) may be too slow. A faster, shorter format is more appropriate for live situations.

## Related Skills
- [instagram-post-writer](./instagram-post-writer.md)
- [newsletter-teaser-writer](../../magazine-journalism/distribution/newsletter-teaser-writer.md)
- [social-media-excerpt](../../magazine-journalism/distribution/social-media-excerpt.md)

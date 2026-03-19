---
name: youtube-description-writer
status: beta
category: writing
subcategory: digital-social
version: 1.0
eval_score: null
tags: [youtube, description, seo, metadata, search, above-the-fold]
---

# YouTube Description Writer

## What This Skill Does
Writes a complete YouTube video description with the first two lines optimized for the search preview, followed by a structured body that serves both the algorithm and the viewer.

## When To Use This Skill
- Your video is ready to upload and you need a description that performs in YouTube search
- You have a good title but need the description to carry additional keywords naturally
- You want to include links, chapters, and calls to action without the description looking cluttered
- You are repurposing an article, podcast, or press release into a YouTube video and need the description to match the new format

## What You Need To Provide
**Required:** The video title, a summary of what the video covers (2–5 sentences is enough), and the primary keyword or topic phrase you want to rank for.

**Optional:** Secondary keywords, any links to include (resources mentioned, social accounts, subscribe link), chapter markers if already written, and the tone of your channel (conversational, authoritative, documentary-style, etc.).

## How Claude Approaches This
1. Writes the opening two lines (roughly 150–160 characters total) as a standalone hook that reads well even when the rest is cut off by the "Show more" fold. These lines front-load the primary keyword and state the clearest benefit of watching.
2. Builds the description body: a short paragraph expanding on the video's value, then any secondary keywords woven in naturally, then a structured section for links and resources.
3. Closes with a call to action (subscribe, comment, or share prompt) kept to one short sentence so it does not feel forced. Formats the whole block with line breaks that create visual breathing room without adding markdown that YouTube strips anyway.

## Output Format
Plain text, structured as follows:

- **Lines 1–2 (above the fold):** 150–160 characters maximum. Primary keyword appears in the first line. No hashtags here.
- **Body paragraph:** 3–6 sentences. Expands the value proposition, weaves in secondary keywords organically, does not repeat the title word for word.
- **Links / Resources section:** Each item on its own line, labelled plainly ("Download the template:", "Full guide:", etc.).
- **Chapters block:** Paste-in-ready if chapters were provided; otherwise a placeholder line.
- **Call to action:** One sentence, no exclamation marks unless the channel's tone demands them.
- **Hashtags (optional):** 3–5 relevant hashtags on the final line if requested. YouTube treats anything after the third hashtag as less prominent.

Total length: 200–500 words. Long enough to signal depth to the algorithm; short enough that a viewer who clicks "Show more" isn't confronted with a wall of text.

## Quality Criteria
- [ ] The first two lines make sense and convey clear value when read in isolation (search preview test)
- [ ] Primary keyword appears within the first 25 words
- [ ] No keyword stuffing — every keyword phrase reads like a natural part of a sentence
- [ ] All links are labelled so a viewer knows what they are clicking before they click
- [ ] The call to action is specific (what to do) and brief (one sentence)
- [ ] The full description passes a plain-English read-aloud test — no robotic repetition

## Example

### Input
Video title: How to Negotiate a Freelance Contract (And Not Undersell Yourself)
Primary keyword: freelance contract negotiation
Secondary keywords: freelance rates, scope creep, kill fees, contract clauses
Summary: The video walks through the three contract clauses every freelancer should read before signing, how to respond to a lowball offer, and a word-for-word script for opening the negotiation conversation. It ends with a free template download.
Tone: Practical and direct. No hype.
Links to include: Free contract template (example.com/template), Instagram (@generichandle)
Chapters: already written separately

### Output
```
Freelance contract negotiation doesn't have to be awkward — if you know which three clauses actually matter.
This video gives you a plain-English breakdown of the terms most clients bury, plus a word-for-word script for pushing back on a low offer without losing the job.

Whether you're early in your freelance career or renegotiating with a long-term client, you'll leave with a framework you can use on your next contract. We cover kill fees, late-payment language, scope creep protection, and how to counter a rate that's below your floor — calmly and professionally.

Resources mentioned:
Free contract template: example.com/template

Chapters:
[paste chapter list here]

If this helped, subscribe — new videos on freelance business every week.

#FreelanceContracts #FreelanceRates #ContractNegotiation
```

## Known Limitations
- YouTube's search algorithm weighs watch time and click-through rate more heavily than description keywords — a strong description helps discovery but cannot compensate for a weak title or thumbnail.
- Claude cannot verify that your links are correct or live. Always paste-check every URL before publishing.
- If your video covers a highly competitive keyword, the description alone will not move you to page one. This skill optimizes what is within your control at the metadata level.
- Hashtags in the description are displayed above the title on mobile. If you add more than three, YouTube shows only the first three in that position.

## Related Skills
- [description-seo-writer](../../youtube/post-production/description-seo-writer.md)
- [youtube-title-writer](./youtube-title-writer.md)
- [youtube-chapters-writer](./youtube-chapters-writer.md)

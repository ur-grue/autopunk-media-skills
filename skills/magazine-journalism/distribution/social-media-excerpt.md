---
name: social-media-excerpt
status: stable
category: magazine-journalism
subcategory: distribution
version: 1.0
eval_score: 4.4
tags: [journalism, distribution, social-media, twitter, instagram, linkedin]
---

# Social Media Excerpt

## What This Skill Does
Extracts and reformats the most shareable passage or argument from a published article into platform-specific social media posts — without rewriting the journalism.

## When To Use This Skill
- Your article is published and you need ready-to-post social content that drives traffic or builds brand
- You want to tease a paywalled article on social without giving away its core findings
- You are repurposing a long-form feature across a social media calendar and need multiple distinct posts from a single piece
- You want the excerpt to sound like the article — not like marketing copy

## What You Need To Provide
**Required:** Full article text or a substantial excerpt (at least 400 words); which platforms to format for (X/Twitter, Instagram, LinkedIn, or all three)
**Optional:** Publication handle/username for attribution; specific passage you think is the most shareable; tone directive (threads/commentary style vs. quote-card style vs. straight excerpt); whether to include a link and call-to-read; paywall status

## How Claude Approaches This
1. Reads the full article and identifies 2–3 candidate excerpts: the most arresting sentence or statistic, the strongest quote from a source, and the article's most counterintuitive or surprising claim
2. For each platform, formats the excerpt to fit the platform's natural register and character conventions — not just truncation, but structural adaptation
3. For X/Twitter: a 240-character lead post that works standalone, optionally followed by a 2–3 tweet thread continuation
4. For LinkedIn: a slightly longer, context-setting frame before the excerpt, closing with a professional takeaway
5. For Instagram: a quote-card format with a caption that extends the thought
6. Preserves the article's voice — these posts should read like the journalism, not like promotional copy for it
7. Closes with a "Next Step" note: which post to publish first, whether to schedule the thread or post all platforms simultaneously, and whether thumbnail-concept-brief should be run to create a matching visual asset for the Instagram quote card

## Output Format
Platform-by-platform blocks, clearly labeled. Each block contains the post copy, character count note, and one-line usage guidance. Quote-card text (for Instagram) is clearly separated from caption. Total length: 350–500 words depending on platforms requested. Plain text throughout — no HTML. Output ends with a "Next Step" note: which platform to post to first, whether to run posts simultaneously or stagger them, and whether to use thumbnail-concept-brief to create the Instagram visual.

## Quality Criteria
- [ ] Every excerpt is drawn from the actual article — no paraphrase or editorial addition that is not in the piece
- [ ] X/Twitter post works as a standalone sentence — it does not require clicking the link to make sense
- [ ] LinkedIn post includes a framing line that gives professional context before the excerpt
- [ ] Instagram quote-card text is under 200 characters (legible at thumbnail size)
- [ ] No post oversells or exaggerates the article's claims beyond what the text supports
- [ ] Attribution format is consistent with the platform convention
- [ ] Output includes at least one concrete next action the user can take immediately (post to first platform, schedule the thread, or run thumbnail-concept-brief for the Instagram visual)

## Example

### Input
Article excerpt (from a reported feature on sleep science):

*"The prevailing advice about sleep has been eight hours for decades, but the research behind that number is shakier than most people realize. A series of large-scale studies in the 2010s found that adults who reported sleeping exactly eight hours were not, on average, living longer or performing better on cognitive tests than those who slept six and a half or seven. What the research consistently shows is not an optimal number, but a range — and the lower end of that range, for most healthy adults, is closer to six hours than eight.*

*'We've been selling people a number rather than a principle,' says Dr. Elena Marsh, a sleep researcher at a Midwestern university who was not involved in any of the commercial studies. 'The principle is: sleep until you feel restored. The number is a marketing convenience.'"*

Platforms: X/Twitter, LinkedIn, Instagram
Publication handle: @thejournalmagazine (fictional)
Paywall: Yes

### Output

---

**X / Twitter**

Post: *"'We've been selling people a number rather than a principle. The principle is: sleep until you feel restored. The number is a marketing convenience.'"* — sleep researcher on why the 8-hour rule is shakier than you think. [@thejournalmagazine, link in bio — subscriber]

*(241 characters with attribution. Works as a standalone quote. Paywall disclosed with "subscriber" flag.)*

**Optional thread continuation:**
2/ The research is more complicated than the advice. Large studies in the 2010s found no mortality or cognitive performance advantage for people who slept exactly 8 hours vs. those who slept 6.5–7. What the science shows is a range — not a number.
3/ Full piece at the link — worth the read if you've ever felt guilty about not hitting eight.

---

**LinkedIn**

Sleep advice has repeated the same number — eight hours — for decades. The research behind it is more contested than most people know.

*"We've been selling people a number rather than a principle. The principle is: sleep until you feel restored. The number is a marketing convenience."*

That's a sleep researcher quoted in a new reported feature on what the science actually shows — and why the consensus is more complicated than the headline. Relevant for anyone who manages their own schedule, their team's wellbeing, or workplace productivity norms.

[Link] (Subscriber article — @thejournalmagazine)

*(~180 words. Context-setting framing. Professional relevance angle. Attribution and paywall note included.)*

---

**Instagram**

*Quote card text (under 200 characters):*
"We've been selling people a number rather than a principle. The principle is: sleep until you feel restored."
— Sleep researcher, @thejournalmagazine

*Caption:*
Eight hours. That's the number everyone knows. But where does it come from — and does the research actually support it? A new reported feature pulls apart the science. Link in bio (subscriber article).

---

## Known Limitations
- This skill extracts and formats; it does not generate new editorial claims — if the article does not contain a strong standalone quote or arresting statistic, the social posts will be limited in impact
- Paywalled article performance on social varies significantly by platform and audience; LinkedIn often outperforms X for paywalled content because the framing can establish professional value before the click
- For Instagram, visual context (the image or graphic paired with the quote card) is not addressed here — use the thumbnail-concept-brief skill or art-direction skills for visual assets
- Passage selection is subjective; if you have a specific line in mind, provide it — Claude's selection may not match editorial judgment about what is most representative of the piece

## Related Skills
- [newsletter-teaser-writer](newsletter-teaser-writer.md)
- [headline-generator](../ideation/headline-generator.md)
- [thumbnail-concept-brief](../../../youtube/pre-production/thumbnail-concept-brief.md)

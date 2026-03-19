---
name: seo-headline-variants-writer
status: beta
category: writing
subcategory: digital-social
version: 1.0
eval_score: null
tags: [SEO, headlines, search intent, digital editing, keyword optimisation, click-through rate]
---

# SEO Headline Variants Writer

## What This Skill Does
Produces five headline variants for a single article, each optimised for a different reader search intent — so editors can choose the version that best matches how their target audience actually searches for this topic.

## When To Use This Skill
- You have a finished article and need a headline that will perform in search results, not just on the homepage
- Your original headline is strong editorially but contains no search-friendly keywords
- You are A/B testing headlines and want structurally distinct options, not minor word swaps
- You need to target different reader intents for the same story (e.g. informational readers vs. people actively making a decision)

## What You Need To Provide
**Required:** Article topic in one or two sentences; primary keyword or key phrase you want to rank for (e.g. "remote working productivity").
**Optional:** Secondary keywords; target audience (e.g. HR managers, first-time homebuyers, general readers); publication tone (neutral news, opinion, service journalism, investigative); article word count and type (explainer, investigation, interview, list, news report).

## How Claude Approaches This
1. Identifies the primary search intent behind the keyword — informational ("what is"), navigational ("find X"), commercial ("best X for Y"), or transactional ("how to do X") — and notes which the original article serves.
2. Writes one headline per intent type from the list below, placing the primary keyword as close to the start as the sentence allows without sounding unnatural.
3. Reviews each variant for character count (target: 55–65 characters for full display in Google search results), front-loading of the keyword, and editorial credibility — adjusting any variant that reads like clickbait at the expense of accuracy.

**The five intent types this skill targets:**
- Informational: reader wants to understand or learn something
- News / recency: reader is tracking a current event
- How-to / guide: reader wants step-by-step help
- Comparison / decision: reader is weighing options
- Opinion / take: reader wants analysis or a point of view

## Output Format
Five numbered headline variants, each on its own line. Below each variant: intent label, character count, and a one-sentence rationale explaining the strategic choice. Total output: 15–20 lines. No bullet points inside the rationale — single sentence only. Sentence case, not title case, unless title case is standard for your publication (specify if so).

## Quality Criteria
- [ ] Primary keyword appears in every variant, within the first eight words where possible
- [ ] Each variant is structurally distinct — not a synonym swap of the same sentence pattern
- [ ] All five variants are factually accurate representations of the article
- [ ] No variant exceeds 70 characters (hard limit for search display)
- [ ] None of the variants uses manufactured urgency ("You won't believe," "Shocking new") or unverifiable superlatives ("the best ever")

## Example

### Input
Article: An investigation into how large employers are quietly reversing remote working policies, requiring staff to return to the office full-time with little notice, and the legal questions this raises for employees who relocated during the pandemic.

Primary keyword: remote working rights
Secondary keywords: return to office policy, work from home law
Audience: employed adults, general readers
Tone: neutral investigative journalism
Article type: investigation, approximately 2,400 words

### Output

1. **Remote working rights under threat as employers reverse pandemic-era policies**
   Intent: Informational | 71 chars (trim if needed) | Leads with the rights angle, which is the investigation's core finding; suits readers who searched for what their entitlements are.

2. **Firms quietly scrap remote working as return-to-office orders grow**
   Intent: News / recency | 63 chars | Foregrounds the trend as a developing news event; "quietly" signals the investigative nature without overpromising.

3. **How to protect your remote working rights if your employer calls you back**
   Intent: How-to / guide | 68 chars | Directly addresses the reader facing this situation; "calls you back" mirrors natural search language.

4. **Remote working vs return to office: what employers can legally require**
   Intent: Comparison / decision | 66 chars | Frames the tension as a question the reader is weighing; includes both secondary keywords naturally.

5. **The quiet rollback of remote working — and why employees should be worried**
   Intent: Opinion / take | 69 chars | Signals editorial perspective; suits opinion or analysis placement; "rollback" is a strong, specific verb.

## Known Limitations
- This skill targets English-language search behaviour on Google. Search intent patterns differ significantly on Bing, regional search engines, and non-English markets — variants should be reviewed against local keyword data before use.
- Character counts are guides, not guarantees. Google's display length depends on pixel width, not character count precisely; check in a SERP preview tool before publishing.
- The skill does not pull live keyword volume or competition data. You should validate the primary keyword against your own analytics or a keyword research tool before optimising around it.
- Headlines optimised for search can underperform on social platforms where curiosity-gap and emotional triggers drive clicks. Consider using the social-media-excerpt skill in combination for platform-specific distribution.

## Related Skills
- [seo-meta-description-writer](seo-meta-description-writer.md)
- [push-notification-writer](push-notification-writer.md)
- [headline-generator](../../magazine-journalism/ideation/headline-generator.md)
- [newsletter-teaser-writer](../../magazine-journalism/distribution/newsletter-teaser-writer.md)

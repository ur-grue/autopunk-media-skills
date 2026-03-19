---
name: seo-meta-description-writer
status: beta
category: writing
subcategory: digital-social
version: 1.0
eval_score: null
tags: [SEO, meta description, search engine optimisation, digital editing, click-through rate, keyword placement]
---

# SEO Meta Description Writer

## What This Skill Does
Writes a 150–160 character meta description for a web article, placing the primary keyword naturally within the first half of the sentence and ending with a clear reason to click.

## When To Use This Skill
- An article is ready to publish and needs a meta description before it goes live
- Existing meta descriptions are auto-generated from the article's opening paragraph and read awkwardly in search results
- You are auditing older content and rewriting meta descriptions to improve click-through rates
- You need meta descriptions for multiple articles quickly and want consistent quality across all of them

## What You Need To Provide
**Required:** Article topic in two to three sentences; the primary keyword or key phrase the article should rank for.
**Optional:** Secondary keyword; article type (news report, how-to guide, investigation, interview, opinion, explainer, listicle); target audience; any specific call-to-action style your publication uses (e.g. "Read our investigation," "Find out why," "See the full breakdown").

## How Claude Approaches This
1. Identifies what the article delivers — information, guidance, analysis, or a news update — and uses that to determine the right reader promise (what will the reader know or be able to do after reading?).
2. Writes a draft placing the primary keyword within the first 60 characters, so it appears before truncation on most mobile displays. The description reads as a natural sentence, not a keyword list.
3. Counts characters precisely and adjusts: the target is 150–160 characters. Below 150, the description may be padded by Google with unrelated site text. Above 160, it will be cut mid-sentence in search results.

## Output Format
One primary meta description, followed by one alternative variant. Each is presented on its own line with an exact character count in brackets. A brief note explains the strategic difference between the two variants (e.g. one emphasises information, one emphasises action). Total output: 6–8 lines. No markdown formatting inside the descriptions themselves — plain sentence text only.

## Quality Criteria
- [ ] Primary keyword appears within the first 60 characters of the description
- [ ] Character count falls between 150 and 160 (inclusive) for the primary version
- [ ] The description does not simply restate the headline — it adds context or deepens the reader's reason to click
- [ ] No keyword stuffing — the primary keyword appears once; a secondary keyword may appear once if it fits naturally
- [ ] The description ends with a forward-looking phrase that implies payoff ("Find out," "Here's what we know," "Read the investigation")
- [ ] The description reads as a complete, grammatically correct sentence

## Example

### Input
Article topic: An investigation into how large employers are quietly reversing remote working policies, requiring staff to return to the office full-time with little notice, and the legal questions this raises for employees who relocated during the pandemic.

Primary keyword: remote working rights
Secondary keyword: return to office policy
Article type: Investigation
Audience: Employed adults, general readers

### Output

**Primary meta description [157 characters]:**
Remote working rights are under pressure as employers reverse pandemic policies. Our investigation reveals the legal questions facing staff ordered back to the office.

**Alternative variant [153 characters]:**
Remote working rights explained: what employers can legally require and what staff can do if a sudden return-to-office policy puts their job at risk.

*Strategic difference: The primary version leads with the investigation's news angle and positions the publication as the source. The alternative leads with the informational promise — better for readers searching for guidance rather than following the news story.*

## Known Limitations
- Google does not guarantee it will use your meta description. If the algorithm judges that a passage from the article body better matches a user's query, it will display that instead. A strong meta description reduces this but cannot eliminate it.
- The 150–160 character target is based on Google's typical display window as of 2024–2025. Google has adjusted this threshold before; check a SERP preview tool if pixel-accurate display matters.
- This skill writes one meta description per article. If a single article targets multiple distinct search queries (common for long-form evergreen content), you may need separate landing-page variants or parameter-based URLs — that is outside this skill's scope.
- Meta descriptions have no direct effect on search ranking. Their value is click-through rate, not ranking position. Do not use this skill as a substitute for on-page SEO work (headline tags, body keyword placement, internal linking).

## Related Skills
- [seo-headline-variants-writer](seo-headline-variants-writer.md)
- [push-notification-writer](push-notification-writer.md)
- [newsletter-teaser-writer](../../magazine-journalism/distribution/newsletter-teaser-writer.md)
- [social-media-excerpt](../../magazine-journalism/distribution/social-media-excerpt.md)

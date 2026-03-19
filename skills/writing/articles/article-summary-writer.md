---
name: article-summary-writer
status: beta
category: writing
subcategory: articles
version: 1.0
eval_score: null
tags: [summary, abstract, articles, newsletters, digital, journalism, editing]
---

# Article Summary Writer

## What This Skill Does
Writes a concise, publication-ready summary of a finished article — suitable for use as a standfirst, a search engine meta description, a newsletter teaser, an abstract, or an internal briefing note.

## When To Use This Skill
- You need a standfirst (deck) for a feature article before sending to layout
- Your CMS requires a meta description and you want something better than a truncated first sentence
- You are curating a newsletter and need short teasers for three or more articles you did not write yourself
- An editor has asked for a 100-word summary of a long investigation to circulate internally before publication
- You are submitting an article to an academic journal, industry directory, or press archive that requires an abstract

## What You Need To Provide
**Required:** The full article text, or a substantial excerpt covering the lede, nut graf, and conclusion; the intended use of the summary (standfirst, meta description, newsletter teaser, abstract, or internal briefing)
**Optional:** Target word count or character limit; the publication's house style or register (formal, conversational, neutral); any key finding or quote that must appear in the summary; the intended audience for the summary if different from the article's primary reader

## How Claude Approaches This
1. Reads the article to identify the central claim or finding, the evidence that supports it, and the "so what" — the reason the story matters to the reader right now
2. Selects the summary format that matches the stated use: standfirts lead with the angle, not a repeat of the headline; meta descriptions front-load keywords and end with an implicit action; newsletter teasers create curiosity without spoiling the payoff; abstracts follow a structure of purpose, method, finding, implication
3. Writes the summary in the same register as the article — a tabloid investigation gets a punchy two-sentence summary; a long-read profile gets something more measured
4. Avoids lifting the first sentence of the article verbatim — a summary should add orientation, not repeat what the reader is about to read
5. Flags if the article lacks a clear central finding or conclusion, and offers a summary of its central question instead

## Output Format
One summary per use case requested. Length by use:
- Standfirst / deck: 20–40 words, no full stop at end (standard UK/international magazine convention)
- Meta description: 150–160 characters including spaces, active voice, no clickbait
- Newsletter teaser: 30–60 words, ends on a hook or open question
- Abstract: 100–200 words, structured as purpose → method → finding → implication
- Internal briefing: 80–120 words, plain prose, bullet point key facts at end

Register matches the original article. No "In this article..." or "The author explores..." constructions.

## Quality Criteria
- [ ] Summary reflects the article's actual central finding, not a generic description of the topic
- [ ] Word or character count matches the stated use case
- [ ] Register (formal, neutral, conversational) matches both the article and the intended platform
- [ ] Does not reproduce the article's opening sentence verbatim
- [ ] No invented claims — every statement in the summary is supportable from the article text provided
- [ ] Newsletter teasers and standfirsts end with enough open tension to motivate a click or continued reading
- [ ] Abstracts follow a clear four-part structure: purpose, method, finding, implication

## Example

### Input
Article text (excerpt):

*Nut graf:* For the first time since records began, more than half of the world's major river basins measured in a new international study are showing signs of "hydrological stress" — reduced seasonal flow that threatens both agricultural irrigation and urban water supply. The study, which analysed 40 years of satellite and ground-station data across 68 river systems, identifies groundwater over-extraction as the primary driver in 34 of those basins, ahead of both reduced precipitation and increased evaporation caused by rising temperatures.

*Conclusion paragraph:* The researchers caution that the consequences are not evenly distributed. River basins in South Asia, the Middle East, and sub-Saharan Africa show the most acute stress indicators, while some northern European and Scandinavian systems have seen flow increase due to accelerated glacial melt — a pattern the authors describe as "a temporary buffer that will reverse within decades."

Use: newsletter teaser (for a general-interest science and environment newsletter, conversational register, 50 words max)

### Output

More than half of the world's major river systems are now under hydrological stress — reduced flows that threaten farming and cities alike. A 40-year satellite study has identified the main culprit: we are pumping groundwater out faster than it can be replaced. The consequences, as ever, fall hardest on the places least equipped to adapt.

*(48 words)*

---

**Additional output — Meta description (160 characters):**

A 40-year study of 68 river systems finds over half show reduced seasonal flow. Groundwater over-extraction is the primary driver — and the impacts are not evenly shared.

*(161 characters — trim one word to fit strict 160-character limits)*

## Known Limitations
- Summaries are only as accurate as the article text provided — if the article contains errors, the summary will reflect them; run fact-check-prompt before publishing any summary independently of the full article
- For articles with multiple equal-weight findings (common in data journalism), Claude will select the finding it judges most significant; specify which finding to lead with if you have a preference
- Academic abstracts in specialist fields (medicine, law, economics) may need terminology review by a subject expert — Claude writes in plain academic English, which may not match a specific journal's style guide
- This skill works from text only; if the article's central argument is carried by a data visualisation or photograph that is not described in the text, that argument will not appear in the summary

## Related Skills
- [newsletter-teaser-writer](../../magazine-journalism/distribution/newsletter-teaser-writer.md)
- [headline-generator](../../magazine-journalism/ideation/headline-generator.md)
- [copy-editor-assistant](../../magazine-journalism/editing/copy-editor-assistant.md)

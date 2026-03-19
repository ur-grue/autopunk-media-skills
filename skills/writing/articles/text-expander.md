---
name: text-expander
status: beta
category: writing
subcategory: articles
version: 1.0
eval_score: null
tags: [expansion, drafting, wordcount, fleshing-out, detail, context]
---

# Text Expander

## What This Skill Does
Expands a short passage — a note, a bullet point, a compressed draft paragraph, or a single-sentence summary — into fully developed prose at a specified length and tone, adding context, detail, and flow without fabricating facts.

## When To Use This Skill
- You have a reporter's rough notes or a bullet-point outline and need them turned into a draft article section
- A paragraph is underdeveloped — it states something without explaining it — and you need it fleshed out before editing
- You wrote a tight summary (for a pitch or abstract) and now need to expand it back into full article prose
- A section is short of word count and needs substantive expansion, not padding
- You want a first draft of a section written from a tight brief before doing your own reporting

## What You Need To Provide
**Required:** The short text or notes to expand, and a target word count or length description (e.g. "three paragraphs", "400 words").

**Optional:** The tone or register (news report, long-form feature, opinion column, explainer), the audience (general public, specialist, trade), any specific facts or quotes you want included verbatim, and a sentence from the surrounding article to help calibrate voice.

## How Claude Approaches This
1. Reads the source text closely to identify what is stated, what is implied, and what context a reader would need to understand it fully — without assuming facts that are not in the brief.
2. Structures the expanded passage to develop the idea logically: introducing the claim or subject, providing context or evidence from the brief, and advancing to a clear conclusion or transition point.
3. Writes at the tone and register requested, keeping any provided facts or quotes exactly as given. Where context is genuinely missing, uses clearly hedged language ("according to...", "if confirmed...") rather than filling gaps with invented detail.

## Output Format
Continuous prose paragraphs unless the source material calls for another structure. Length matches the requested target within 10%. Tone consistent throughout — does not shift between registers mid-passage. No headers or bullets unless the source text is explicitly a structured list. If specific quotes are provided, they appear within quotation marks, attributed exactly as given.

## Quality Criteria
- [ ] Every factual claim in the output can be traced directly to the source text provided — nothing invented
- [ ] The passage reads as continuous, professionally edited prose with no filler phrases or padding
- [ ] Tone is consistent and matches the register specified
- [ ] Word count lands within 10% of the target
- [ ] Provided quotes or verbatim figures appear exactly as given, not paraphrased

## Example

### Input
Text to expand:
"Urban cycling infrastructure in the city has grown significantly. New lanes added last year. Complaints from drivers. Council says the scheme is working."

Target length: 200 words
Tone: News article, broadsheet register
Audience: General public
Context sentence from the surrounding article: "Transport planners are under pressure to reduce car use on city streets while keeping commuter routes moving."

### Output

The city's cycling network has expanded at its fastest rate in a decade, with more than 40 kilometres of new dedicated lanes installed in the past year alone — a shift that has divided opinion among residents and commuters.

Supporters of the scheme point to a measurable rise in cycling numbers along key commuter routes, with council figures showing a 22% increase in weekday journeys recorded by automated counters installed across the network. City transport officials say the lanes are performing as intended, drawing in riders who previously found the roads too hostile for cycling.

Not everyone is satisfied. Resident and business groups in several affected streets have raised objections, arguing that lane markings have reduced available parking and slowed delivery traffic in areas that depend on frequent vehicle access. A formal petition presented to the council last month drew more than 3,000 signatures.

The council maintains that the scheme is on track. In a statement issued to local media, a spokesperson said the authority would review the network's performance later this year, with any adjustments to be considered alongside the city's broader ten-year transport strategy.

## Known Limitations
- Claude cannot add facts that are not in your brief — if the source text is thin, the expansion will rely on general contextual logic rather than specific local detail. Always verify the output against your own reporting before publication.
- The skill does not conduct research or retrieve current data. If you need specific statistics, quotes, or recent developments included, provide them in the brief.
- For opinion or column writing, Claude will match the register you describe but cannot replicate a specific columnist's voice without a detailed voice sample.
- Expanding very short or ambiguous notes (fewer than 15 words) can produce plausible-sounding prose that misreads your intent — review the first output carefully and provide a corrected brief if needed.

## Related Skills
- [feature-article-writer](./feature-article-writer.md)
- [paragraph-clarity-rewriter](./paragraph-clarity-rewriter.md)
- [word-count-reducer](./word-count-reducer.md)
- [news-article-writer](./news-article-writer.md)

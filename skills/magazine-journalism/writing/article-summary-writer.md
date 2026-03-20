---
name: article-summary-writer
status: stable
category: magazine-journalism
subcategory: writing
version: 1.0
eval_score: 4.42
tags: [journalism, writing, summary, abstract, TLDR, standfirst, deck]
---

# Article Summary Writer

## What This Skill Does
Writes a concise summary, standfirst, abstract, or deck for a completed article at a specified length and format — capturing the essential argument and news value without spoiling the reading experience.

## When To Use This Skill
- You need a standfirst or deck for a published article and the editor wants it in under 50 words
- You're preparing newsletter copy and need a two-sentence summary of each article to drive click-through
- An article needs an abstract for a database, archive, or academic citation
- You're writing social media preview text and need the article's core argument distilled to a single sentence
- The CMS requires a meta description and you want it to reflect the article's substance, not just keywords

## What You Need To Provide
**Required:**
- The full article text (or a detailed summary of its content, argument, and conclusion)
- The summary format: standfirst, deck, abstract, newsletter teaser, meta description, or general summary

**Optional:**
- Target length (specific word count or character count; defaults vary by format — see Output Format)
- Tone: formal, conversational, urgent, or neutral
- Whether the summary should avoid revealing the article's conclusion (important for opinion pieces and investigations)
- Target audience if different from the article's primary readership

## How Claude Approaches This

1. **Identifies the article's core argument.** Before writing, isolates the single most important claim, finding, or narrative the article makes. This is not always the lede — sometimes the real argument emerges in the middle of the piece. The summary leads with this core, not with setup or background.

2. **Matches the format conventions.** Each summary type has distinct conventions:
   - **Standfirst/deck:** Complements the headline — adds the "why should I read this" that the headline implies but doesn't deliver. Never repeats the headline's phrasing.
   - **Abstract:** States the subject, method, findings, and significance in neutral academic register.
   - **Newsletter teaser:** Creates a curiosity gap — gives enough to interest, withholds enough to compel the click.
   - **Meta description:** Front-loads the most important information within 155 characters for search engine display.
   - **General summary:** Captures the article's argument, key evidence, and conclusion in proportion to the specified length.

3. **Compresses without distorting.** Every fact in the summary must be present in the article. Claude does not infer, extrapolate, or add context that the article itself does not contain. If the article hedges a conclusion, the summary hedges too.

4. **Calibrates length precisely.** Hits the specified word or character count within 10% tolerance. For standfirsts, this typically means 25–50 words. For abstracts, 100–150 words. For meta descriptions, 120–155 characters.

## Output Format

Varies by format:
- **Standfirst/deck:** 25–50 words, one to two sentences. Complements the headline.
- **Abstract:** 100–150 words, three to four sentences. Neutral academic register.
- **Newsletter teaser:** 30–60 words, two to three sentences. Conversational, ends with a forward lean.
- **Meta description:** 120–155 characters, one to two sentences. Front-loaded with key information.
- **General summary:** As specified, default 75–100 words.

Output is labeled with the format type. No preamble or explanation — just the summary text.

```
**[Format type]:**
[Summary text]
```

## Quality Criteria
- [ ] The summary captures the article's core argument or news value — not just the topic
- [ ] Every fact in the summary is present in the original article — nothing inferred or added
- [ ] The summary does not repeat the headline's phrasing (for standfirsts and decks)
- [ ] Length hits the specified target within 10% tolerance
- [ ] Format conventions are followed (academic register for abstracts, curiosity gap for teasers, front-loaded info for meta descriptions)
- [ ] The summary preserves the article's hedges and qualifications — does not overclaim
- [ ] The summary works as a standalone text — a reader who sees only the summary understands the article's significance

## Example

### Input
**Article text (excerpt — 1,800-word feature):**

The city's public school system will begin offering free breakfast and lunch to all students regardless of family income starting next academic year, following a unanimous vote by the school board on Tuesday evening. The universal meals program, budgeted at $14.2 million annually, will be funded through a reallocation of existing federal nutrition subsidies and a new line item in the city's education budget.

Supporters say the program eliminates the stigma associated with means-tested free lunch programs, where qualifying students are often identifiable by the payment method they use in the cafeteria line. Research from three pilot districts that adopted universal meals between 2020 and 2023 showed a 12% reduction in chronic absenteeism and a measurable improvement in afternoon test performance among students who had previously skipped lunch.

Critics on the board — who ultimately voted in favor — raised concerns about sustainability, noting that the $14.2 million figure assumes stable federal subsidies that could be reduced in the next reauthorization cycle. Superintendent Diana Marsh acknowledged the risk but argued that the educational and equity benefits justified the investment...

[Article continues with implementation details, parent reactions, comparison to other districts, and a closing section on the national movement toward universal school meals.]

**Format requested:** Three versions — standfirst, newsletter teaser, meta description

**Headline (for standfirst context):** "Every Student Eats: School Board Approves Universal Free Meals"

### Output

**Standfirst:**
The $14.2 million program eliminates means-tested lunch lines and their stigma. Pilot data from three districts showed a 12% drop in chronic absenteeism — but the funding model depends on federal subsidies that may not last.

**Newsletter teaser:**
The city's school board voted unanimously to offer free breakfast and lunch to every student, regardless of income — a $14.2 million bet that removing the stigma of means-tested meals will cut absenteeism and improve learning. The early data is promising, but the funding math has a significant asterisk.

**Meta description:**
City school board approves $14.2M universal free meals program for all students. Pilot data shows 12% drop in absenteeism, but federal funding risks remain.

## Known Limitations
- The skill works from the article text you provide. If the article is still in draft and the argument is unclear or contradictory, the summary will reflect that ambiguity rather than resolve it. Finalize the article's argument before requesting a summary.
- For very long articles (3,000+ words) with multiple competing threads, the summary must prioritize — and the skill's judgment about what matters most may not match the writer's or editor's intent. Specify which thread to emphasize if the article covers multiple stories.
- Newsletter teasers and meta descriptions are designed to drive engagement, which creates a tension with accuracy. The skill errs on the side of accuracy — the teaser will never promise something the article doesn't deliver, even if a more provocative summary would perform better.

## Related Skills
- [headline-generator](../ideation/headline-generator.md) — write the headline that the standfirst will complement
- [newsletter-teaser-writer](../distribution/newsletter-teaser-writer.md) — dedicated newsletter copy skill with more format options
- [social-media-excerpt](../distribution/social-media-excerpt.md) — adapt article content for social media platforms
- [copy-editor-assistant](../editing/copy-editor-assistant.md) — review the summary for style and accuracy

---
name: related-articles-teaser-writer
status: beta
category: writing
subcategory: articles
version: 1.0
eval_score: null
tags: [related-content, internal-linking, digital-publishing, reader-retention, teasers]
---

# Related Articles Teaser Writer

## What This Skill Does
Writes a short, compelling "Related Articles" or "Read Next" teaser block — two to five items — that matches the tone of a parent article and gives readers a clear reason to click each linked piece.

## When To Use This Skill
- You have published a new article and want to surface related coverage for readers to explore
- Your CMS requires hand-written teaser copy rather than auto-generated link previews
- You want teasers that are editorially consistent with the parent article's tone, not generic click-bait
- You are building a newsletter or landing page that aggregates thematically linked stories

## What You Need To Provide
**Required:**
- The title or topic of the parent article (the one readers just finished)
- A list of two to five related article titles — include a one-sentence summary for each if the titles alone are not self-explanatory

**Optional:**
- The tone of the parent article (e.g., investigative, explainer, opinion, breaking news)
- The platform or context where the block will appear (article footer, sidebar, newsletter)
- Any house style constraint (e.g., maximum character count per teaser, avoid question headlines)

## How Claude Approaches This
1. Reads the parent article's topic and tone to establish the editorial register — a hard-news investigation calls for different teaser language than a lifestyle feature
2. For each linked article, identifies the most compelling hook: a surprising finding, an unanswered question the parent raised, or a directly useful follow-up
3. Writes each teaser as a single punchy sentence (or a headline plus one-sentence sell) that makes the connection to the parent article explicit without repeating the same wording
4. Checks the block as a whole: no two teasers should use the same opening construction, and the set should feel like a curated editorial recommendation rather than a random content dump

## Output Format
A clearly labelled block headed "Read Next" or "Related Coverage" (or whichever label you specify). Each item is formatted as:

**Article Title**
One sentence explaining why this piece is worth reading next.

The block is 60–120 words in total. Tone matches the parent article. No marketing language, no superlatives, no "click here." Each teaser stands alone — it should work even if the reader sees only that item.

## Quality Criteria
- [ ] Every teaser has a distinct angle — no two items pitch the same idea in slightly different words
- [ ] Each teaser makes the connection to the parent article clear without restating the parent headline
- [ ] Language matches the editorial register of the parent article (e.g., not breezy if the parent is investigative)
- [ ] No clickbait constructions ("You won't believe…", "This will shock you")
- [ ] The block reads as a coherent editorial recommendation, not a random list

## Example

### Input
**Parent article:** "Cities Are Quietly Reclassifying Public Green Spaces — and Residents Are Losing Access" (investigative, print-style, 2,000 words)

**Related articles to tease:**
1. "The Legal Loophole That Lets Councils Sell Off Parks" — explains the planning regulation used to reclassify land
2. "How Three Neighborhoods Fought Back and Won" — case studies of successful community campaigns
3. "Green Space and Mental Health: What the Research Actually Says" — evidence review on health impacts of park access

**Platform:** Article footer

### Output

---

**Read Next**

**The Legal Loophole That Lets Councils Sell Off Parks**
The planning regulation at the centre of these reclassifications is older than most people realise — and surprisingly easy for local authorities to invoke.

**How Three Neighborhoods Fought Back and Won**
Community campaigns rarely stop these decisions. These three did. Here's what they did differently.

**Green Space and Mental Health: What the Research Actually Says**
The health case for protecting public parks is often made in general terms. The evidence is more specific — and more striking — than the debate usually reflects.

---

## Known Limitations
- Claude cannot verify that the related article titles you provide are accurate or that the articles exist; if a title is vague, the teaser may not match the actual content
- For very short linked articles (under 300 words), the one-sentence sell may be more specific than the article warrants — provide a brief summary in your input to avoid this
- Teaser copy does not include tracking parameters, CMS slugs, or URLs; those must be added manually

## Related Skills
- [headline-generator](../articles/headline-generator.md)
- [newsletter-teaser-writer](../digital-social/newsletter-teaser-writer.md)
- [series-recap-writer](../articles/series-recap-writer.md)

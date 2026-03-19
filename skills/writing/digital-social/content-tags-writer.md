---
name: content-tags-writer
status: beta
category: writing
subcategory: digital-social
version: 1.0
eval_score: null
tags: [tags, keywords, seo, metadata, youtube, articles, discoverability]
---

# Content Tags Writer

## What This Skill Does
Generates a complete, platform-appropriate set of tags and keywords for a video or article, optimised for discoverability without keyword stuffing.

## When To Use This Skill
- You have finished a video or article and need to add tags before publishing
- Your existing tags are generic or underperforming and you want a more targeted set
- You are building a content archive and need consistent, searchable metadata across many pieces
- Your platform (YouTube, WordPress, CMS) requires a tag field and you are unsure what to include

## What You Need To Provide
**Required:** A summary or full text of the article or video (a headline plus two or three sentences is enough), the platform you are publishing on (YouTube, a news CMS, a podcast platform, etc.), and the primary subject or topic.

**Optional:** Your target audience, any competitor content or trending topics you want to rank alongside, the geographic focus of the story, and any house-style restrictions on tag format (e.g. lowercase only, no spaces).

## How Claude Approaches This
1. Identifies the core subject, key people, locations, organisations, and themes in the content — these become the primary tags.
2. Expands to related search terms a target audience would actually type: common phrasings, broader category terms, and relevant adjacent topics.
3. Filters the list for the platform: YouTube tags are shorter and more numerous; CMS tags are fewer and more precise; podcast tags follow category conventions. Removes redundant, overly broad, or low-value terms.
4. Sorts the final set by relevance, with the most specific and searchable tags first.

## Output Format
A numbered list of 10–25 tags depending on platform norms, with the most specific tags first. Each tag is a short phrase (one to four words). No hashtag symbols unless the platform requires them. A brief note explains why the top five tags were chosen. Total output: under 300 words.

## Quality Criteria
- [ ] Every tag is directly relevant to the content — no generic filler terms like "news" or "video"
- [ ] The list includes at least three specific terms (a name, a place, an organisation, or a precise concept) not just broad category words
- [ ] Tag length and format matches the named platform's conventions
- [ ] No duplicate terms or near-identical variants in the same list
- [ ] The five most important tags appear first

## Example

### Input
Platform: YouTube
Content summary: A 12-minute documentary report on urban heat islands in mid-sized European cities. The video follows city planners in Lyon and Lisbon who are using green roofs and reflective pavements to reduce summer temperatures. Aimed at people interested in urban planning, climate adaptation, and European policy.

### Output
**Recommended tags (YouTube — 18 tags):**

1. urban heat island
2. green roofs Europe
3. climate adaptation cities
4. Lyon urban planning
5. Lisbon heat reduction
6. reflective pavement
7. city cooling strategies
8. European climate policy
9. urban greening
10. heat stress cities
11. sustainable urban design
12. documentary urban planning
13. climate resilience
14. city infrastructure
15. summer heat Europe
16. environmental documentary
17. green infrastructure
18. urban environment

**Why the top five were chosen:**
"Urban heat island" is the precise scientific term most viewers would search. "Green roofs Europe" targets a specific, growing search trend. "Climate adaptation cities" catches planners and policy researchers. "Lyon urban planning" and "Lisbon heat reduction" capture location-specific searches and give the video a geographic anchor that broad climate content lacks.

## Known Limitations
- Tag effectiveness depends heavily on platform algorithm changes that this skill cannot predict. Terms that perform well today may lose value within months.
- For highly specialised technical content (academic research, niche industries), Claude may suggest tags that are accurate but have low actual search volume. Cross-check against your platform's search analytics before publishing.
- This skill does not access live search data, trending topics, or keyword volume tools. It generates tags from the content itself, not from current platform trends.

## Related Skills
- [seo-title-optimizer](../../youtube/pre-production/seo-title-optimizer.md)
- [description-seo-writer](../../youtube/post-production/description-seo-writer.md)
- [chapter-timestamps](../../youtube/post-production/chapter-timestamps.md)

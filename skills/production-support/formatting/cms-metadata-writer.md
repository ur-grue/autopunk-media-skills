---
name: cms-metadata-writer
status: stable
category: production-support
subcategory: formatting
version: 1.0
eval_score: 4.44
tags: [production-support, CMS, metadata, publishing, web, SEO]
---

# CMS Metadata Writer

## What This Skill Does
Writes structured metadata fields — title tag, meta description, tags, category, slug, and Open Graph text — for a CMS entry, optimized for search discoverability and social sharing.

## When To Use This Skill
- You have a finished article and need to fill in the CMS metadata fields before hitting publish
- You are backfilling metadata for older articles that were published without proper SEO fields
- You need consistent, style-compliant metadata across a batch of articles being migrated to a new CMS
- You want to optimize an existing article's metadata after seeing poor search performance

## What You Need To Provide
**Required:** The article text (or a detailed summary including headline, topic, key facts, and angle); the publication name or site name (for title tag formatting).

**Optional:** The CMS platform (WordPress, Ghost, Webflow, custom — affects field naming); target keywords or phrases the article should rank for; character limits for title tag and meta description (defaults: 60 characters for title, 155 for description); the publication's tagging taxonomy (list of existing tags to choose from); whether Open Graph / social sharing fields are needed; the article's section or vertical within the publication.

## How Claude Approaches This
1. **Reads the article to identify the core topic, angle, and target audience.** The metadata must accurately represent the content — not promise something the article does not deliver. Identifies the primary keyword theme and the article's unique angle within that theme.

2. **Writes the title tag for search intent, not just the headline.** The article's headline and the SEO title tag serve different purposes. The title tag is rewritten to include the primary keyword naturally, stay within character limits, and communicate what the reader will get — while the headline can be more creative or provocative.

3. **Writes the meta description as a click-worthy summary.** 150–155 characters that answer the searcher's implicit question: "Is this article worth my time?" Includes the primary keyword, states the article's key value proposition, and ends with a reason to click. No keyword stuffing.

4. **Generates tags from the article's actual content.** Selects 4–8 tags that reflect the article's topics, not aspirational keywords. If the publication provides a tagging taxonomy, selects from that list only. Tags are formatted in the publication's style (lowercase, title case, hyphenated, etc.).

5. **Produces social sharing fields.** Writes Open Graph title and description optimized for social previews — shorter, punchier, and more curiosity-driven than the SEO title and meta description. These fields are designed to maximize click-through when the article appears in a social feed.

## Output Format
A structured metadata block with clearly labeled fields, ready to copy into the CMS. Fields included: SEO Title (with character count), Meta Description (with character count), URL Slug, Tags, Category/Section, OG Title, OG Description. Each field on its own line. No prose explanations within the block — all notes or alternatives are listed separately after the metadata block. Tone: precise, functional, designed for a web editor who needs to paste and publish.

```
**SEO Title:** [title] (XX characters)
**Meta Description:** [description] (XXX characters)
**URL Slug:** [slug]
**Category:** [category]
**Tags:** [tag1, tag2, tag3, ...]
**OG Title:** [social title] (XX characters)
**OG Description:** [social description] (XXX characters)
```

## Quality Criteria
- [ ] SEO title is within the specified character limit (default 60) and includes the primary keyword
- [ ] Meta description is within 155 characters and provides a compelling reason to click
- [ ] URL slug is short, readable, lowercase, and hyphen-separated — no stop words or filler
- [ ] Tags reflect the article's actual content, not aspirational topics the article does not cover
- [ ] OG title and description are distinct from the SEO fields — optimized for social, not search
- [ ] No keyword stuffing in any field
- [ ] All fields are formatted for direct paste into the CMS — no extra formatting to strip

## Example

### Input
**Article headline:** Why Your City's Bus System Is Secretly the Most Important Climate Policy It Has

**Article summary:** A 2,200-word feature arguing that municipal bus networks — not electric vehicles, bike lanes, or recycling programs — are the single most effective per-dollar climate intervention available to city governments. Cites ridership data, emissions modeling, and interviews with three urban transport researchers. Aimed at a general audience interested in climate and urban policy.

**Publication:** The Urban Observer (fictional)
**CMS:** WordPress
**Target keywords:** city bus climate policy, public transit emissions
**Tagging taxonomy:** Climate, Transport, Urban Policy, Infrastructure, Opinion, Data, Interviews

### Output

**SEO Title:** City Buses Are the Best Climate Policy Most Cities Ignore (56 characters)
**Meta Description:** Municipal bus networks cut more emissions per dollar than EVs or bike lanes. Three transport researchers explain why cities keep overlooking their most effective climate tool. (155 characters)
**URL Slug:** city-bus-climate-policy
**Category:** Urban Policy
**Tags:** Climate, Transport, Urban Policy, Infrastructure, Data, Interviews
**OG Title:** Your City's Buses Are Its Best Climate Weapon (46 characters)
**OG Description:** Forget electric cars. The most cost-effective climate policy your city already has is running on diesel and losing funding. (122 characters)

---

**Notes**
- SEO title reframed from the original headline for search clarity — the original headline's conversational "secretly" and "your" work well as a headline but are less effective for search intent matching.
- OG description deliberately uses a provocative framing ("running on diesel and losing funding") to drive social clicks — this would be too editorialized for the meta description but is appropriate for social sharing.
- "Opinion" tag omitted — the article is reported (cites data and interviews), not opinion. Including it could misrepresent the piece to readers filtering by tag.

## Known Limitations
- Claude cannot access real-time keyword data, search volume, or competition metrics. The target keywords provided by the user are taken at face value. For data-driven keyword optimization, use a dedicated SEO tool (Ahrefs, SEMrush, Google Search Console) alongside this skill.
- Character counts are calculated as plain text. Some CMS platforms count characters differently (with or without spaces, including HTML entities). Verify the final character count in your specific CMS after pasting.
- This skill writes metadata for individual articles. For site-wide metadata strategy (category structures, tag taxonomies, internal linking), consult an SEO specialist or use a dedicated content strategy tool.

## Related Skills
- [web-section-splitter](./web-section-splitter.md) — split a long article into web-optimized sections before publishing
- [description-seo-writer](../../youtube/post-production/description-seo-writer.md) — write SEO-optimized descriptions for video content
- [seo-title-optimizer](../../youtube/pre-production/seo-title-optimizer.md) — optimize titles specifically for YouTube search
- [teaser-block-writer](../reference/teaser-block-writer.md) — write teaser blocks for related-article modules

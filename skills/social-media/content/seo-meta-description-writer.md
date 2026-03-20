---
name: seo-meta-description-writer
status: stable
category: social-media
subcategory: content
version: 1.0
eval_score: 4.39
tags: [social-media, SEO, meta-descriptions, web, search, SERP, click-through]
---

# SEO Meta Description Writer

## What This Skill Does
Writes two SEO-optimized meta descriptions for an article, landing page, or content piece — one maximized for keyword relevance, one maximized for click-through appeal — both within the 155-character display limit.

## When To Use This Skill
- You are publishing a web article and the CMS meta description field is blank or auto-filled with the first sentence
- You want to improve an existing page's click-through rate from search results without changing the content
- You need meta descriptions in bulk for a content migration, site redesign, or archive optimization project
- You are writing a landing page and want the search snippet to do real selling work

## What You Need To Provide
**Required:** The page title or headline; a summary of the content (2-4 sentences or bullet points describing what the page covers); the primary keyword or search query this page should rank for.

**Optional:** Secondary keywords (1-3 additional terms); the target audience in one phrase; the publication or brand voice (formal, conversational, authoritative); whether the page is evergreen or time-sensitive; the current meta description if one exists and you want it improved.

## How Claude Approaches This

1. **Identifies the search intent.** Determines whether the primary keyword signals informational intent (the searcher wants to learn), transactional intent (the searcher wants to do something), or navigational intent (the searcher wants to find a specific page). The meta description is written to match that intent — not to summarize the article, but to answer the searcher's implicit question: "Is this the result I need?"

2. **Writes two variants with different optimization strategies:**
   - **Keyword-Forward** — places the primary keyword within the first 60 characters and includes a secondary keyword if space allows. Prioritizes relevance signals for search engines. Reads naturally despite keyword placement.
   - **Click-Through-Forward** — leads with the most compelling benefit, outcome, or tension from the content. Prioritizes the human decision to click. Includes the primary keyword but does not force its position.

3. **Enforces the 155-character limit.** Google typically displays 150-160 characters before truncating. Both variants stay at or under 155 characters to avoid ellipsis in standard desktop SERPs. Character count is provided for each variant.

4. **Avoids meta description anti-patterns.** No variant begins with "This article..." or "Learn about..." No variant duplicates the title verbatim. No variant stuffs keywords unnaturally. No variant uses calls to action that Google may interpret as ads ("Buy now," "Click here").

## Output Format

Two labeled meta description variants, each on a single line with a character count in brackets. After the variants, one line explaining which to use and why. Total output: under 100 words.

```
**Variant A — Keyword-Forward** [XX chars]
[Meta description text]

**Variant B — Click-Through-Forward** [XX chars]
[Meta description text]

---
*Recommendation: [One sentence on which variant to deploy and why, based on the page's competitive context.]*
```

## Quality Criteria
- [ ] Both variants are 155 characters or fewer — no truncation in standard SERP display
- [ ] The primary keyword appears naturally in both variants
- [ ] Neither variant begins with "This article," "Learn about," or "In this post"
- [ ] The keyword-forward variant places the primary keyword within the first 60 characters
- [ ] The click-through variant leads with a benefit, outcome, or tension — not a keyword
- [ ] Neither variant duplicates the page title verbatim
- [ ] The recommendation is specific to the input, not generic SEO advice

## Example

### Input
**Page title:** Why Most Small Businesses Fail at Email Marketing — and the Three Fixes That Actually Work

**Content summary:** An analysis of common email marketing mistakes made by small businesses (under 50 employees), based on aggregated campaign data. Covers three specific, actionable fixes: list hygiene, subject line testing, and send-time optimization. Aimed at small business owners, not marketing professionals.

**Primary keyword:** small business email marketing

**Secondary keywords:** email marketing mistakes, email open rates

**Audience:** Small business owners with no dedicated marketing team

### Output

**Variant A — Keyword-Forward** [152 chars]
Small business email marketing fails for three common reasons. Here are the specific fixes that improve open rates — no marketing team required.

**Variant B — Click-Through-Forward** [148 chars]
Most small businesses make the same three email mistakes. The fixes take less than an hour and the data shows they work. Here is what to change.

---
*Recommendation: Use Variant B if the page already ranks on page one and needs higher click-through. Use Variant A if the page is competing for ranking and needs stronger keyword signals in the snippet.*

## Known Limitations
- Google does not always display the meta description you write. If Google determines that a different passage from the page better matches the search query, it will generate its own snippet. This skill optimizes for the cases where Google does use the provided description — roughly 60-70% of the time for well-written descriptions.
- This skill writes for standard desktop and mobile SERP display. Featured snippets, knowledge panels, and rich results have different display rules and character limits that this skill does not address.
- Keyword placement and phrasing follow general SEO best practices, not real-time competitive analysis. For high-competition keywords, pair this skill's output with actual SERP analysis using your SEO toolset.

## Related Skills
- [tag-keyword-generator](../strategy/tag-keyword-generator.md) — generate the keyword targets before writing meta descriptions
- [push-notification-writer](push-notification-writer.md) — write notifications to promote the same content on mobile
- [caption-writer](caption-writer.md) — write social captions for the same article

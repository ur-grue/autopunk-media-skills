---
name: tag-keyword-generator
status: stable
category: social-media
subcategory: strategy
version: 1.0
eval_score: 4.44
tags: [social-media, tags, keywords, SEO, discoverability, YouTube, podcast, CMS]
---

# Tag & Keyword Generator

## What This Skill Does
Generates a structured set of tags and keywords for an article, video, or podcast episode — organized by priority tier and optimized for the target platform's discovery algorithm.

## When To Use This Skill
- You are publishing a YouTube video, podcast episode, or blog post and need tags that improve discoverability
- You want to move beyond guessing at keywords and generate a systematic tag set based on the content's actual subject matter
- You are optimizing older content for search and need fresh keyword suggestions based on current terminology
- You need platform-specific tags (YouTube, Spotify, WordPress, Substack) and want them formatted correctly for each

## What You Need To Provide
**Required:** The content title; a summary of what the content covers (3-5 sentences or bullet points); the target platform (YouTube, podcast directories, WordPress/CMS, Substack, Medium, or general web SEO).

**Optional:** The primary audience in one phrase; 2-3 keywords you already know work for your content; competitors or similar creators whose audience you want to reach; whether the content is evergreen or tied to a current event.

## How Claude Approaches This

1. **Maps the content's topic hierarchy.** Identifies the broad category, the specific niche, and the angle or hook that distinguishes this content from others on the same subject. This three-level map ensures tags cover broad discoverability (reaching new audiences), niche relevance (reaching the right audience), and specificity (matching exact search queries).

2. **Generates keywords in three priority tiers:**
   - **Tier 1 — Core keywords (3-5):** The primary search terms someone would type to find this exact content. High relevance, moderate to high search volume. These go in titles, descriptions, and primary tag fields.
   - **Tier 2 — Niche keywords (5-8):** More specific phrases that capture the content's particular angle, methodology, or subtopic. Lower search volume but higher intent — the people searching these terms are more likely to engage deeply.
   - **Tier 3 — Long-tail and adjacent keywords (5-8):** Phrases that capture related questions, alternative framings, or adjacent topics that the content also addresses. These expand reach to audiences who might not search for the core topic directly.

3. **Adapts to platform conventions.** YouTube tags are short phrases (2-4 words) and single words, prioritizing exact-match search terms. Podcast tags align with Apple Podcasts and Spotify category structures. CMS/blog tags balance SEO keyword phrases with the internal taxonomy of the site. Each tag set is formatted for direct copy-paste into the platform's tag field.

4. **Flags one gap.** After delivering the tag set, identifies one keyword opportunity the creator might be missing — a related topic, trending adjacent term, or audience question that the content touches on but that is not reflected in the title or summary.

## Output Format

Three tiered keyword lists with a total of 15-20 tags. Each tier is labeled with its purpose. Tags are formatted as the platform expects (comma-separated for YouTube, individual terms for CMS). After the lists, one line identifying a keyword gap or opportunity. Total output: under 200 words.

```
**Tier 1 — Core Keywords**
[tag], [tag], [tag], [tag]

**Tier 2 — Niche Keywords**
[tag], [tag], [tag], [tag], [tag], [tag]

**Tier 3 — Long-Tail & Adjacent**
[tag], [tag], [tag], [tag], [tag], [tag]

---
*Keyword gap: [One sentence identifying a missed keyword opportunity.]*
```

## Quality Criteria
- [ ] Tier 1 keywords match what a real person would actually type into a search bar for this topic
- [ ] No keyword is repeated across tiers
- [ ] Tags are formatted correctly for the stated platform — not generic terms applied universally
- [ ] The total count falls within 15-20 tags — enough for coverage, not so many that relevance is diluted
- [ ] Long-tail keywords in Tier 3 reflect genuine adjacent search queries, not padding
- [ ] The keyword gap insight is specific and actionable, not a vague suggestion to "explore related topics"
- [ ] No tags reference trademarked tools, specific competitors, or brand names unless the content is explicitly about them

## Example

### Input
**Title:** How to Light an Interview on a Zero Budget

**Summary:** A YouTube tutorial showing three interview lighting setups using only household items — a desk lamp, a window, and a white bedsheet as a diffuser. Aimed at beginner filmmakers and content creators. Demonstrates each setup with side-by-side comparisons.

**Platform:** YouTube

**Audience:** Beginner YouTubers and student filmmakers

### Output

**Tier 1 — Core Keywords**
interview lighting, how to light an interview, budget lighting setup, DIY interview lighting

**Tier 2 — Niche Keywords**
interview lighting no budget, desk lamp interview light, window light interview, household lighting filmmaking, beginner cinematography lighting, cheap lighting setup YouTube

**Tier 3 — Long-Tail & Adjacent**
how to make interviews look professional, DIY diffuser for video, one light interview setup, lighting for talking head videos, YouTube video lighting for beginners, natural light interview tips

---
*Keyword gap: Consider adding "lighting for online courses" or "Zoom lighting setup" — the household techniques shown in this video directly apply to remote educators, a large adjacent audience that searches different terms for the same problem.*

## Known Limitations
- This skill generates keywords based on topic analysis and platform conventions, not real-time search volume data. For competitive niches, validate Tier 1 keywords against actual search data using a tool like TubeBuddy, Ahrefs, or Google Keyword Planner.
- Platform algorithms change frequently. Tag best practices that work today (especially on YouTube and Spotify) may shift as discovery algorithms are updated. This skill reflects current conventions but cannot predict algorithm changes.
- For non-English content, keyword effectiveness depends heavily on regional search behavior. This skill generates English-language keywords; localized keyword research requires language-specific tools.

## Related Skills
- [seo-meta-description-writer](../content/seo-meta-description-writer.md) — write the meta description using the core keywords from this skill
- [hashtag-strategy-writer](hashtag-strategy-writer.md) — generate social media hashtag sets for promoting the same content
- [ab-social-post-tester](ab-social-post-tester.md) — test different keyword-driven hooks in social promotion

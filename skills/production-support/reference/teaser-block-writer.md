---
name: teaser-block-writer
status: stable
category: production-support
subcategory: reference
version: 1.0
eval_score: 4.33
tags: [production-support, teasers, web, layout, navigation, newsletters]
---

# Teaser Block Writer

## What This Skill Does
Writes "read next," "related articles," or "previously on" teaser blocks for web pages, newsletters, or app interfaces — short, click-worthy summaries that drive readers from one piece of content to another.

## When To Use This Skill
- You are building a web article page and need 3–5 related-article teasers for the sidebar or footer
- You are assembling a newsletter and need short teaser summaries for each linked article
- You are creating a "previously on this series" block to help readers catch up before a new installment
- You need to write promotional teaser cards for a homepage, category page, or content hub

## What You Need To Provide
**Required:** The articles or content pieces to tease (provide headlines and a brief description of each, or the full text if available); the context where the teasers will appear (sidebar, newsletter, homepage, end-of-article block); the number of teasers needed.

**Optional:** The article the reader is currently viewing (so teasers can be editorially relevant, not random); maximum character or word count per teaser; whether each teaser should include a category label, publication date, or reading time; the publication's teaser style (headline-only, headline-plus-one-sentence, headline-plus-two-sentences); tone (news-formal, conversational, provocative).

## How Claude Approaches This
1. **Identifies the hook in each article.** Reads the provided material and finds the single most compelling element — the fact, question, or revelation that would make a reader click. This becomes the core of the teaser, not a generic summary.

2. **Writes each teaser as a self-contained unit.** Every teaser must work on its own — a reader encountering it in a sidebar or newsletter should understand what the article offers without needing additional context. The teaser answers: "What will I learn or experience if I click this?"

3. **Differentiates teasers from each other.** When writing a block of 3–5 teasers, ensures each one uses a different hook structure (question, statistic, bold claim, scene-setting detail) so the block does not feel repetitive. Variety in opening structure increases the chance that at least one teaser resonates with any given reader.

4. **Matches the teaser style to the placement context.** Sidebar teasers are tighter and more utilitarian. Newsletter teasers can be warmer and more conversational. Homepage teasers lean toward urgency and newsworthiness. End-of-article "read next" teasers connect thematically to what the reader just finished.

5. **Formats for the specified layout.** Each teaser includes the elements requested: headline (or reformulated teaser headline), summary sentence(s), and optional metadata (category, date, reading time). Output is structured so a web editor or newsletter builder can drop teasers directly into the layout.

## Output Format
Numbered teaser blocks, each containing: a teaser headline (may differ from the original article headline to optimize for click-through in this context), 1–2 summary sentences, and optional metadata fields. Each teaser is separated by a horizontal rule. After all teasers, a brief "Notes" section explaining any headline reformulations or editorial choices. Total word count per teaser: 20–60 words depending on the specified format. Tone: matched to the placement context.

```
**1. [Teaser Headline]**
[Category] · [Date] · [Reading time]
[1-2 sentence summary]

---

**2. [Teaser Headline]**
...
```

## Quality Criteria
- [ ] Each teaser conveys a specific reason to click — not a vague summary
- [ ] Teasers are self-contained — comprehensible without reading the source article
- [ ] Hook structures vary across the block — no two teasers open the same way
- [ ] Teaser headlines are optimized for the placement context, not just copied from the original
- [ ] Word count fits the specified format (20–60 words per teaser)
- [ ] Teasers are editorially relevant to the context where they appear (related to the current article or newsletter theme)
- [ ] Metadata fields (category, date, reading time) are included when requested

## Example

### Input
**Context:** End-of-article "Read Next" block on a web article about community solar programs
**Number of teasers:** 3
**Format:** Teaser headline + one sentence + category and reading time
**Tone:** News-conversational

**Articles to tease:**

1. **"How Rooftop Solar Went Mainstream — and Why Your Landlord Still Won't Install It"** — A feature about the gap between rooftop solar adoption rates among homeowners and the near-zero adoption among rental properties. Explores policy barriers and tenant advocacy efforts.

2. **"The 10-Year Bet: Can Battery Storage Make Small Towns Energy Independent?"** — An in-depth report following three rural communities that invested in grid-scale battery storage, with early performance data and lessons learned.

3. **"Green Energy Jobs Were Supposed to Save This Region. Here's What Actually Happened."** — An investigative piece examining whether promised clean energy employment materialized in a former coal-producing region, using payroll data and worker interviews.

### Output

**1. Why Renters Are Locked Out of the Solar Revolution**
Energy · 8 min read
Rooftop solar adoption has surged among homeowners, but renters — who make up a third of all households — are almost entirely excluded. The barriers are not technical.

---

**2. Three Towns Bet Their Grid on Batteries. The Early Results Are In.**
Energy · 12 min read
Rural communities invested millions in grid-scale battery storage to achieve energy independence. After three years of operation, the performance data tells a more complicated story than the headlines promised.

---

**3. The Clean Energy Jobs That Never Arrived**
Investigation · 10 min read
A former coal region was promised thousands of green energy jobs. Payroll records and worker interviews reveal how many of those positions actually materialized — and who got them.

---

**Notes**
- Teaser headlines reformulated from the original article headlines to be shorter and punchier for an end-of-article block. Original headlines are effective as standalone pieces but are too long for a teaser layout where three appear together.
- Each teaser uses a different hook: #1 leads with an exclusion ("locked out"), #2 leads with a data reveal ("early results are in"), #3 leads with an unfulfilled promise ("jobs that never arrived"). This variety reduces the chance of all three teasers blending together visually and editorially.
- Reading times are estimated from the article descriptions. Confirm against actual word counts before publishing.

## Known Limitations
- Teaser quality depends heavily on the source material provided. If the user supplies only a vague headline and no description, the teaser will necessarily be generic. Providing a two-sentence summary of each article's angle produces significantly better teasers.
- Claude optimizes teasers for editorial click-through but cannot predict actual performance. Headline A/B testing and analytics should inform teaser strategy over time.
- This skill writes text teasers only. It does not generate thumbnail images, select featured images, or produce visual teaser cards. For visual elements, pair with an image prompting skill or provide image selections separately.

## Related Skills
- [cms-metadata-writer](../formatting/cms-metadata-writer.md) — write the metadata for the articles these teasers link to
- [web-section-splitter](../formatting/web-section-splitter.md) — structure the host article that contains the teaser block
- [newsletter-teaser-writer](../../magazine-journalism/distribution/newsletter-teaser-writer.md) — write teasers specifically formatted for email newsletters
- [fact-sheet-compiler](./fact-sheet-compiler.md) — compile background reference material for a content series

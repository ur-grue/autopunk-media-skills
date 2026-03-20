---
name: alt-text-writer
status: stable
category: magazine-journalism
subcategory: writing
version: 1.0
eval_score: 4.39
tags: [journalism, writing, alt-text, accessibility, images, web, WCAG]
---

# Alt Text Writer

## What This Skill Does
Writes descriptive alt text for editorial images following WCAG accessibility guidelines — concise enough for screen readers, specific enough to convey the image's editorial purpose.

## When To Use This Skill
- You're publishing articles online and need alt text for every editorial image before the page goes live
- Your CMS requires alt text fields and the current entries are empty or generic ("photo.jpg")
- You're auditing a publication's web content for accessibility compliance and need to rewrite inadequate alt text at scale
- You need alt text that serves both accessibility and SEO without compromising either

## What You Need To Provide
**Required:**
- Description of the image: what is shown (people, objects, setting, action)
- The editorial context: what article or story this image accompanies and what role the image plays (lead image, supporting illustration, data visualization, portrait)

**Optional:**
- Names and titles of people in the image (if identified)
- Whether the image contains text that needs to be included in the alt text
- Any specific accessibility guidelines the publication follows beyond WCAG 2.1
- Whether the image is purely decorative (in which case alt text should be empty per WCAG)

## How Claude Approaches This

1. **Determines the image's editorial function.** The same photograph requires different alt text depending on its role. A portrait of an interview subject needs identification and context. A lead image for a feature needs to convey the scene's mood and content. A chart needs its data summarized. Claude reads the editorial context first, then writes alt text that serves the image's purpose in the article.

2. **Writes for screen reader users, not search engines.** Alt text is read aloud by assistive technology. Claude writes in natural, spoken-language phrasing — not keyword-stuffed SEO text. The description is specific enough that a person who cannot see the image understands what it shows and why it matters to the article.

3. **Keeps it concise but complete.** WCAG guidelines recommend alt text between 10 and 125 characters for most images. Claude aims for one to two sentences that cover the essential visual information without overloading. If the image is complex (infographic, data visualization, detailed scene), Claude writes a short alt attribute and recommends a longer description in the article body or a `longdesc` element.

4. **Follows accessibility conventions.** Does not begin with "Image of" or "Photo of" — screen readers already announce the element as an image. Does not duplicate the caption. Does include text visible in the image if that text is editorially significant. Marks purely decorative images with empty alt attributes.

## Output Format

For each image: one alt text entry of 10–125 characters (one to two sentences). If the image is complex and requires a longer description, the alt text is followed by a bracketed note: "[Recommend long description in article body]." Format:

```
**Alt text:** [Concise description serving the image's editorial purpose.]
```

For decorative images:
```
**Alt text:** "" (decorative — no alt text needed)
```

## Quality Criteria
- [ ] Alt text conveys what the image shows and why it matters to the article — not just a literal inventory of objects
- [ ] Length is between 10 and 125 characters for standard images
- [ ] Does not begin with "Image of," "Photo of," or "Picture of"
- [ ] Does not duplicate the photo caption — provides complementary information
- [ ] Includes text visible in the image if that text is editorially significant
- [ ] Uses natural spoken-language phrasing suitable for screen reader output
- [ ] Complex images (charts, infographics) include a recommendation for extended description

## Example

### Input
**Image 1:** A wide shot of a flooded residential street. Water reaches halfway up the front doors of single-story houses. A person in waders carries a cardboard box through knee-deep water toward a pickup truck. The sky is overcast. This is the lead image for an article about the economic impact of repeated flooding on uninsured homeowners.

**Image 2:** A bar chart showing insurance claim denial rates by income bracket. The x-axis shows five income brackets from "Under $30K" to "Over $150K." The y-axis shows denial rates from 0% to 50%. The lowest income bracket has a denial rate of 42%; the highest has 8%. This is a supporting data visualization in the same article.

**Image 3:** The publication's decorative header graphic — an abstract wave pattern in blue tones used as a section divider.

### Output

**Image 1:**
**Alt text:** A resident carries belongings through knee-deep floodwater on a residential street, with water reaching the front doors of single-story homes under an overcast sky.

**Image 2:**
**Alt text:** Bar chart showing flood insurance claim denial rates by income: 42% for households earning under $30,000, declining to 8% for those earning over $150,000. [Recommend long description in article body with full data for all five income brackets.]

**Image 3:**
**Alt text:** "" (decorative — no alt text needed)

## Known Limitations
- Claude cannot see or analyze actual images. The skill works from your text description — if details are omitted or inaccurate in the description, the alt text will reflect those gaps. Always verify against the actual image.
- Alt text that works well for accessibility may not be optimal for SEO, and vice versa. This skill prioritizes accessibility. If SEO metadata is needed separately, write it in the image's title attribute or structured data, not the alt attribute.
- For images containing significant amounts of text (infographics, screenshots of documents), the alt text will be necessarily incomplete. Follow the recommendation to provide a full transcription in the article body or a linked long description.

## Related Skills
- [photo-caption-writer](photo-caption-writer.md) — write the visible caption that accompanies the image (alt text and captions serve different purposes and should not duplicate each other)
- [copy-editor-assistant](../editing/copy-editor-assistant.md) — review alt text for consistency and style across a full article
- [sidebar-fact-box-writer](sidebar-fact-box-writer.md) — create extended descriptions for complex data visualizations

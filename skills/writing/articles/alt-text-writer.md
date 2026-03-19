---
name: alt-text-writer
status: beta
category: writing
subcategory: articles
version: 1.0
eval_score: null
tags: [accessibility, alt-text, images, digital, web, journalism, captions]
---

# Alt Text Writer

## What This Skill Does
Writes accurate, concise alt text for editorial images — photographs, graphics, and illustrations — so that visually impaired readers using screen readers receive the same informational value as sighted readers.

## When To Use This Skill
- You are publishing an article online and need alt text for every image before upload
- Your CMS requires an alt text field and you are not sure what to write
- You have a batch of images — photos, charts, maps, or infographics — that all need describing before a deadline
- Your publication is updating its accessibility standards and needs existing images retroactively described
- You are writing for a wire service or syndication platform that requires WCAG-compliant image descriptions

## What You Need To Provide
**Required:** A description of the image, or the image itself — what is shown, who or what is the main subject, and what action or scene is depicted; the context in which the image appears (the article headline or topic it accompanies)
**Optional:** The intended emotional or editorial tone of the image; any text visible in the image (signs, captions, banners); whether the image is decorative only (in which case a blank alt attribute is the correct standard); the publication's preferred character limit for alt text

## How Claude Approaches This
1. Identifies the primary subject and action in the image — the element a sighted reader's eye would go to first — and leads with that, not the background or setting
2. Determines what information the image adds to the article that is not already in the surrounding text; alt text describes the image's unique informational contribution, not what the article already says
3. Writes in plain declarative sentences — no "image of," "photo of," or "picture showing," as screen readers announce the element type automatically
4. Keeps alt text to 125 characters or fewer for standard editorial images; flags if a more complex image (infographic, map, data chart) needs a longer description or a linked long-description
5. For images containing text (protest signs, banners, pull quotes rendered as images), includes that text verbatim in the alt text
6. After delivering the alt text, flags any images that appear decorative (should use alt="") and any images complex enough to require a separate long-description block

## Output Format
One line of alt text per image, under 125 characters unless the image is a complex graphic requiring more. No quotation marks around the output. No "Image of" prefix. Plain declarative statement, present tense. If you provide multiple images, output is a numbered list with one alt text per item. Ends with a brief note on any images flagged as decorative or requiring extended description.

## Quality Criteria
- [ ] No "image of," "photo of," or "picture showing" — screen readers announce element type
- [ ] Main subject is named and placed first
- [ ] Any text visible in the image is reproduced verbatim in the alt text
- [ ] Under 125 characters for standard images; longer descriptions are flagged and handled separately
- [ ] Alt text adds information the surrounding article body does not already contain
- [ ] Decorative images are identified and flagged for empty alt attribute (alt="")
- [ ] Output is usable without any editing for standard editorial images

## Example

### Input
Article topic: A report on the expansion of urban cycling infrastructure in mid-sized European cities

Image 1: A cyclist in a yellow raincoat riding along a newly painted protected bike lane on a city street. Parked cars are visible on the left, a row of shops on the right. Morning light. No people on the pavement.

Image 2: A bar chart graphic showing cycling trip share by city — five cities, percentages ranging from 12% to 38%. The title text on the graphic reads "Cycling as share of all daily trips, 2023."

Image 3: A decorative banner image — a blurred photo of bicycle wheels, used purely as a section break with no editorial content.

### Output

1. Cyclist in yellow raincoat riding a protected bike lane flanked by parked cars and shopfronts in early morning light.

2. Bar chart titled "Cycling as share of all daily trips, 2023" showing five cities with cycling modal share ranging from 12% to 38%.

3. [Decorative — use alt="" in your CMS. This image contains no editorial information and should be invisible to screen readers.]

---

**Note on Image 2:** The chart contains data that screen readers cannot extract from the alt text alone. Consider adding a linked long-description or a data table beneath the graphic so the full figures are accessible.

## Known Limitations
- Alt text for portraits of named individuals requires the journalist to provide the name — Claude will describe the subject generically if no name is given, which may be insufficient for editorial attribution
- For highly complex graphics (multi-layer maps, detailed infographics with many data series), a single alt text line cannot replace a full long-description; Claude will flag these cases but cannot write ARIA long-descriptions without seeing the full graphic content
- Character limits vary by CMS and screen reader software; the 125-character default is a widely accepted guideline, not a universal standard — confirm your platform's requirements
- Alt text for images containing faces with emotional significance (grief, celebration) is subjective; Claude describes visible expression but cannot assess editorial intent

## Related Skills
- [chart-annotation-writer](chart-annotation-writer.md)
- [caption-writer](caption-writer.md)

---
name: web-section-splitter
status: stable
category: production-support
subcategory: formatting
version: 1.0
eval_score: 4.44
tags: [production-support, web, formatting, sections, layout, readability]
---

# Web Section Splitter

## What This Skill Does
Breaks a long-form article into web-optimized sections with subheadings, pull-quote suggestions, image placement markers, and reading-time estimates — ready for a web editor to drop into a CMS.

## When To Use This Skill
- You have a 1,500+ word article that needs to be structured for online reading before it goes into the CMS
- A print article is being adapted for web and needs subheadings, pull quotes, and visual breakpoints that the print version did not require
- You want to improve the readability and scroll-depth performance of an existing long-form web article
- A web editor needs a structured layout plan before building the page, including where to place images, sidebars, and embedded elements

## What You Need To Provide
**Required:** The full article text; the target platform or CMS (WordPress, Ghost, Webflow, custom — affects section formatting recommendations).

**Optional:** Desired number of sections (or let Claude determine based on content); whether to suggest pull quotes (default: yes); whether to suggest image placement with brief descriptions of what the image should show; maximum section length in words (default: 300–500 words per section); the publication's web style guide (subheading style, pull-quote format, sidebar conventions); any multimedia elements already planned (video embeds, interactive graphics, data tables) that need placement.

## How Claude Approaches This
1. **Reads the full article and maps its argument structure.** Identifies the natural topic shifts, turning points, and thematic clusters that define where sections should break. Sections are split at genuine content boundaries — not arbitrarily every 400 words.

2. **Writes subheadings that serve as a scannable table of contents.** Each subheading tells the reader what that section delivers — specific enough that a skimmer can decide whether to read the section or scroll past. Avoids vague subheadings ("Background," "Analysis") in favor of content-specific ones ("Three Cities That Cut Bus Fares and Saw Ridership Double").

3. **Suggests pull quotes that reward scrollers.** Identifies 2–4 sentences from the article that are visually striking, self-contained, and intriguing enough to stop a scrolling reader. Marks their location in the section plan. Pull quotes are drawn from the text exactly — not rewritten.

4. **Places image and multimedia markers.** Suggests where images, charts, videos, or embedded elements should appear based on the content flow. Each marker includes a brief description of what the visual should depict and why it belongs at that point in the article (e.g., "Image: Aerial view of the completed waterfront. Placed here because the text shifts from describing the planning process to the finished result.").

5. **Estimates reading time and section flow.** Provides a total reading time for the article and per-section word counts. Notes where pacing is uneven (e.g., a 700-word section followed by a 200-word section) and suggests adjustments.

## Output Format
A structured section plan showing the article divided into numbered sections. Each section includes: a subheading, the section text (or first/last line references if the user prefers a plan rather than the full text), word count, and any pull-quote or image markers. After the section plan, a summary table showing: total word count, number of sections, estimated reading time, and a list of all pull quotes and image suggestions. Tone: functional and editorial — written for a web editor building a page.

```
## Section 1: [Subheading]
Word count: XXX | Reading time: X min
[Section text or reference]
📌 Pull quote: "[exact quote from text]"
🖼 Image suggestion: [brief description and placement rationale]

---

## Section 2: [Subheading]
...
```

## Quality Criteria
- [ ] Sections break at genuine content boundaries, not arbitrary word counts
- [ ] Subheadings are specific and scannable — a reader can grasp the article's arc from subheadings alone
- [ ] Pull quotes are drawn verbatim from the text and are self-contained (make sense without context)
- [ ] Image suggestions are editorially relevant, not decorative filler
- [ ] No section exceeds the specified maximum word count (default 500 words)
- [ ] The section plan preserves the article's narrative flow — reading all subheadings in order tells a coherent story
- [ ] Summary table provides accurate word counts and reading time estimates

## Example

### Input
**Article (excerpt — 820 words):**

**Headline:** The Librarians Fighting Digital Misinformation

Public libraries were once the quietest buildings in any town. Today, a growing number of them are on the front lines of an information war they never expected to fight.

In communities across the country, librarians are running workshops on how to identify fake news, verify sources, and think critically about information shared on social media. The programs, often developed on shoestring budgets with no formal training support, have become some of the most popular offerings in library calendars.

"Three years ago, our most popular workshop was 'Introduction to Excel,'" says Dana Okoro, head librarian at Westfield Public Library. "Now it's 'How to Spot a Fake Article.' We had to add a second session because the first one filled up in two days."

The shift reflects a broader recognition that digital literacy is no longer an optional life skill. A 2025 survey by the National Library Association found that 68% of public libraries now offer at least one program focused on media literacy or misinformation awareness — up from 22% in 2020.

But the work comes with challenges. Librarians report that teaching critical thinking about online information can be politically fraught. Some patrons accuse them of bias. Others demand to know why the library is "telling people what to think."

"We don't tell anyone what to believe," says Okoro. "We teach them how to check. There's a difference, and most people understand that once they're in the room."

The workshops typically cover three core skills: verifying the original source of a claim, checking whether an image has been manipulated or taken out of context, and distinguishing between news reporting and opinion commentary. Some libraries have added modules on AI-generated content after a surge of deepfake videos in local political campaigns.

Funding remains the biggest obstacle. Most library media literacy programs operate with no dedicated budget. Materials are developed by individual librarians using free online resources, and workshop leaders are rarely compensated for the additional preparation time.

Despite this, demand continues to grow. Westfield Public Library now runs its media literacy workshop monthly and has a waiting list for every session. Okoro has started training volunteers from the community to lead sessions, aiming to double capacity by the end of the year.

"The irony is that people come to us because they trust us," she says. "Libraries are one of the last institutions that people across the political spectrum still trust. We have to be careful with that."

**Target platform:** WordPress
**Image suggestions:** Yes
**Pull quotes:** Yes

### Output

## Section 1: Libraries Are the Unexpected Front Line of the Information War
**Word count:** 190 | **Reading time:** 1 min

Public libraries were once the quietest buildings in any town. Today, a growing number of them are on the front lines of an information war they never expected to fight.

In communities across the country, librarians are running workshops on how to identify fake news, verify sources, and think critically about information shared on social media. The programs, often developed on shoestring budgets with no formal training support, have become some of the most popular offerings in library calendars.

"Three years ago, our most popular workshop was 'Introduction to Excel,'" says Dana Okoro, head librarian at Westfield Public Library. "Now it's 'How to Spot a Fake Article.' We had to add a second session because the first one filled up in two days."

📌 **Pull quote:** "Three years ago, our most popular workshop was 'Introduction to Excel.' Now it's 'How to Spot a Fake Article.'"

🖼 **Image suggestion:** A librarian leading a small-group workshop in a modern public library, participants looking at laptop screens. Placed at section opening to establish the setting and human scale of the story.

---

## Section 2: From 22% to 68% — How Media Literacy Became a Library Staple
**Word count:** 230 | **Reading time:** 1 min

The shift reflects a broader recognition that digital literacy is no longer an optional life skill. A 2025 survey by the National Library Association found that 68% of public libraries now offer at least one program focused on media literacy or misinformation awareness — up from 22% in 2020.

But the work comes with challenges. Librarians report that teaching critical thinking about online information can be politically fraught. Some patrons accuse them of bias. Others demand to know why the library is "telling people what to think."

"We don't tell anyone what to believe," says Okoro. "We teach them how to check. There's a difference, and most people understand that once they're in the room."

The workshops typically cover three core skills: verifying the original source of a claim, checking whether an image has been manipulated or taken out of context, and distinguishing between news reporting and opinion commentary. Some libraries have added modules on AI-generated content after a surge of deepfake videos in local political campaigns.

📌 **Pull quote:** "We don't tell anyone what to believe. We teach them how to check."

---

## Section 3: No Budget, Growing Demand, and a Waiting List
**Word count:** 200 | **Reading time:** 1 min

Funding remains the biggest obstacle. Most library media literacy programs operate with no dedicated budget. Materials are developed by individual librarians using free online resources, and workshop leaders are rarely compensated for the additional preparation time.

Despite this, demand continues to grow. Westfield Public Library now runs its media literacy workshop monthly and has a waiting list for every session. Okoro has started training volunteers from the community to lead sessions, aiming to double capacity by the end of the year.

"The irony is that people come to us because they trust us," she says. "Libraries are one of the last institutions that people across the political spectrum still trust. We have to be careful with that."

📌 **Pull quote:** "Libraries are one of the last institutions that people across the political spectrum still trust. We have to be careful with that."

🖼 **Image suggestion:** A close-up of printed workshop handouts or a whiteboard with source-checking steps written on it. Placed in the final section to provide a concrete visual of the tools being discussed and to give the page a visual endpoint.

---

**Summary**

| Metric | Value |
|---|---|
| Total word count | 820 |
| Sections | 3 |
| Estimated reading time | 3–4 minutes |
| Pull quotes suggested | 3 |
| Image placements | 2 |

## Known Limitations
- Claude splits sections based on content analysis, not visual page design. The suggested section lengths work well for standard web layouts but may need adjustment for designs with large hero images, embedded videos, or multi-column layouts that affect how much text appears above the fold.
- Pull-quote suggestions are editorial recommendations. The final selection should be reviewed by the editor, as the most quotable line may not always be the one that works best visually in the page layout.
- This skill does not generate HTML, CSS, or CMS-specific shortcodes. The output is a structural plan that a web editor translates into the CMS. For WordPress specifically, sections map naturally to Gutenberg blocks, but the editor must build the page.

## Related Skills
- [cms-metadata-writer](./cms-metadata-writer.md) — write CMS metadata fields after the article is sectioned
- [manuscript-formatter](./manuscript-formatter.md) — format the article for a specific style guide before web adaptation
- [teaser-block-writer](../reference/teaser-block-writer.md) — write teaser blocks for related articles that link from this page
- [headline-generator](../../magazine-journalism/ideation/headline-generator.md) — generate alternative headlines optimized for web

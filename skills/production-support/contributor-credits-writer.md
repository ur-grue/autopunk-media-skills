---
name: contributor-credits-writer
status: beta
category: production-support
subcategory: publishing
version: 1.0
eval_score: null
tags: [credits, contributors, byline, acknowledgements, multi-author]
---

# Contributor Credits Writer

## What This Skill Does
Drafts the contributor credits block for a multi-author piece, giving each person the correct role label, consistent formatting, and publication-appropriate length.

## When To Use This Skill
- A feature, investigation, or long-form piece has three or more contributors and you need to credit them accurately at the top or foot of the article
- A digital or print package involves a reporter, photographer, data journalist, and editor, and the credits must reflect distinct roles clearly
- You are standardising contributor credits across a series or special issue so all pieces use the same format
- Credits drafted by contributors themselves are inconsistent in tone, length, or role terminology and need to be regularised

## What You Need To Provide
**Required:**
- A list of contributors, each with: full name, role on this piece (e.g., reporter, photographer, researcher, data editor, producer), and — if applicable — outlet or location
- The publication format: print, digital article, broadcast package, or documentary

**Optional:**
- Target style: single-line credit, short paragraph, or role-grouped block
- Whether to link to contributor profiles (provide URLs if so)
- Any house style notes (e.g., "use 'photographs by' not 'photography'," "list editors last")
- Publication name, for tone matching

## How Claude Approaches This
1. Reads the contributor list and groups people by role category (reporting, visuals, data, editing, production) to determine the logical presentation order — reporters first, editors last, unless you specify otherwise
2. Assigns consistent, plain-English role labels — avoiding internal job titles that readers won't understand (e.g., "supervising producer" becomes "producer" for public-facing credits unless you request otherwise)
3. Formats the block in the requested style: a single comma-separated line for digital brevity, a role-grouped paragraph for long-form print, or a structured list for documentary packages

## Output Format
One formatted credits block, ready to paste. For three or fewer contributors, defaults to a single line ("Reported by X and Y. Photographs by Z."). For four or more, defaults to a role-grouped short paragraph. If you request a list format, each contributor appears on its own line with role label. No commentary, no variant options unless you ask for them.

## Quality Criteria
- [ ] Every contributor named in the input appears in the output with the correct role
- [ ] Role labels are plain English and consistent across all contributors of the same type
- [ ] The order follows journalistic convention (reporters first, editors last) or the order you specified
- [ ] Format matches the requested style or the appropriate default for the publication type
- [ ] Could be dropped directly into the CMS or layout file without reformatting

## Example

### Input
Contributors:
- Yusuf Adebayo — lead reporter (Lagos bureau)
- Priya Mathur — reporter (Delhi bureau)
- Tomás Reyes — data journalist
- Elin Svensson — photographer
- Kirra Walsh — deputy editor

Publication format: digital long-form article
Style: role-grouped short paragraph

### Output
**Reporting:** Yusuf Adebayo (Lagos) and Priya Mathur (Delhi). **Data:** Tomás Reyes. **Photography:** Elin Svensson. **Editing:** Kirra Walsh.

## Known Limitations
- Claude relies entirely on the role information you provide. If someone's actual contribution was broader than their listed role (e.g., a photographer who also reported on the ground), that will not appear in the credits unless you include it in the input.
- For broadcast packages with complex crew hierarchies (line producer, associate producer, field producer), role labels need your review — Claude will simplify where in doubt, which may not match union or guild requirements.
- Credits for investigative pieces involving confidential sources or protected research contributors are out of scope — those require editorial and legal judgment that Claude cannot supply.

## Related Skills
- [author-bio-writer](author-bio-writer.md)
- [press-kit-generator](../tv-documentary/post-production/press-kit-generator.md)

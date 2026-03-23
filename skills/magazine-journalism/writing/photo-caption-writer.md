---
name: photo-caption-writer
status: stable
category: magazine-journalism
subcategory: writing
version: 1.0
eval_score: 4.36
tags: [journalism, writing, captions, photography, publishing, editorial]
---

# Photo Caption Writer

## What This Skill Does
Writes publication-standard photo captions that identify subjects, provide context, and include a credit line — formatted for print or digital editorial use.

## When To Use This Skill
- You need to caption a set of editorial photographs before page layout or CMS upload
- You're working from a photographer's shot list or contact sheet and need accurate, concise captions for each image
- A photo desk has sent images with minimal metadata and you need full publication-ready captions
- You're preparing a photo essay or gallery and need captions that work as a standalone narrative thread

## What You Need To Provide
**Required:**
- Description of what is shown in the image: who, what, where (be specific — names, locations, actions)
- When the image was taken (date or at minimum the event/occasion)
- Photographer credit (name and/or agency)

**Optional:**
- The article or story the image accompanies (helps calibrate the caption's emphasis)
- Publication style guide for captions (AP, house style, etc.)
- Whether the caption should be a single line (news wire) or an expanded contextual caption (feature/magazine)
- Any additional context not visible in the image that readers need

## How Claude Approaches This

1. **Identifies the essential information.** Every caption must answer three questions: Who or what is in the image? Where and when was it taken? Who took it? Claude builds from these elements and adds nothing that cannot be verified from the provided information.

2. **Writes in present tense for the action.** Standard editorial convention: the action in the image is described in present tense ("A worker inspects the bridge supports"), while background context uses past tense ("The bridge was closed for repairs last month"). This creates immediacy without confusion about timeline.

3. **Adds context proportional to the format.** A wire-style caption is one sentence plus a credit line. A magazine-style caption adds a second sentence of context that tells the reader something they cannot see in the image — the significance of the moment, what happened before or after, or why this scene matters to the story.

4. **Formats the credit line correctly.** Credit follows the publication's standard: typically "(Photographer Name / Agency)" or "Photo: Photographer Name" on a separate line. If no format is specified, defaults to AP style.

## Output Format

For each image: one or two sentences of caption text, followed by a credit line. News wire captions: one sentence, under 30 words, plus credit. Magazine/feature captions: two sentences (first describes the image, second adds context), 30–60 words total, plus credit. Present tense for visible action, past tense for context. No editorializing or interpretation — only what is known.

```
[Caption text. Context sentence if magazine format.]
(Photographer Name / Agency)
```

## Quality Criteria
- [ ] Every caption identifies who or what is in the image, where, and when
- [ ] Visible action is described in present tense; background context uses past tense
- [ ] Caption adds information the reader cannot see in the image (for magazine format)
- [ ] No editorializing — describes, does not interpret or judge
- [ ] Credit line is present and correctly formatted
- [ ] Caption does not state the obvious (no "pictured here" or "shown above")
- [ ] Names are spelled correctly and titles are accurate as provided

## Example

### Input
**Image 1:** A woman in a hard hat and safety vest examines a structural crack in a concrete overpass pillar. The setting is a highway construction zone with orange barriers visible in the background. The woman is Elena Vasquez, a structural engineer with the state's Department of Transportation. Photo taken March 12, 2026, during a routine inspection on the Route 9 overpass. Photographer: James Okoro, staff photographer.

**Image 2:** A crowded public hearing room. Residents are seated in rows of folding chairs facing a raised panel of five city council members. A woman at a standing microphone appears to be speaking. This is from a public hearing on the proposed waterfront redevelopment plan, held at City Hall on February 28, 2026. The speaker is not identified. Photographer: Sarah Linden / Metro Press Agency.

**Format:** Magazine feature captions

**Article context:** A feature about aging highway infrastructure and the political battles over repair funding.

### Output

**Image 1:**
Structural engineer Elena Vasquez inspects a crack in a support pillar on the Route 9 overpass during a state Department of Transportation assessment on March 12. The overpass is one of 34 structures in the region flagged for priority review after a federal report downgraded their condition ratings last year.
(James Okoro / Staff)

**Image 2:**
A resident addresses the city council during a public hearing on the proposed waterfront redevelopment plan at City Hall on February 28. The hearing drew a standing-room crowd, with speakers divided over whether infrastructure repair or new development should take priority in the next budget cycle.
(Sarah Linden / Metro Press Agency)

## Known Limitations
- Claude cannot see or analyze actual images. The skill works entirely from the text description you provide — if the description is inaccurate or incomplete, the caption will be too. Always verify captions against the actual image before publication.
- The skill does not identify people in photos. You must provide all names, titles, and identifications. Mis-captioning a person in an editorial photograph is a serious editorial error that only human verification can prevent.
- For large batches of images (10+), captions may become formulaic. Review for variety in sentence structure and ensure each caption adds distinct contextual value.

## Related Skills
- [alt-text-writer](alt-text-writer.md) — write accessibility alt text for the same images
- [copy-editor-assistant](../editing/copy-editor-assistant.md) — check captions for style consistency before publication
- [sidebar-fact-box-writer](sidebar-fact-box-writer.md) — create a companion information box for photo essays

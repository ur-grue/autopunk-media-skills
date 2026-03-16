---
name: social-media-visual-batch
status: stable
category: image-prompting
subcategory: workflows
version: 1.0
eval_score: 4.4
tags: [image-prompting, workflows, social-media, batch, campaign, content-calendar]
---

# Social Media Visual Batch

## What This Skill Does
Produces a coordinated batch of image prompts for a social media campaign — a set of 5 to 10 visually consistent images that work together as a series while each standing alone, suitable for a planned content push, a show launch, or a recurring visual format.

## When To Use This Skill
- You are launching a new show, series, or publication and need a set of social media images that introduce the project visually
- You are planning a week or month of content and want a batch of images that look like they belong together without being identical
- You have established a visual identity and need to extend it into a series of social media posts that maintain consistency
- You are promoting a specific episode, issue, or piece of content across multiple posts and need visual variety within a single aesthetic

## What You Need To Provide
**Required:**
- The campaign goal: what are these images for? (show launch, episode promotion, thematic series, editorial calendar fill)
- The visual style or reference to an existing visual identity brief
- How many images you need (typically 5–10)
- The primary platform (Instagram, Twitter/X, LinkedIn) — this sets the default format
- A description of the themes or subjects to cover across the batch

**Optional:**
- Whether images should form a narrative sequence (each image is a chapter) or a thematic collection (each image is a standalone in the same visual world)
- Text overlay requirements (captions only, or text embedded in the image)
- Any specific subjects or scenes that must be included
- Color palette if defined (or reference to an existing color-palette-brief)
- Image generation tool (Midjourney, Flux, DALL-E)

## How Claude Approaches This
1. Establishes the visual anchor string — the shared aesthetic DNA that will appear in every prompt in the batch, ensuring all images are recognizably from the same project
2. Defines the batch structure: sequential (tells a story or progression across the posts) or thematic (varied subjects within a consistent visual world) — and maps out what each of the N images will depict
3. Writes each individual prompt around a distinct scene or subject, ensuring no two images are compositionally identical while all images share the same lighting approach, palette, and register
4. Plans visual variety deliberately: varies composition (close/medium/wide), subject (person/object/environment), and mood within the shared aesthetic — so the batch feels like a curated editorial series, not a set of variations on one image
5. Outputs the batch with a brief content note per image suggesting caption direction or where in a posting calendar the image fits

## Output Format
- Visual anchor string (labeled, ready to append to all prompts)
- One prompt per image: labeled with image number, subject/scene description, composition type, and platform format
- Content note per image: 1 sentence on when/how to use this image in a posting calendar
- Generation sequence advice if the batch benefits from seed continuity
- Brief batch overview: how the images work together and what variety has been built in

## Quality Criteria
- [ ] No two images in the batch have the same composition type (close/wide/medium) or subject category (person/object/space)
- [ ] The visual anchor string is consistent across all prompts and specific enough to constrain the aesthetic
- [ ] Each prompt is complete and would produce a usable image without the other prompts in the batch
- [ ] Content notes are practical — they tell the user specifically when to post each image, not just what it shows
- [ ] The batch as a whole tells a story about the project, even if individual images are standalone

## Example

### Input
- **Campaign:** Launch campaign for *Frequency* podcast (urban journalism and architecture)
- **Goal:** Introduce the show's visual world and editorial identity across 7 Instagram posts over the show's first two weeks
- **Style:** Documentary photography, urban architectural subjects, muted neutral palette, occupied environments, Iwan Baan aesthetic (see visual identity brief)
- **Format:** Instagram (4:5 portrait, 1:1 square alternated)
- **Structure:** Thematic collection — each image is a standalone visual essay in the same world
- **Tool:** Flux

### Output

---

**SOCIAL MEDIA BATCH — FREQUENCY LAUNCH CAMPAIGN**
*7 images · Instagram · 2-week launch · Flux*

---

**VISUAL ANCHOR STRING**
*(Append to all prompts)*

```
urban documentary photography, muted neutral palette with warm mid-tones, natural available light, occupied city environments, precise composition, evidence of use and habitation, architectural scale, Iwan Baan aesthetic, no commercial sheen, no tourist perspective, serious editorial intelligence, slight film grain
```

---

**BATCH OVERVIEW**

The 7 images move from the macro to the micro: the first images establish urban scale, the middle images move to human-scale interactions with buildings and spaces, and the final images are intimate details. The series reads, across two weeks, as a slow introduction to a way of seeing cities — which is exactly what *Frequency* does editorially.

---

**IMAGE 1 — Scale establisher**
*Format: 4:5 · Composition: Wide establishing shot*

```
Documentary photograph, wide view looking down a long straight city street from a pedestrian bridge, morning rush hour, dozens of figures tiny in the middle distance, tall mixed-use buildings on both sides funneling the perspective, natural overcast daylight, muted concrete grey palette with warm window lights from office buildings, human occupation at city scale, [VISUAL ANCHOR STRING] --ar 4:5
```

**Content note:** Post on Day 1 of launch (episode 1 drop day). Caption: introduce the show's mission. This image says "the city is our subject" before any words do.

---

**IMAGE 2 — Architectural detail**
*Format: 1:1 · Composition: Close architectural abstract*

```
Documentary photograph, close-up of a weathered building facade showing layers of paint over brick over concrete repair, textures of urban maintenance over decades, late afternoon raking light revealing surface depth, muted ochre and grey tones, no people visible, the facade as a document of time, [VISUAL ANCHOR STRING] --ar 1:1
```

**Content note:** Post Day 3. Caption: a quote from the episode about how cities accumulate history. This image works as a texture piece — visual rest between more compositionally active images.

---

**IMAGE 3 — Human in architectural scale**
*Format: 4:5 · Composition: Medium — person and building*

```
Documentary photograph, a person in their 40s sitting on concrete steps outside a large institutional building, eating lunch alone, looking into the middle distance, the building facade towers above them, scale contrast between human and structure, natural midday light, [VISUAL ANCHOR STRING] --ar 4:5
```

**Content note:** Post Day 5. Caption: a specific observation about the human scale of city planning. This is the first image with a central human figure — introduces the show's character-driven approach to urban subjects.

---

**IMAGE 4 — Interior threshold**
*Format: 1:1 · Composition: Medium — architectural threshold*

```
Documentary photograph, the interior of a social housing lobby, empty, afternoon light from a single window casting a rectangle of light on worn linoleum floor, mailboxes on one wall, a child's bicycle leaning against the wall, practical fluorescent light overhead, the space between public and private, [VISUAL ANCHOR STRING] --ar 1:1
```

**Content note:** Post Day 8. Caption: episode topic that week. The threshold — neither inside nor outside — is a recurring *Frequency* subject. This image introduces that recurring motif.

---

**IMAGE 5 — Construction and change**
*Format: 4:5 · Composition: Wide — old and new in frame simultaneously*

```
Documentary photograph, a street where a mid-century residential building stands adjacent to a construction site for a new tower, the old building's residents visible at windows, construction hoarding with permit notices, the transition from one city to another happening simultaneously, overcast daylight, [VISUAL ANCHOR STRING] --ar 4:5
```

**Content note:** Post Day 10. Caption: the week's episode topic (urban development, displacement, or housing). The juxtaposition image — doing the most editorial work of the series.

---

**IMAGE 6 — Infrastructure intimate**
*Format: 1:1 · Composition: Close — urban infrastructure detail*

```
Documentary photograph, close view of a manhole cover in wet pavement after rain, city reflections in the surface water around it, utility markings on the cover, the city's hidden infrastructure made momentarily visible, muted cool palette with warm reflections, [VISUAL ANCHOR STRING] --ar 1:1
```

**Content note:** Post Day 12. Caption: a line from the episode about the city's hidden systems. The most abstract image in the set — works as a visual palate cleanser and signals the show's interest in the overlooked.

---

**IMAGE 7 — End of day**
*Format: 4:5 · Composition: Wide — city at dusk, few people*

```
Documentary photograph, a city plaza at dusk, day crowd dispersed, a few remaining figures in the distance, street lights coming on, the urban environment briefly belonging to no one, muted blue-grey twilight palette with warm artificial light beginning to compete, [VISUAL ANCHOR STRING] --ar 4:5
```

**Content note:** Post Day 14 (end of launch fortnight). Caption: reflect on the two weeks of launch, or tease the next episode. The "day ending" image closes the launch visually — the city goes quiet before the next cycle begins.

---

**GENERATION NOTES**

Generate all 7 images from the same Flux session to maximize palette consistency. Begin with Image 3 (the most compositionally specific, with a human figure) to establish the style anchor, then use its generation seed for the remaining images. Images 2 and 6 (close abstracts) may need higher `--guidance` values to stay in documentary register rather than drifting toward abstract art.

---

## Known Limitations
- Consistent visual style across a batch of AI-generated images requires selection work — plan to generate 4 variations of each image and select the most consistent one; the batch anchor string produces consistency bias, not guaranteed uniformity
- Platform algorithm behavior for image-only posts changes frequently; the posting sequence recommended here is based on general best practices, not current platform data
- For platforms that show images as a grid (Instagram), the batch should be reviewed as a grid layout before posting — the alternating format sizes (4:5 / 1:1 / 4:5) should produce a clean grid pattern, but verify before scheduling
- This skill produces prompts for still images; video content (Reels, TikTok) requires a different workflow and is outside this skill's scope
- Very large batches (15+ images) are harder to hold visually consistent; for campaigns longer than two weeks, this skill is best used to plan in two-week sub-batches

## Related Skills
- [cover-image-pipeline](../workflows/cover-image-pipeline.md)
- [visual-identity-prompt](../../art-direction/visual-identity-prompt.md)
- [mood-board-brief](../../art-direction/mood-board-brief.md)
- [editorial-photo-prompt](../../flux/editorial-photo-prompt.md)

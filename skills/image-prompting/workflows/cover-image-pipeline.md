---
name: cover-image-pipeline
status: stable
category: image-prompting
subcategory: workflows
version: 1.0
eval_score: 4.4
tags: [image-prompting, workflows, cover, pipeline, multi-format, podcast, youtube]
---

# Cover Image Pipeline

## What This Skill Does
Generates a complete, coordinated set of image prompts for a cover image concept across multiple formats and crop ratios — so a single visual idea produces consistent, properly composed assets for podcast artwork, YouTube thumbnails, newsletter headers, and social media simultaneously.

## When To Use This Skill
- You have a cover image concept and need to generate it in multiple formats (square for podcast, 16:9 for YouTube, vertical for Instagram) without it looking like a crop of the same image
- You are launching a new episode, series, or publication issue and need a full suite of coordinated visual assets from one image session
- You want to ensure that text placement areas, focal points, and compositional choices are optimized for each platform rather than just resized
- You need consistent visual identity across a release campaign that touches multiple platforms simultaneously

## What You Need To Provide
**Required:**
- The core image concept (what the image should show — subject, scene, mood)
- The visual style (or reference to your project's visual identity brief)
- Which formats you need: select from podcast square (1:1), YouTube thumbnail (16:9), Instagram portrait (4:5), Instagram/Facebook landscape (1.91:1), newsletter header (3:1 approximately), or specify custom ratios

**Optional:**
- Whether the image needs to accommodate text overlay (title, episode number) and where
- The image generation tool being used (Midjourney, Flux, DALL-E) — each has different prompt grammar
- Any existing assets to maintain consistency with (describe or reference your style brief)
- The project's color palette if defined
- Priority format (the one that must be strongest if trade-offs are needed)

## How Claude Approaches This
1. Analyzes the core image concept and identifies which visual element is the focal point — this determines how each format is composed, not just cropped
2. Designs each format as an intentional composition, not a crop: the 16:9 version may use the wide aspect to show context the square version cannot; the square version may push the focal point to center in a way that would be static in landscape
3. Writes a coordinated prompt set where all versions share a consistent subject, style, and palette anchor, but each prompt is written to optimize for its specific ratio and use context
4. Notes text-safe zones for each format — where title text can be placed without covering the focal point
5. Identifies the generation sequence: which format to generate first (usually the most compositionally complex), and how to use that result's style/seed to anchor the others
6. Closes with a "Next Step" note: confirm the first format generation before moving on to the others, note the seed number after the first successful result, and review the full set at actual display sizes before finalizing

## Output Format
- One prompt per format requested, each labeled with: format name, aspect ratio, intended platform, and approximate pixel dimensions
- A brief composition note per format explaining how this version differs from the others and why
- Text-safe zone note for each format (where title/text can safely overlay)
- Generation sequence recommendation (which to generate first and how to carry consistency forward)
- A shared style anchor string to append to all prompts for visual consistency
- Output ends with a "Next Step" note: which format to generate first, how to record the seed, and how to review the final set at actual platform display sizes

## Quality Criteria
- [ ] Each format prompt is specifically composed for its ratio — not a generic version with an aspect ratio parameter changed
- [ ] The focal point placement in each format makes sense for how the format is viewed (podcast artwork is seen at 100px thumbnail; YouTube is seen at full browser width)
- [ ] Text-safe zones are specified for every format
- [ ] The shared style anchor is consistent across all prompts
- [ ] The generation sequence note explains the logic, not just the order
- [ ] Output includes at least one concrete next action the user can take immediately (generate the first format, record the seed number, or review the set at platform display sizes)

## Example

### Input
- **Core concept:** A lone lighthouse keeper standing at the base of a lighthouse at dusk, looking out to sea — for a podcast about solitude, remote work, and disconnected places called *Off-Grid*
- **Style:** Dark editorial photography, slightly cinematic, warm amber light from the lighthouse against a deep blue-purple dusk sky
- **Formats needed:** Podcast square (1:1), YouTube thumbnail (16:9), Instagram portrait (4:5), newsletter header (3:1)
- **Text accommodation:** Episode title text will appear in the lower third of podcast artwork and upper-left of YouTube thumbnail
- **Tool:** Flux

### Output

---

**COVER IMAGE PIPELINE — OFF-GRID**
*Episode asset set · Flux prompts · 4 formats*

---

**SHARED STYLE ANCHOR**
*(Append to all prompts)*

```
dark editorial photography, lighthouse at dusk, lone figure seen from behind, deep blue-purple sky, warm amber lighthouse beam, cinematic atmosphere, muted cool palette with warm amber accent, slight film grain, serious melancholic solitude, no bright daylight, no other people
```

---

**FORMAT 1 — Podcast Square**
*1:1 ratio · 3000x3000px · Podcast platforms*

```
Documentary photograph, lighthouse keeper standing at the base of a coastal lighthouse at dusk, seen from behind and below, looking out to dark sea, lighthouse structure rising vertically through the frame to the top edge, amber light beam emanating from the top, deep blue-purple sky fills the upper half of the frame, the figure is centered and small at the bottom third, dark rocks and concrete at foot level, wide angle perspective emphasizing vertical scale, [SHARED STYLE ANCHOR] --ar 1:1
```

**Composition note:** Vertical structure of the lighthouse dominates the square — creates strong graphic identity at thumbnail size. Figure at bottom third creates space for the lighthouse and sky to fill the frame.
**Text-safe zone:** Bottom 20% of frame (below figure) — leave dark and uncluttered for title text overlay.
**Generate this first.** It is the most compositionally specific and will establish the seed for other formats.

---

**FORMAT 2 — YouTube Thumbnail**
*16:9 ratio · 1280x720px · YouTube*

```
Documentary photograph, lighthouse at dusk, lighthouse keeper figure visible at left-of-center in frame, lighthouse structure rising to the right, dark sea extending to the left horizon, warm amber lighthouse beam sweeping left across the upper frame, deep blue-purple dusk sky, wide cinematic landscape establishing scale of the keeper against the structure and sea, [SHARED STYLE ANCHOR] --ar 16:9 --seed [use seed from Format 1]
```

**Composition note:** The figure moves to left-of-center to allow the landscape to breathe on the right; the lighthouse occupies the right third. This reads at thumbnail scale as "person + dramatic environment."
**Text-safe zone:** Upper-left quadrant above the figure — works for episode title and show name without covering the focal elements.
**Generate second.** Use the seed from Format 1 to bias toward consistent lighting and figure rendering.

---

**FORMAT 3 — Instagram Portrait**
*4:5 ratio · 1080x1350px · Instagram feed*

```
Documentary photograph, lighthouse keeper standing at the base of a lighthouse at dusk, slight low-angle looking upward, lighthouse structure filling the upper two-thirds of the vertical frame, figure at the bottom, amber warm light on the lighthouse structure above contrasting with the cool dark foreground, deep blue-purple gradient sky, intimate scale — the vertical format emphasizes height and isolation, [SHARED STYLE ANCHOR] --ar 4:5 --seed [use seed from Format 1]
```

**Composition note:** The 4:5 portrait ratio allows the lighthouse height to dominate — use this to create a sense of vertical scale and isolation. The slight upward angle makes the structure monumental.
**Text-safe zone:** Bottom 15% of frame — thin strip for show name only if needed; Instagram images are usually seen without overlay text.
**Generate third.**

---

**FORMAT 4 — Newsletter Header**
*3:1 ratio · 1200x400px · Newsletter and web*

```
Documentary photograph, wide panoramic view of a coastal lighthouse at dusk, lighthouse visible at right of frame, dark sea filling the left half, amber lighthouse beam sweeping across the frame, lone figure tiny in the foreground at center, deep blue-purple sky as the dominant element, cinematic wide composition with strong horizon line at the lower third, [SHARED STYLE ANCHOR] --ar 3:1 --seed [use seed from Format 1]
```

**Composition note:** The extreme wide ratio suits a panoramic ocean-and-lighthouse shot — the lighthouse moves to the right third (rule of thirds), the sea fills the left, and the figure provides scale in the center. The horizon line at the lower third leaves sky dominant.
**Text-safe zone:** Left two-thirds of the frame above horizon — newsletter header text sits well over the sky in this composition.
**Generate last** — the 3:1 is the most compositionally flexible and can accommodate some variation from the seed.

---

**GENERATION SEQUENCE SUMMARY**

1. Format 1 (Square) — establishes the core visual
2. Note seed number from Format 1 Job ID
3. Format 2 (16:9) with seed
4. Format 3 (4:5) with seed
5. Format 4 (3:1) with seed

*Generate 4 variations of each format and select the strongest composition before moving to the next.*

---

## Known Limitations
- Aspect ratio parameters alone do not guarantee that Flux or Midjourney will compose the image correctly for each ratio — the composition instructions in each prompt are the key to correct results, not just the `--ar` parameter; expect to generate multiple variations per format
- The `--seed` workflow produces consistency bias, not guaranteed consistency — face and figure rendering can still vary significantly across formats even with the same seed; selection work is required
- For podcast artwork specifically, the final image must be reviewed at actual display sizes (the large 3000px version and the small ~100px thumbnail simultaneously) — an image that works at full size may lose all detail at thumbnail scale
- This pipeline produces prompts, not the final assets; post-processing (color grading for consistency, text layout, platform-specific optimization) is required after generation

## Related Skills
- [dark-aesthetic-prompt](../../flux/dark-aesthetic-prompt.md)
- [editorial-photo-prompt](../../flux/editorial-photo-prompt.md)
- [social-media-visual-batch](../workflows/social-media-visual-batch.md)
- [visual-identity-prompt](../../art-direction/visual-identity-prompt.md)

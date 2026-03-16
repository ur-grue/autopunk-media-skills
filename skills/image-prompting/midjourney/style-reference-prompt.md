---
name: style-reference-prompt
status: stable
category: image-prompting
subcategory: midjourney
version: 1.0
eval_score: 4.4
tags: [image-prompting, midjourney, style, visual-reference, art-direction]
---

# Style Reference Prompt

## What This Skill Does
Builds a Midjourney prompt that precisely captures a defined visual style or artistic reference — translating a style description, reference image context, or artistic period into the specific prompt language Midjourney responds to.

## When To Use This Skill
- You have a clear visual style in mind (a photographer's aesthetic, an art movement, a film's cinematography) and need a Midjourney prompt that reliably produces that look
- You are art-directing a content series and need consistent visual style across multiple generated images
- You have a style reference image and want to generate original images in the same aesthetic without directly copying the reference
- You are producing imagery for editorial, social media, or marketing and need to describe an aesthetic with precision

## What You Need To Provide
**Required:**
- A description of the visual style you want to achieve — can be a named photographer/artist, an art movement, a film or TV show, a decade's aesthetic, or a detailed verbal description of the look
- What the image should depict (subject matter, scene, or concept)

**Optional:**
- Aspect ratio or intended format (e.g., 16:9 for YouTube thumbnail, 4:5 for Instagram, square)
- Midjourney model version if you have a preference (defaults to latest)
- Any style elements to exclude (e.g., "no digital art feel," "no oversaturation")
- Whether you want multiple prompt variations to test (2–3 alternatives)
- The specific use case (social media post, magazine cover, documentary still, podcast artwork)

## How Claude Approaches This
1. Identifies the core visual attributes of the stated style: lighting quality, color palette, texture, composition tendencies, grain or surface quality, subject-camera relationship
2. Translates those attributes into Midjourney's prompt grammar: combines subject, style descriptors, technical photography or art terms, and quality/finish parameters
3. Adds the appropriate camera, lens, or medium reference if the style implies specific photographic or artistic technique (e.g., "shot on 35mm Kodak Portra 400," "gouache on textured paper," "Leica M6 wide-open")
4. Sets aspect ratio parameter and adds `--stylize` value suggestion appropriate to the style (higher for painterly/artistic, lower for documentary/editorial)
5. Optionally generates 2–3 variations that explore the style from slightly different angles (different subject, same aesthetic)

## Output Format
- Primary prompt: complete Midjourney-ready string, formatted as: `/imagine [subject], [style descriptors], [technical reference], [mood/light], [finish parameters] --ar [ratio] --s [value] --v [version]`
- Breakdown section: brief explanation of which prompt elements produce which visual characteristics — so the user can modify intelligently
- Optional: 2 alternative prompts that vary subject or emphasis while maintaining the same aesthetic
- Negative prompt suggestions (`--no [element]`) where relevant to exclude common artifacts that clash with the style

## Quality Criteria
- [ ] The prompt captures the specific style described, not just its genre — "Nan Goldin snapshot aesthetic" is different from "documentary photography"
- [ ] Technical references (film stock, lens type, medium) are accurate and actually associated with the stated style
- [ ] The prompt includes at least one lighting descriptor — lighting is the single strongest style determinant in generated images
- [ ] Aspect ratio is set — a promptless default square is rarely the right output for professional content
- [ ] The breakdown section explains the logic so the user can iterate, not just copy-paste

## Example

### Input
- **Style:** The documentary photography style of Alec Soth — specifically his large-format portrait work from the American Midwest: frontal, slightly formal compositions, natural available light, melancholic quiet, subjects photographed in their own environments, pale winter light or flat overcast
- **Subject:** A middle-aged man sitting at a kitchen table in a modest house, looking slightly off-camera
- **Format:** 4:5 (Instagram portrait)
- **Use case:** Editorial illustration for a long-form magazine article about rural loneliness
- **Variations:** Yes, 2 alternatives

### Output

**PRIMARY PROMPT**

```
/imagine middle-aged man sitting at a worn kitchen table in a modest rural house interior, looking slightly off-camera, large format documentary portrait photography, frontal slightly formal composition, pale flat overcast window light from the left, muted earth tones and faded blues, worn linoleum floor, family photographs on the wall out of focus, Deardorff 8x10 large format film, Kodak Ektar 100, subtle grain, melancholic quiet dignity, Stephen Shore color palette, 2000s American documentary photography --ar 4:5 --s 180 --v 6
```

**PROMPT BREAKDOWN**

| Element | What it does |
|---------|-------------|
| `large format documentary portrait photography` | Establishes the genre and the formality implied by large-format gear |
| `frontal slightly formal composition` | Soth's characteristic direct-address framing — subject facing camera, not candid |
| `pale flat overcast window light from the left` | The specific lighting quality that defines the Midwest winter look — soft, directionless, slightly cold |
| `muted earth tones and faded blues` | The color palette: nothing saturated, nothing warm |
| `Deardorff 8x10 large format film, Kodak Ektar 100` | Specific camera and film stock — locks in grain structure and color rendering |
| `Stephen Shore color palette` | Adds a second photographic reference to reinforce the color approach |
| `--s 180` | Medium-high stylization — enough to pull toward a photographic aesthetic, not pure realism |

**Negative prompt suggestion:** `--no bright colors, no dramatic lighting, no shallow depth of field bokeh, no digital clarity`

---

**ALTERNATIVE 1 — Exterior version, same aesthetic**

```
/imagine middle-aged man standing on a wooden porch in front of a small clapboard house, winter afternoon, flat grey midwestern sky, looking just past the camera, large format documentary portrait photography, frontal composition, available light only, Kodak Ektar 100, muted palette, quiet and still atmosphere, Alec Soth Sleeping by the Mississippi style --ar 4:5 --s 180 --v 6
```

**ALTERNATIVE 2 — Closer composition**

```
/imagine close portrait of a middle-aged man at a kitchen table, hands visible on the surface, soft overcast window light, large format film photography, Kodak Ektar 100, no flash, natural shadows, muted color palette, slightly formal but intimate, American documentary photography tradition, rural interior detail in soft background --ar 4:5 --s 160 --v 6
```

## Known Limitations
- Midjourney does not reliably reproduce the exact look of any specific photographer; using a named photographer as a reference point produces an aesthetic in the direction of that work, not a reliable simulation of it — treat named references as directional, not definitive
- The `--stylize` value is a suggestion; optimal values vary significantly with Midjourney version and the specific image — iterating with the same prompt at `--s 100`, `--s 180`, and `--s 250` is recommended for fine-tuning
- Technical film stock and camera references (Kodak Ektar, Deardorff 8x10) have a real effect on Midjourney output but are not guaranteed to produce the specific rendering of those materials — they work as style signals, not as simulations
- Midjourney's interpretation of style references changes between model versions; a prompt optimized for v5 may need parameter adjustments for v6 or later

## Related Skills
- [character-consistency-prompt](../midjourney/character-consistency-prompt.md)
- [cinematic-shot-prompt](../midjourney/cinematic-shot-prompt.md)
- [mood-board-brief](../art-direction/mood-board-brief.md)

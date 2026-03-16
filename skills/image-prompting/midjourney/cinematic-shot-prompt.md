---
name: cinematic-shot-prompt
status: stable
category: image-prompting
subcategory: midjourney
version: 1.0
eval_score: 4.5
tags: [image-prompting, midjourney, cinematic, film-grammar, visual-storytelling]
---

# Cinematic Shot Prompt

## What This Skill Does
Generates a film-grammar-aware Midjourney prompt from a scene description — specifying shot type, lens, lighting, color grade, and mood — that produces an image with the visual language of a cinematically composed film still.

## When To Use This Skill
- You need a high-quality image that looks like a film still, not a stock photo or illustration
- You are art directing a project (documentary, editorial, series bible) and need reference images that convey a specific visual language
- You want to show a director, DP, or client what a scene or sequence should look and feel like
- You are building a mood board using AI-generated imagery and need precise control over the cinematic language

## What You Need To Provide
**Required:** A description of the scene, subject, or moment you want to capture; the emotional mood or atmosphere the image should convey
**Optional:** Reference films or cinematographers whose visual language you want to evoke; specific shot type (close-up, wide, overhead, etc.); time of day or lighting condition; color palette or grade preference; aspect ratio; Midjourney version (default is v6)

## How Claude Approaches This
1. Translates the scene description into precise cinematographic language — shot type (ECU, MCU, wide, aerial), lens choice (24mm wide, 85mm portrait, 200mm compressed telephoto), and camera position (eye-level, low angle, dutch tilt) — choosing the option that best serves the described mood
2. Specifies the lighting setup using film industry terms (Rembrandt, hard side-light, golden hour, practical-only, overcast diffused) rather than generic descriptors ("nice light," "dramatic")
3. Defines a color grade or palette (desaturated teal-and-orange, warm amber shadows, cold blue midtones, high-contrast monochrome) that supports the emotional register
4. Adds cinematic texture parameters — grain, bokeh, depth of field — that signal "film still" to the model rather than "digital photography" or "illustration"
5. Structures the final prompt in Midjourney's preferred order: subject, action/context, shot type, lens, lighting, color grade, mood, style parameters
6. After the prompt(s), provides a "Next Step" note: paste the prompt into Midjourney, generate at least 4 initial variations before upscaling, and which parameter to adjust first if the output is too stylized or not cinematic enough (typically --s for stylization strength or --c for chaos)

## Output Format
The full Midjourney prompt, copy-paste ready, formatted as a single paragraph ending with technical parameters. Followed by a brief breakdown (3–5 bullet points) explaining the key choices made and why they serve the described mood. Optionally, a second variant prompt with a different shot type or color treatment for comparison. Total: 200–350 words. Output ends with a "Next Step" note: paste the prompt into Midjourney, generate a grid of 4, and which parameters to tweak first if the output needs adjustment (--s, --c, or lighting terms).

## Quality Criteria
- [ ] Prompt includes at minimum: subject description, shot type, lighting, color grade, and at least one film/cinematography style reference
- [ ] No generic style descriptors ("beautiful," "stunning," "amazing") — all descriptors are specific and functional
- [ ] Lighting is described in cinematographic terms, not photographic or illustrative ones
- [ ] The prompt includes at least one technical Midjourney parameter (--ar, --v, --s, --c, or similar)
- [ ] The breakdown explains why each major choice was made for this specific mood
- [ ] The prompt produces a "film still" quality image, not a portrait, illustration, or stock photo
- [ ] Output includes at least one concrete next action the user can take immediately (paste into Midjourney, generate a 4-variation grid, adjust --s or --c if needed)

## Example

### Input
Scene description: A woman in her mid-40s stands at the window of a sparse apartment at night, looking out at the street below. She has just received bad news but has not yet reacted. The mood should feel suspended — between knowing and feeling.
Reference film: Winter's Bone, The Rider (Chloé Zhao visual language)
No specific shot type required — suggest what serves the scene
Aspect ratio: 16:9

### Output

**Prompt:**

A woman in her mid-40s stands in profile at a rain-streaked apartment window at night, arms loose at her sides, face turned toward the street below, expression unreadable. Interior practical light from a single bare bulb behind her, cold blue-grey ambient light from the street washing across her face and hands. Medium shot, slight low angle, 50mm lens, shallow depth of field with the window frame and street lights softly bokeh'd in the foreground. Desaturated palette — bleached highlights, cool grey-green shadows, no warmth in the image. Cinematic film grain, anamorphic lens flare from a streetlight, naturalistic lighting, mood of suspension and dread. Chloé Zhao visual language, American independent cinema, intimate verité realism. --ar 16:9 --v 6 --s 250 --c 5

---

**Prompt Breakdown:**

- **Shot type (medium, slight low angle):** Positions the viewer as an observer, not an intimate — maintaining emotional distance that mirrors the character's suspended state. Low angle gives the window and the world outside a slight weight.
- **Lighting (practical + cold street ambient):** Rejects warmth entirely. The bare bulb behind her creates a slight backlit halo without sentimentalizing; the street light is the only thing touching her face, and it's cold.
- **Color grade (desaturated, grey-green shadows):** Chloé Zhao's palette in *The Rider* and *Nomadland* uses this cool desaturation to signal emotional austerity without melodrama. No orange skin tones, no golden hour comfort.
- **Depth of field and grain:** The bokeh foreground creates a sense of the viewer looking through something — voyeuristic distance. Film grain signals analog texture and grounds the image in physical reality rather than digital smoothness.
- **--s 250:** Moderate stylization to push toward cinematic composition without losing realism.

---

**Variant Prompt (wider, more isolating):**

A woman seen from outside through a rain-streaked apartment window at night, standing in the middle distance with her back partially to camera, bare bulb hanging behind her, street reflected in glass, her silhouette split by the window frame. Wide shot, 35mm lens, low camera angle from street level looking slightly up. Desaturated, cold, no warmth, heavy film grain. American indie cinema, surveillance-style framing, emotional isolation. --ar 16:9 --v 6 --s 300

---

## Known Limitations
- Midjourney prompt effectiveness varies between model versions; parameters current as of v6 may behave differently in future releases — test outputs and adjust stylization values (--s) based on results
- Prompts requesting specific cinematographers by name ("shot by Roger Deakins") produce inconsistent results in Midjourney; the visual language approach (color grade + lighting + shot type combination) is more reliable than name-dropping
- Human faces in Midjourney remain imperfect; prompts with close-up facial expressions may require multiple generations or use of the variation tool to get the correct expression — this skill produces the prompt, not the guaranteed result
- Film grammar is a suggestion to the model, not a precise instruction; Midjourney interprets "50mm lens" as a visual aesthetic (slight compression, natural perspective) rather than literal technical specification

## Related Skills
- [style-reference-prompt](style-reference-prompt.md)
- [mood-board-brief](../../art-direction/mood-board-brief.md)
- [thumbnail-concept-brief](../../../youtube/pre-production/thumbnail-concept-brief.md)

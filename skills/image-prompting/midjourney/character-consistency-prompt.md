---
name: character-consistency-prompt
status: stable
category: image-prompting
subcategory: midjourney
version: 1.0
eval_score: 4.4
tags: [image-prompting, midjourney, character, consistency, series]
---

# Character Consistency Prompt

## What This Skill Does
Writes a set of Midjourney prompts designed to maintain consistent character appearance — face, build, clothing, and presence — across multiple generated images for use in editorial series, podcast artwork, YouTube thumbnails, or visual narratives.

## When To Use This Skill
- You are creating a series of images that all feature the same fictional character (for a podcast cover, YouTube series, editorial illustration run)
- You need a character to appear in multiple different scenes or contexts without changing their appearance
- You are illustrating a newsletter, blog, or social media series with a recurring visual persona
- You have already generated a character you like and want to generate additional images of the same person in new situations

## What You Need To Provide
**Required:**
- A detailed description of the character: apparent age, gender presentation, build, distinctive physical features (hair, facial features, any identifying marks or accessories)
- The character's typical clothing or visual identity
- The style you want the images to be in (photorealistic, illustrated, graphic, painterly)

**Optional:**
- A reference image description (if you have already generated a version of this character you want to match)
- The scenes or situations you need them depicted in (list the images you need)
- Midjourney version (v6 has better face consistency than earlier versions; --cref flag is available in v6 for image-based character reference)
- Aspect ratio for intended use
- Any seed number from a prior successful generation

## How Claude Approaches This
1. Builds a dense, precise character anchor string — a consistent block of descriptive text that will be used verbatim in every prompt in the set, covering the character's appearance in enough detail that Midjourney has minimal room for variation
2. Identifies the key consistency anchors: face structure, hair, signature clothing item or accessory — these are what must appear in every image
3. Writes a base prompt for the first image, then generates scene-specific prompts that keep the character anchor string identical and vary only the environment, action, and lighting
4. Recommends the `--seed` workflow: generate the first image, note the seed number from the Job ID, and use `--seed [number]` in subsequent prompts to bias toward the same character rendering
5. If Midjourney v6 is being used, notes where the `--cref [image URL]` flag should be inserted to use an existing character image as a visual reference

## Output Format
- Character anchor string: a labeled block of descriptive text ready to copy into every prompt
- Base prompt: the first full prompt to generate the character
- Scene variations: 3–5 additional prompts using the character anchor, each for a different situation
- Consistency workflow note: explains the seed and `--cref` workflow in plain language
- All prompts formatted as complete, copy-paste-ready Midjourney strings

## Quality Criteria
- [ ] The character anchor string covers at minimum: apparent age, gender, one distinctive facial feature, hair, and a consistent clothing item or signature visual element
- [ ] Every scene prompt uses the character anchor string verbatim — no variations in character description between prompts
- [ ] The anchor string is specific enough to distinguish this character from similar characters
- [ ] The consistency workflow is explained — users who don't know about `--seed` and `--cref` must be told
- [ ] At least one prompt places the character in a non-portrait scene (action, environment) to test consistency beyond close-up shots

## Example

### Input
- **Character:** A woman in her mid-40s, Black, natural shoulder-length hair with grey at the temples, warm brown eyes, slightly broad shoulders, consistently wears a dark navy blazer or jacket, often has a notepad or pen visible, confident and direct in expression — designed as the visual persona for a podcast about investigative journalism
- **Style:** Illustrated, semi-realistic — somewhere between editorial illustration and graphic novel, not photorealistic
- **Scenes needed:** Podcast cover art (portrait, looking at camera), working at a desk reviewing documents, standing outside a building, speaking into a microphone
- **Format:** Square (1:1) for podcast cover; 16:9 for banner; 4:5 for social

### Output

---

**CHARACTER ANCHOR STRING**
*(Copy this block verbatim into every prompt)*

```
Black woman in her mid-40s, natural shoulder-length hair with silver-grey at the temples, warm brown eyes, confident direct expression, wearing a dark navy blazer, editorial illustration style, semi-realistic graphic novel aesthetic, clean bold lines, muted professional color palette
```

---

**BASE PROMPT — Podcast cover portrait**

```
/imagine [CHARACTER ANCHOR STRING], close portrait, slight three-quarter angle, plain dark background, soft studio lighting, notepad visible in hand, podcast cover art composition, editorial illustration --ar 1:1 --s 200 --v 6
```

*(Generate this first. Note the seed number from the Job ID — it will appear in the image filename or in your Midjourney history. Use that seed in all subsequent prompts.)*

---

**SCENE 1 — Working at a desk**

```
/imagine [CHARACTER ANCHOR STRING], seated at a desk, reviewing documents spread across the surface, desk lamp light, late evening office interior, focused and intent, editorial illustration --ar 16:9 --s 200 --seed [YOUR SEED] --v 6
```

**SCENE 2 — Standing outside a building**

```
/imagine [CHARACTER ANCHOR STRING], standing outside a grey stone building, looking slightly upward, overcast daylight, professional and composed, background slightly desaturated, editorial illustration --ar 4:5 --s 200 --seed [YOUR SEED] --v 6
```

**SCENE 3 — Speaking into a microphone**

```
/imagine [CHARACTER ANCHOR STRING], standing at a microphone, mid-sentence, dynamic but not theatrical, studio or press conference setting, warm directional light, editorial illustration --ar 16:9 --s 200 --seed [YOUR SEED] --v 6
```

**SCENE 4 — Action shot, walking and thinking**

```
/imagine [CHARACTER ANCHOR STRING], walking along a city street, deep in thought, one hand raised slightly as if mid-thought, urban background out of focus, editorial illustration --ar 4:5 --s 200 --seed [YOUR SEED] --v 6
```

---

**CONSISTENCY WORKFLOW**

**Step 1:** Run the base prompt. Generate 4 variations (U1–U4). Choose the one that best captures the character.

**Step 2:** In your Midjourney history, find the Job ID of the image you chose. The seed number is embedded in the metadata — you can also react with the envelope emoji (✉️) to have Midjourney send you the job details including the seed.

**Step 3:** Add `--seed [number]` to every subsequent prompt. This does not lock the image — Midjourney is stochastic — but it strongly biases the generation toward a similar character rendering.

**Step 4 (v6 only):** Once you have a final character image you're happy with, use `--cref [image URL]` in subsequent prompts to provide a direct visual character reference. This is more reliable than seed alone for face consistency.

**Note on variation:** Even with seed and cref, some character drift between images is expected — especially in different poses and environments. Plan to generate 4+ variations of each scene and select the most consistent one.

---

**NEGATIVE PROMPT (apply to all scenes):**
`--no photorealistic, no 3D render, no overly simplified cartoon, no inconsistent hair color, no different clothing`

## Known Limitations
- Midjourney does not have a deterministic character lock — even with `--seed` and `--cref`, face and appearance will drift across images, especially in different poses, lighting conditions, and distances. Plan for selection work rather than perfect generation
- The `--cref` flag (character reference) is only available in Midjourney v6 and later — users on earlier versions must rely on the seed workflow, which is less reliable
- This skill produces prompt sets; the user must manage the actual generation workflow (noting seeds, uploading reference images for cref) in the Midjourney interface
- For photorealistic character consistency, other tools (Stable Diffusion with ControlNet, or dedicated avatar generation tools) may outperform Midjourney in the current generation of models

## Related Skills
- [style-reference-prompt](../midjourney/style-reference-prompt.md)
- [cinematic-shot-prompt](../midjourney/cinematic-shot-prompt.md)
- [visual-identity-prompt](../art-direction/visual-identity-prompt.md)

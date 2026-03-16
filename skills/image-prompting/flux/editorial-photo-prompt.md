---
name: editorial-photo-prompt
status: stable
category: image-prompting
subcategory: flux
version: 1.0
eval_score: 4.4
tags: [image-prompting, flux, editorial, photography, journalism, documentary]
---

# Editorial Photo Prompt

## What This Skill Does
Writes a Flux prompt for editorial-style photography suitable for journalism, documentary, and factual media contexts — images that look authentic, specific, and grounded in the real world rather than idealized or commercial.

## When To Use This Skill
- You need an image to accompany a journalism or documentary project and want something that reads as a real photograph, not an illustration or stock photo
- You are creating visuals for a magazine, newsletter, or editorial website and need images that match the register of documentary photography
- You want to generate images that look like they were taken by a photojournalist or documentary photographer — specific, unposed, and authentic in feeling
- You are testing visual concepts for a documentary pitch deck and need representative imagery quickly

## What You Need To Provide
**Required:**
- The subject or scene you need depicted (what is in the frame, who, where)
- The editorial context (what story or article will this image accompany)

**Optional:**
- Specific lighting conditions or time of day
- Geographic or environmental context
- The emotional register of the image (tension, hope, exhaustion, intimacy)
- Aspect ratio or intended format
- Any specific photographic style or documentary photographer whose aesthetic you want to reference
- Whether the image should feel recent/contemporary or historically situated

## How Claude Approaches This
1. Identifies the key visual elements that will make the image feel editorial rather than commercial: specificity of detail, natural light, authentic environment, non-idealized subject presentation
2. Structures the prompt around a specific, believable scene — not a generic representation of a concept but a particular moment that could plausibly have been photographed
3. Applies Flux-specific prompt optimizations: Flux responds well to detailed scene descriptions, specific lighting language, and photographic medium references
4. Adds negative-space considerations: what the image should not contain (stock photo genericness, artificial posing, commercial brightness, digital artifact sheen)
5. Suggests aspect ratio and any metadata tags that improve Flux output quality for editorial photography

## Output Format
- Primary Flux prompt: complete, detailed, formatted for direct use in Flux (Flux.1 Dev or Pro)
- Prompt breakdown: brief annotation of the key choices that produce the editorial quality
- Negative prompt: a short list of elements to exclude
- Optional: a second variation with slightly different framing, lighting, or emotional register
- Note on any content considerations (Flux will not generate images of real, identifiable people)

## Quality Criteria
- [ ] The scene described is specific enough that Midjourney or Flux would generate a particular image, not a generic one
- [ ] The prompt includes a natural light source — editorial photography is defined by how light falls, not by studio setups
- [ ] The image described would be believable as a real photograph — no fantastical elements, no idealized presentation
- [ ] The subject is described without identifying as any real, living person
- [ ] The prompt avoids stock-photo clichés: no business handshakes, no generic "teamwork," no forced emotional expressions

## Example

### Input
- **Subject:** An agricultural worker in a greenhouse, tending to hydroponic vegetable rows
- **Editorial context:** Long-form magazine article about the economics of indoor farming and its effects on rural agricultural employment
- **Desired register:** Quiet, dignified, slightly melancholic — the worker is skilled and serious, not performing for the camera
- **Lighting:** Interior greenhouse light, late afternoon
- **Format:** 16:9 for web article header
- **Style reference:** Documentary photography, slightly cool and desaturated

### Output

**PRIMARY FLUX PROMPT**

```
Documentary photograph of a farmworker in their late 40s tending to hydroponic vegetable rows in a large commercial greenhouse, late afternoon, diffuse cool light filtering through the polycarbonate panels above, long rows of leafy green plants in aluminum channels extending into depth, the worker's hands visible and in focus adjusting a plant root bundle, face partially in shadow and looking downward, worn but well-maintained work clothing, practical rubber gloves, slightly cool desaturated color palette, slight grain, 35mm documentary photography aesthetic, no flash, authentic candid moment not posed, quiet dignity --ar 16:9
```

**PROMPT BREAKDOWN**

| Element | Purpose |
|---------|---------|
| `late afternoon, diffuse cool light filtering through polycarbonate panels` | Creates specific, believable greenhouse light — not generic indoor lighting |
| `hands visible and in focus adjusting a plant root bundle` | Grounds the scene in actual labor — specific action, not static pose |
| `face partially in shadow and looking downward` | Creates intimacy and avoids the direct-gaze stock photo look |
| `slightly cool desaturated color palette, slight grain` | Editorial register — away from commercial brightness and sharpness |
| `authentic candid moment not posed` | Direct instruction to Flux to avoid artificial posing |

**NEGATIVE PROMPT**

```
smiling, looking at camera, bright white light, commercial photography, stock photo, oversaturated, oversharpened, HDR, perfect skin, professional headshot
```

---

**VARIATION — Wider environmental shot**

```
Documentary photograph, wide shot of a commercial greenhouse interior at late afternoon, long rows of hydroponic growing channels with leafy vegetables, a solitary farmworker at the far end of one row visible as a small figure against the green, cool diffuse light through overhead panels, condensation on the structure, slight haze in the distance of the greenhouse, cool muted tones, 35mm documentary aesthetic, quiet industrial scale of the operation visible, authentic workplace environment --ar 16:9
```

---

*Content note: Flux will not generate images of identifiable real people. All characters should be described generically (age range, work context, posture) without referencing any real individual.*

## Known Limitations
- Flux does not generate images of identifiable real people — for editorial contexts requiring a portrait of a real person, AI image generation is not appropriate; this skill is for scene-setting and illustrative imagery only
- Flux's interpretation of "documentary" aesthetics may produce results that vary significantly between runs — generating 4–6 variations and selecting is essential for editorial use; do not expect a single generation to be publication-ready
- The editorial use of AI-generated images in journalism raises legitimate editorial ethics questions; many publications require disclosure when AI-generated images are used and some prohibit them entirely — the user is responsible for their publication's policy
- Very specific environments (particular cities, buildings, geographic features) may not be accurately generated — Flux works better with generic environmental descriptions than with highly specific location references

## Related Skills
- [dark-aesthetic-prompt](../flux/dark-aesthetic-prompt.md)
- [style-reference-prompt](../../midjourney/style-reference-prompt.md)
- [mood-board-brief](../../art-direction/mood-board-brief.md)

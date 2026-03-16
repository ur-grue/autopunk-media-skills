---
name: visual-identity-prompt
status: stable
category: image-prompting
subcategory: art-direction
version: 1.0
eval_score: 4.4
tags: [image-prompting, art-direction, visual-identity, branding, show-art]
---

# Visual Identity Prompt

## What This Skill Does
Writes a comprehensive visual identity prompt for a show, channel, or publication — a master brief that defines the complete visual language and can be used to art-direct any asset in the project's visual system.

## When To Use This Skill
- You are launching a new podcast, YouTube channel, newsletter, or publication and need to define a coherent visual identity before producing any assets
- You have been producing content inconsistently and want to bring your visual language into alignment
- You are briefing a designer to build your brand identity and need a document that captures the visual direction precisely enough that the output is predictable
- You want a master brief document that all generated images for your project can be produced against

## What You Need To Provide
**Required:**
- Project name and description (what it is, what it does, who it's for)
- The core idea or editorial position (not just the topic — what is the personality and point of view?)
- Target audience

**Optional:**
- Named reference shows, publications, brands, or visual artists you want to approach (and why, if you can say)
- Named references to explicitly avoid
- Any visual assets you already have (logo, existing artwork, previous design choices)
- Platform(s): podcast, YouTube, newsletter, social media, print
- Typography preferences (serif/sans-serif, editorial/display, contemporary/classic)
- Any hard constraints (colors to avoid, elements that must appear, client restrictions)

## How Claude Approaches This
1. Distills the project's personality into a visual position: what world does this project inhabit, and what does that world look like in visual terms?
2. Defines the complete visual system across six dimensions: Color, Typography Direction, Imagery Register, Composition Principles, Texture & Surface, and Motion/Animation character (for video contexts)
3. Identifies three to five specific visual reference points with precise explanations of what quality in each is being cited — not names alone, but the specific visual attribute being borrowed
4. Writes a master AI prompt string — a reusable block of descriptive language that can be appended to any image prompt to keep generated assets within the visual system
5. Closes with an asset application guide: what the visual identity looks like applied to the key asset types (cover art, social posts, headers, thumbnails)
6. Ends with a "Next Step" note: which asset to produce first using the master AI prompt string, whether color-palette-brief should be run to extract specific hex codes from the palette described, and whether to brief a designer using this document or test the prompt string in an image generator first

## Output Format
- Length: 700–900 words
- Structure: Visual Identity Statement → The Six Dimensions → Reference Points → What This Identity Is Not → Master AI Prompt String → Asset Application Guide
- The six dimensions in evocative prose paragraphs (not bullet lists)
- Reference points with specific quality citation, not just source names
- Master AI prompt string formatted as a ready-to-copy code block
- Asset application guide as brief paragraph per asset type (3–5 asset types)
- Output ends with a "Next Step" note: which asset to generate first using the prompt string, whether to run color-palette-brief to extract hex codes, and whether to test the prompt string before briefing a designer

## Quality Criteria
- [ ] The visual identity statement is specific to this project — it could not describe any other show or publication
- [ ] The six dimensions give a designer enough to work from without a conversation
- [ ] References are specific: what quality in each reference is being borrowed, not just the name
- [ ] The master AI prompt string produces visually consistent images when tested across different subject matter
- [ ] The "what this is not" section names specific failure modes, not generic warnings
- [ ] Output includes at least one concrete next action the user can take immediately (test the prompt string in an image generator, run color-palette-brief, or share with a designer)

## Example

### Input
- **Project:** *Frequency* — a podcast and newsletter about how cities are changing: architecture, planning, mobility, housing, culture, and the people living through those changes. Not an academic urban studies show. Not a lifestyle show. Something between investigative journalism and long-form cultural criticism.
- **Personality:** Precise, curious, slightly contrarian. Looks at the built environment as seriously as it looks at the people in it.
- **Audience:** Urbanists, architects, planners, journalists, and culturally curious city-dwellers aged 25–45
- **References to approach:** Dezeen magazine, the photography of Iwan Baan, the visual language of The Architectural Review, the early era of Monocle Magazine
- **References to avoid:** Generic corporate smart-city imagery; Instagram travel aesthetics; overly polished tech-forward design
- **Platforms:** Podcast (Spotify/Apple), newsletter, Instagram, website

### Output

---

**VISUAL IDENTITY BRIEF — FREQUENCY**
*Master visual language document · Version 1.0*

---

**VISUAL IDENTITY STATEMENT**

*Frequency* inhabits the visual world of serious architectural and urban journalism: precise, intelligent, respectful of its subject without idealizing it. Images show the built environment as it actually is — occupied, weathered, used, occasionally magnificent, frequently contested. The visual language is editorial in the tradition of the architecture press: high-quality photography and illustration with a clear point of view, always in service of the story rather than the image itself.

---

**THE SIX DIMENSIONS**

**Color:** A neutral, architecture-adjacent palette: concrete mid-grey as the structural anchor, warm off-white for surface and background, a single strong accent that is neither tech-blue nor brand-red. The accent color is drawn from urban pigment — the specific orange-red of clay brick, the particular yellow of aged streetlamp sodium. Prints dark and reads clearly on screen. The palette never competes with photography.

**Typography Direction:** Serif for editorial context (the architecture press tradition); clean sans-serif for digital/mobile. No display fonts with strong personality — the type should be invisible when it's working correctly. Think the typographic register of *Domus* or *Frieze* rather than any contemporary tech-brand sans-serif.

**Imagery Register:** Architectural photography at the intersection of occupied and unoccupied: buildings that show evidence of use, streets that are lived in, spaces that have a specific time of day. Iwan Baan's occupation-first approach — photographs that ask "who is here and what are they doing" before "what was the architect trying to achieve." Natural light, real environments, no CGI or renders in editorial contexts.

**Composition:** Wide and precise. The full frame used deliberately — no cropped-out context. Horizon lines respected. Human figures in architectural scale, not isolated as subjects. A preference for the edge of things: the corner, the threshold, the point where building meets street meets sky.

**Texture & Surface:** Concrete, glass, brick, aged metal, worn paving. Materials that have been rained on. No pristine model-shot surfaces. The texture of real cities.

**Motion/Animation:** For video contexts: slow, intentional camera movement or no movement. Architectural subjects reward stillness. Transitions cut rather than dissolve. No kinetic text animation — type appears and holds. The visual grammar of a serious documentary, not a social media reel.

---

**REFERENCE POINTS**

1. **Iwan Baan — architectural photography** — specifically his ability to photograph extraordinary buildings through the lens of ordinary occupation: people making food, hanging laundry, waiting. The building is always context for human life.

2. **The Architectural Review, 1980s–2000s print issues** — for the combination of critical intelligence and visual seriousness. The photography serves the criticism; neither dominates.

3. **Monocle Magazine, 2007–2012** — for the editorial photography quality and the warmth within a precise visual system. Not the current Monocle, which has become a parody; the early Monocle that was genuinely curious about cities.

4. **Bernd and Hilla Becher, industrial photography** — for the typological approach: taking the same kind of image in different locations to reveal systemic patterns. Applied to urban subjects, this is the visual grammar of *Frequency*.

---

**WHAT THIS IDENTITY IS NOT**

Not smart-city marketing: no aerial drone shots of glowing cities at night, no data visualization overlaid on architecture, no blue-tinted corporate optimism. Not travel photography: no wonder-struck tourist perspective, no golden hour Instagram light, no "hidden gem" framing. Not Dezeen's visual language exactly — Dezeen serves the architect; *Frequency* serves the city and the people in it, which requires a different camera angle.

---

**MASTER AI PROMPT STRING**

```
architectural and urban documentary photography, editorial register, natural available light, occupied urban environments, precise wide composition, concrete and brick and glass textures, muted neutral palette with warm mid-tones, real city environments showing evidence of use and habitation, Iwan Baan compositional approach, no CGI, no renders, no perfect surfaces, no commercial sheen, serious visual intelligence
```

---

**ASSET APPLICATION GUIDE**

**Podcast cover art (3000x3000px square):** Primary architectural image at full bleed; title in editorial serif top-left or bottom-left; no background color wash — the image carries the cover. Use a single, strong, slightly unconventional urban image (a threshold, an interior, a detail) rather than a recognizable skyline.

**Newsletter header (600px wide):** Full-width photograph at 2:1 ratio; issue number and title in editorial type below; minimal chrome. The header image changes every issue — it is not decorative, it is the first editorial choice.

**Instagram (1:1 and 4:5):** Single strong images — one idea per frame. Text overlays only for pull quotes, minimal and in the house type. No collages, no multi-image layouts, no infographic style. The grid should feel like a portfolio of photographs, not a social media account.

**Website (various):** Architecture of the site should be as precise as the visual language — white space used deliberately, photography dominant, no gratuitous illustration. The site reads like a magazine, not a blog.

---

## Known Limitations
- A visual identity brief is a creative direction document, not a brand standards manual — it defines direction and logic but does not substitute for a designer building the actual assets; typography choices, spacing systems, and component design require professional execution
- The master AI prompt string produces visually consistent outputs at a directional level; exact consistency across dozens of AI-generated images requires active art direction and selection on each generation
- Named references (Iwan Baan, Monocle) may not be familiar to all designers; the brief should be reviewed to confirm shared understanding of the references before work begins
- This skill produces the identity brief; implementing it into a functional design system (logo, templates, color standards, typography files) requires a separate design engagement

## Related Skills
- [mood-board-brief](../art-direction/mood-board-brief.md)
- [color-palette-brief](../art-direction/color-palette-brief.md)
- [cover-image-pipeline](../../workflows/cover-image-pipeline.md)
- [style-reference-prompt](../../midjourney/style-reference-prompt.md)

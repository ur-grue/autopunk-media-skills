---
name: mood-board-brief
status: stable
category: image-prompting
subcategory: art-direction
version: 1.0
eval_score: 4.5
tags: [image-prompting, art-direction, mood-board, visual-brief, pre-production]
---

# Mood Board Brief

## What This Skill Does
Writes a structured mood board brief for a visual project — a document that specifies visual references, tone, palette, texture, and the visual language a designer, photographer, or AI image generator should work within.

## When To Use This Skill
- You are briefing a designer, photographer, or videographer on the visual direction of a project and need a written brief they can work from
- You are creating a series of AI-generated images and need a consistent visual brief to use across multiple prompting sessions
- You are starting a new show, series, or publication and need to establish and document the visual identity before production begins
- You want to communicate a visual direction to a collaborator who has not seen your reference images

## What You Need To Provide
**Required:**
- The project name and a brief description (what it is, who it is for)
- The subject matter or content domain (e.g., investigative journalism, cooking, travel, true crime)
- The emotional tone you want the visuals to convey

**Optional:**
- Named references: specific films, photographers, art movements, publications, or brands whose visual language you want to approach or avoid
- Color direction (even vague — "warm and earthy," "cold and minimal," "high-contrast black and white")
- Intended use (social media, cover art, YouTube thumbnails, editorial illustration)
- Audience demographic (helps calibrate sophistication and register of the visual language)
- Things you definitely do not want (generic stock photo look, overly polished, too dark, too corporate)

## How Claude Approaches This
1. Synthesizes the inputs into a clear visual position statement — a one-paragraph description of the visual world this project inhabits
2. Specifies the five core visual dimensions: Lighting, Color Palette, Texture & Surface, Composition Tendencies, and Subject-Camera Relationship
3. Lists three to five specific reference points — named films, photographers, publications, or art works — with a one-sentence explanation of exactly what quality in each reference is being cited (not just the name)
4. Lists two to three things the visual language explicitly is not — negative space that helps a designer understand the exact register being targeted
5. Closes with a brief brief for AI prompting: a short anchor phrase that can be added to any image prompt to keep all generated images within the same visual world
6. After the brief, provides a "Next Step" note: share the document with any collaborator (designer, photographer, or AI prompter) before starting work, test the AI Prompt Anchor immediately with a cinematic-shot-prompt or editorial-photo-prompt run, and confirm the reference points are known to all collaborators before production begins

## Output Format
- Length: 400–600 words
- Structure: Visual Position Statement → The Five Dimensions → Reference Points → What This Visual Language Is Not → AI Prompt Anchor
- Tone: Descriptive and evocative, not technical — a mood board brief should inspire as well as specify
- The five dimensions are formatted as labeled paragraphs, not bullet lists (evocative prose)
- References listed with source attribution and a one-sentence reason for the citation
- Output ends with a "Next Step" note: share with collaborators, test the AI Prompt Anchor immediately using cinematic-shot-prompt or editorial-photo-prompt, and confirm all references are understood before production begins

## Quality Criteria
- [ ] The visual position statement creates a specific visual world, not just a mood word ("melancholy" is not a position; "the specific grey light of a northern European city in November, where everything looks like it happened a long time ago" is)
- [ ] At least one of the reference points is unexpected — not the obvious reference for the genre
- [ ] The "what this is not" section is as specific as the "what this is" — "not stock photo" is useful; "not corporate, not aspirational, not the visual language of a startup pitch deck" is better
- [ ] The AI prompt anchor is a short phrase that actually functions as a prompt element, not a description of the brief
- [ ] A designer who has never spoken to you could build an accurate mood board from this document alone
- [ ] Output includes at least one concrete next action the user can take immediately (share with collaborators, test the AI Prompt Anchor with cinematic-shot-prompt, or confirm reference understanding before production)

## Example

### Input
- **Project:** *The Margin* — a newsletter and podcast about labor, economics, and the working lives of people who rarely appear in mainstream financial coverage
- **Emotional tone:** Grounded, unsentimental, quietly political — the aesthetics of serious journalism without the self-importance
- **Color direction:** Muted, slightly desaturated; warm in human moments, cooler in structural/systemic contexts
- **Audience:** Educated adults aged 28–50; readers of The Atlantic, listeners of Planet Money; not finance professionals
- **References:** Documentary photography tradition, mid-century print journalism, Walker Evans
- **What to avoid:** Stock photo generic, corporate infographic, overly polished digital

### Output

---

**MOOD BOARD BRIEF — THE MARGIN**
*Visual direction document · Version 1.0*

---

**VISUAL POSITION STATEMENT**

*The Margin* inhabits the visual world of serious documentary journalism: observational, specific, unglamorous in the best sense. Images look like they were taken by someone who was there, who had access, who stayed long enough to see the moment rather than manufacture it. The palette is the palette of real working environments — worn surfaces, natural light, the specific color of industrial fluorescence or low winter sun. Nothing is brightened for effect. The light falls where it falls.

---

**THE FIVE DIMENSIONS**

**Lighting:** Natural and available whenever possible. The default is soft, slightly overcast — the light that is always there, not the light that makes things look their best. Interior shots use practical sources (desk lamps, factory lights, daylight through windows). No fill lights, no dramatic shadows for effect — drama comes from the subject, not the lighting rig.

**Color Palette:** Muted and slightly desaturated throughout. Warm tones — aged paper, brick, human skin in natural light — in human-scale, individual stories. Cooler tones — institutional grey, fluorescent blue-white, concrete — in systemic and structural contexts. The palette shifts with the story, but never saturates.

**Texture & Surface:** Worn, specific, tactile. Weathered wood, worn linoleum, aged newsprint, callused hands, paint over paint over concrete. Every surface has a history. Nothing looks new, nothing looks aspirational.

**Composition:** Observational. Subjects caught mid-action or mid-thought rather than posed. Wide shots that show subjects in relation to their environment. Close-ups on hands and objects as much as faces. Foreground elements allowed to intrude. The camera is a witness, not a director.

**Subject-Camera Relationship:** Close but not intrusive. The camera earns its access. Subjects are not performing for it. There is a mutual respect in the framing — the camera does not diminish or aggrandize.

---

**REFERENCE POINTS**

1. **Walker Evans, *Let Us Now Praise Famous Men* (1941)** — for the absolute refusal of sentiment combined with absolute respect for the subject. Not the nostalgic Walker Evans that gets quoted; the forensically precise one.

2. **The New York Times Magazine photo essays, 1970s–1980s** — for the combination of strong photojournalism with editorial intelligence. The images know what story they are in.

3. **Sebastião Salgado, *Workers* (1993)** — specifically the large-scale industrial shots, for the dignity of labor as subject without heroization. Not for the dramatic black-and-white; for the compositional intelligence.

---

**WHAT THIS VISUAL LANGUAGE IS NOT**

Not the visual language of a startup pitch: no pure white backgrounds, no gradient blues, no people beaming at laptops. Not the visual language of a political campaign: no symbolic uplift, no purposeful horizon staring, no crowd-and-flag iconography. Not stock photography of any kind — the generic handshake, the diverse-team-meeting, the woman-laughing-at-salad register is the visual opposite of what *The Margin* inhabits.

---

**AI PROMPT ANCHOR**

For any AI-generated image in *The Margin* visual system, include:
`"documentary photography, muted desaturated palette, available natural light, observational composition, worn surfaces, Walker Evans aesthetic, no studio lighting, no commercial sheen"`

---

## Known Limitations
- A mood board brief is a document, not a mood board — it describes images rather than showing them; for a collaborator who is a visual thinker, this brief works best when accompanied by actual reference images gathered by the user
- Named references (Walker Evans, specific photographers) may not be known to all collaborators — the brief should be reviewed with the collaborator to confirm they understand the references cited
- AI image generators respond to the prompt anchor provided here, but visual consistency across a full project still requires active art direction on each generation — the brief sets direction, it does not automate consistency
- This skill produces a visual direction document; it does not produce the actual visual identity (logo, typography, color codes) — those require a designer working from this brief

## Related Skills
- [color-palette-brief](../art-direction/color-palette-brief.md)
- [visual-identity-prompt](../art-direction/visual-identity-prompt.md)
- [style-reference-prompt](../../midjourney/style-reference-prompt.md)
- [editorial-photo-prompt](../../flux/editorial-photo-prompt.md)

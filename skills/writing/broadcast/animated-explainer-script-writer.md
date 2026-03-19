---
name: animated-explainer-script-writer
status: beta
category: writing
subcategory: broadcast
version: 1.0
eval_score: null
tags: [animation, explainer, narration, script, broadcast]
---

# Animated Explainer Script Writer

## What This Skill Does
Writes a timed, scene-by-scene narration script for an animated explainer video, matched to a specified duration and keyed to on-screen visual cues.

## When To Use This Skill
- You need to explain a complex process, policy, or concept to a general audience using animation
- A producer, motion designer, or editor needs a finished script before animation begins
- You have a clear topic and runtime but no draft copy yet
- You are adapting an existing long-form piece (article, report, documentary segment) into a short animated format

## What You Need To Provide
**Required:**
- Topic and the core message or takeaway (one sentence is enough)
- Target duration (e.g., 90 seconds, 2 minutes, 3 minutes)
- Intended audience (e.g., general public, secondary school students, business decision-makers)

**Optional:**
- Tone — informative and neutral, warm and accessible, urgent and advocacy-driven
- Key facts, statistics, or quotes that must appear
- A list of scenes or visual concepts already planned by the design team
- Whether the narrator is on-screen (presenter-led) or off-screen voice-over only
- Language register — plain English, technical, bilingual considerations

## How Claude Approaches This
1. Identifies the single core idea the audience must leave with, then structures all content to support that idea and nothing else
2. Divides the runtime into logical segments — typically hook, problem/context, explanation, and resolution or call to action — and assigns approximate word counts to each segment based on a standard spoken pace of 130 words per minute
3. Writes narration scene by scene, including a bracketed visual direction for each scene to guide the animation team, keeps sentences short and declarative, and ends with a clear closing statement the audience can remember

## Output Format
A complete scene-by-scene script, formatted as a two-column structure: **[VISUAL]** direction on the left, **NARRATION** text on the right. Each scene is numbered. Total word count and estimated read time appear at the top. The script is written to be read aloud — no bullet points, no headings inside the narration itself. Tone matches the specified audience. Length reflects the requested duration.

## Quality Criteria
- [ ] Total word count is within 10% of the target duration at 130 words per minute
- [ ] Every scene has both a visual direction and a narration line — no orphaned directions or narration without a visual anchor
- [ ] The script explains the concept without assuming prior knowledge
- [ ] No sentence in the narration is longer than 20 words
- [ ] The closing scene gives the audience a single concrete takeaway or next step
- [ ] Language is free of jargon unless the topic requires it, in which case each term is defined on first use

## Example

### Input
Topic: How urban heat islands form and why cities are hotter than surrounding countryside
Core message: Cities trap heat because of built surfaces and lack of vegetation — understanding this helps cities plan cooler neighbourhoods
Duration: 2 minutes
Audience: General public, no scientific background assumed
Tone: Clear, calm, accessible
Visual style: Simple flat animation with icons and temperature colour gradients

### Output

**Estimated read time: 2 min 00 sec | Word count: 261**

---

**Scene 1**
[VISUAL] Aerial view of a city at night — buildings glow warm orange; surrounding countryside is dark blue and cool
NARRATION: Have you noticed how a city always feels warmer than the countryside outside it? That difference has a name. It's called an urban heat island.

---

**Scene 2**
[VISUAL] Split screen — left: forest floor with soil and trees; right: city street with concrete and glass
NARRATION: In nature, surfaces like soil and leaves absorb sunlight and release moisture into the air. That moisture cools everything down. But in a city, concrete, tarmac, and glass absorb heat and hold it — with very little moisture to release.

---

**Scene 3**
[VISUAL] Thermometer icons rising over rooftops; car exhausts and air conditioning units emit heat waves
NARRATION: On top of that, millions of vehicles, air conditioners, and industrial machines pump extra heat into the air around the clock. In dense city centres, temperatures can run five to ten degrees higher than nearby rural areas — even at night, when the heat stored in buildings slowly radiates back out.

---

**Scene 4**
[VISUAL] City map with green zones highlighted — parks, tree-lined streets, green rooftops
NARRATION: The good news is that cities can fight back. More trees. Green roofs. Lighter-coloured road surfaces that reflect rather than absorb sunlight. Each change lowers the local temperature and makes neighbourhoods more liveable.

---

**Scene 5**
[VISUAL] A single tree planted on a city street; temperature icon drops; people walking comfortably
NARRATION: Urban heat islands are not inevitable. They are a result of choices — which means they can be changed by better ones. The cooler city starts with understanding why cities get hot in the first place.

---

## Known Limitations
- Claude cannot predict how long a specific narrator will take to read the script — professional narrators vary from 120 to 150 words per minute; the 130 wpm default is an approximation only, and producers should time a read-aloud before locking the edit
- Visual directions are suggestions to guide an animation team, not storyboard frames — a motion designer will interpret them according to their own style guide
- For highly technical subjects (medical procedures, engineering processes, legal frameworks), Claude may oversimplify unless the user provides the exact facts and terminology they want included
- The skill does not generate animation assets, motion briefs, or timing sheets — it produces narration copy only

## Related Skills
- [voice-over-writer](voice-over-writer.md)
- [narrator-voice-adapter](../../tv-documentary/scripting/narrator-voice-adapter.md)
- [commentary-writer](../../tv-documentary/scripting/commentary-writer.md)

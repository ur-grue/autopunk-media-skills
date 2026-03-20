---
name: animated-explainer-script
status: stable
category: tv-documentary
subcategory: scripting
version: 1.0
eval_score: 4.44
tags: [documentary, scripting, animation, explainer, narration, graphics, data-visualisation]
---

# Animated Explainer Script

## What This Skill Does
Writes a complete narration script for an animated explainer sequence within a documentary, with visual direction cues synced to each beat — ready to hand to a narrator and an animation team simultaneously.

## When To Use This Skill
- Your documentary needs to explain a complex process, system, or dataset that cannot be shown with live-action footage
- You have identified a section of your film where animation or motion graphics will carry the storytelling (e.g., how a supply chain works, how a disease spreads, how money flows through a system)
- You need to brief both a narrator and an animation studio from a single document
- You are working with a graphics artist and need to provide them with a shot-by-shot visual brief that matches the voiceover timing

## What You Need To Provide
**Required:**
- The concept to explain — what the viewer should understand by the end of this sequence
- Target duration (e.g., "90 seconds," "2–3 minutes")
- Audience knowledge level: assume no prior knowledge, assume basic familiarity, or assume specialist audience
- Documentary tone: serious/investigative, accessible/educational, or editorial/opinion

**Optional:**
- Specific data points, statistics, or facts that must be included
- Visual style preference: infographic/data-driven, illustrated/hand-drawn, 3D/photorealistic, abstract/conceptual
- Narrator voice: existing narrator in the documentary, or standalone (affects how the script connects to surrounding material)
- What comes before and after this sequence in the edit (helps with transitions)
- Any visual metaphors or analogies you want to use or avoid
- Brand or production style guidelines for graphics

## How Claude Approaches This
1. **Identifies the explanation structure.** Every explainer needs a logic: chronological (first this, then this), causal (this causes that), comparative (A versus B), or process-based (step 1, step 2, step 3). Claude determines which structure best serves the concept and uses it to organise the sequence.

2. **Writes the narration script.** Drafts voiceover text at approximately 150 words per minute of target duration — the standard pace for documentary narration that allows breathing room for the visuals to land. The language is concrete and specific: no jargon without immediate plain-language follow-through, no passive constructions when active voice is clearer, no more than one new concept per sentence.

3. **Adds visual direction cues for every beat.** Each section of narration is paired with a [VISUAL] cue that describes what the viewer should see on screen at that moment. These cues are written for an animation team — they describe the visual action, the data being shown, the movement or transition, and any on-screen text. They are not shot-by-shot storyboards, but they are specific enough for a motion graphics artist to begin work without a separate briefing document.

4. **Builds in pacing.** Inserts deliberate pauses — marked as [PAUSE — 1 sec] or [BEAT] — at moments where the visual needs to land before the narration continues. Complex graphics need time to resolve on screen before the narrator moves on. The script respects this by leaving space.

5. **Opens and closes the sequence cleanly.** The first line connects to the documentary's narrative (a question, a statement of stakes, or a transition from a previous scene). The last line delivers the takeaway — the single thing the viewer should retain — and provides a bridge back to the live-action film.

## Output Format
Two-column script format. Left column: narration text (what the narrator says). Right column: visual direction (what appears on screen). Each row represents one beat — typically 10–20 seconds of screen time. Total length matches the target duration at ~150 words per minute narration pace. Includes timing estimates per beat. Ends with a "Production Notes" section (2–3 bullets) covering any considerations for the animation team or narrator.

```
ANIMATED EXPLAINER — [Sequence Title]
Target duration: [X:XX] | Narration word count: [XXX]

| NARRATION | VISUAL DIRECTION |
|-----------|-----------------|
| [Text — Beat 1] | [Visual cue — Beat 1] |
| [Text — Beat 2] | [Visual cue — Beat 2] |
| ... | ... |

PRODUCTION NOTES
- [Note 1]
- [Note 2]
```

## Quality Criteria
- [ ] Narration word count matches target duration at approximately 150 words per minute
- [ ] Every narration beat has a corresponding visual direction cue — no orphaned text without a visual
- [ ] Visual cues are specific enough for an animation team to begin work (describe what is seen, not just "graphic appears")
- [ ] Language is concrete and jargon-free — a viewer with no specialist knowledge can follow the explanation
- [ ] No more than one new concept is introduced per beat
- [ ] Deliberate pauses are built in where complex visuals need time to resolve
- [ ] The sequence opens with a connection to the documentary's narrative and closes with a clear takeaway
- [ ] On-screen text (labels, numbers, captions) is specified in the visual direction where needed

## Example

### Input
**Concept:** How microplastics enter the human food chain — from ocean pollution to dinner plates. The viewer should understand the three main pathways: direct ingestion by marine life, bioaccumulation up the food chain, and contamination of drinking water supplies.
**Duration:** 2 minutes (approximately 120 seconds)
**Audience:** General public, no prior knowledge assumed
**Tone:** Accessible/educational — serious subject, but not alarmist
**Visual style:** Clean infographic with a muted colour palette
**Context:** This sequence follows an interview with a marine biologist who has just said, "People think this is an ocean problem. It's a kitchen problem." The sequence should pick up from that line.

### Output

**ANIMATED EXPLAINER — Microplastics: Ocean to Plate**
Target duration: 2:00 | Narration word count: ~290

---

| NARRATION | VISUAL DIRECTION |
|-----------|-----------------|
| Every year, roughly eight million tonnes of plastic waste enters the world's oceans. Most of it doesn't stay in the form you'd recognise. | Wide shot: globe with ocean highlighted. Plastic debris icons flow from coastlines into the water. Zoom in as large plastic items break apart into smaller and smaller fragments. On-screen text: "8 million tonnes / year." |
| Sunlight, salt water, and wave action break it down into fragments smaller than five millimetres. These are microplastics — and they're now in virtually every marine environment on earth. | Close-up: a single plastic fragment splitting into dozens of tiny particles. Scale bar appears showing "< 5mm." Particles disperse across the ocean cross-section. |
| [PAUSE — 1 sec] | Transition: ocean cross-section resolves. Three pathway icons appear at the bottom of screen, numbered 1, 2, 3. |
| The first pathway is direct. Small fish and shellfish mistake microplastics for food. A single mussel can contain dozens of particles. | Pathway 1 highlights. Animated fish and mussels with microplastic particles visible inside them. On-screen text: "Pathway 1 — Direct Ingestion." |
| The second pathway is accumulation. Small fish are eaten by larger fish. The plastics don't break down — they concentrate. A tuna at the top of the food chain carries the combined load of everything beneath it. | Pathway 2 highlights. Simple food chain diagram: plankton → small fish → medium fish → tuna. Particle count visibly increases at each level. On-screen text: "Pathway 2 — Bioaccumulation." |
| [BEAT] | Tuna icon pulses with accumulated particles. |
| The third pathway bypasses the ocean entirely. Microplastics are now found in tap water, bottled water, and agricultural soil irrigated with recycled wastewater. | Pathway 3 highlights. Split screen: tap with water flowing, water bottle, farmland with irrigation. Particles visible in all three. On-screen text: "Pathway 3 — Water & Soil Contamination." |
| [PAUSE — 1 sec] | All three pathways visible simultaneously. Lines converge toward a single dinner plate at the centre of the frame. |
| All three pathways lead to the same place. Current research estimates that the average person may ingest up to five grams of microplastic per week — roughly the weight of a credit card. | Dinner plate fills the frame. Fork and knife appear. On-screen text fades in: "Up to 5g per week." A credit card icon appears beside the plate for scale comparison. |
| The science on health effects is still emerging. What is not in question is the route: from ocean, to food chain, to you. | Plate and credit card fade. Final frame: the three pathway icons return, connected by a single line ending at a simple human figure silhouette. Clean, still, no animation — let the image sit. |

---

**PRODUCTION NOTES**
- The "five grams per week" figure is widely cited but comes from a 2019 WWF-commissioned study and has been debated in subsequent literature. The narration hedges with "estimates" and "may ingest" — confirm with the production's scientific advisor whether to retain, update, or add a qualifier.
- The credit card comparison is effective on screen but works only if the graphic holds for at least 2 seconds — do not rush past it. The pause is built into the script timing.
- The final frame is intentionally static. After two minutes of animated movement, a still image with no narration creates a stronger transition back to the live-action interview that follows.

---

## Known Limitations
- Narration word count targets assume a standard documentary narration pace (~150 words per minute). If your narrator speaks significantly faster or slower, or if the programme uses a more conversational delivery, adjust the word count accordingly. The visual cues remain valid; only the narration density changes.
- Visual direction cues describe what should appear on screen but do not constitute a storyboard. An animation team will still need a design brief covering colour palette, typography, icon style, and animation techniques (2D, 3D, motion graphics). Use the mood-board-brief or visual-identity-prompt skills to generate that brief.
- Statistics and facts included in the narration are drawn from the user's input or from widely reported figures. Claude cannot verify their accuracy or currency — all data points must be fact-checked by the production team before recording.

## Related Skills
- [commentary-writer](commentary-writer.md) — write narration for live-action sequences that bookend the animation
- [scene-breakdown-writer](scene-breakdown-writer.md) — plan the broader scene structure that this explainer sits within
- [narrator-voice-adapter](narrator-voice-adapter.md) — adapt the narration style to match a specific narrator's voice

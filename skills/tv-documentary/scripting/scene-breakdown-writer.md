---
name: scene-breakdown-writer
status: stable
category: tv-documentary
subcategory: scripting
version: 1.0
eval_score: 4.4
tags: [documentary, scripting, breakdown, structure, editing]
---

# Scene Breakdown Writer

## What This Skill Does
Breaks a documentary sequence into a detailed scene-by-scene breakdown with action descriptions, narration cues, interview placement, and B-roll requirements.

## When To Use This Skill
- You are building a paper edit or offline edit plan and need to structure raw material into scenes before starting the cut
- You want to present a sequence structure to a broadcaster or editor before the rough cut
- You are writing the narration script and need the picture structure mapped out first
- You want to check whether a proposed sequence structure serves its narrative purpose before committing editing time

## What You Need To Provide
**Required:** A description of the sequence (what it covers, what it needs to achieve narratively); the raw material available (interview excerpts, observational footage descriptions, archival material); the sequence's position in the film (opening, mid-film, climax, closing)
**Optional:** Approximate target running time for the sequence; the film's overall tone and narration style; specific interview lines or quotes you want to include; the preceding and following sequences for context

## How Claude Approaches This
1. Establishes the sequence's narrative function — what question or story beat it opens, develops, and closes
2. Structures the scene order to create maximum forward momentum: establishes before explains, shows before tells, plants before pays off
3. Writes each scene with three elements: Action (what the audience sees), Narration Cue (where and approximately what the narration should say, or "N/A" if the scene plays without narration), and Interview Placement (which interview line or subject appears, if any)
4. Adds B-roll requirements for each scene — what additional footage is needed to cover cuts or add visual depth
5. Closes with a "Next Step" note: which scene to confirm material for first (typically the one most at risk of having no footage), whether commentary-writer should be run to develop the narration cues into full script, and whether rough-cut-notes will be needed once a first cut exists

## Output Format
Scene-by-scene breakdown document. Each scene: Scene number, Approximate running time, Action (what we see), Narration Cue, Interview Placement, B-roll Required. Followed by a Sequence Notes section flagging potential structural problems or missing material. Target length scales with sequence complexity — typically 400–700 words for a 4–6 minute sequence. Output ends with a "Next Step" note: which scene to verify material availability for first, whether to run commentary-writer to develop narration cues, and whether rough-cut-notes will be useful once an assembly cut exists.

## Quality Criteria
- [ ] Scenes are numbered and have approximate running times that total to the target sequence length
- [ ] Action descriptions are specific and visual — not "we learn about X" but "we see X doing Y in Z location"
- [ ] Narration cues are brief prompts, not finished narration — they indicate editorial function, not final script
- [ ] Interview placement identifies specific speakers and approximate content, not generic "interview here"
- [ ] Sequence Notes honestly flags missing material or structural risks
- [ ] Output includes at least one concrete next action the user can take immediately (confirm material availability, run commentary-writer for narration development, or prepare rough-cut-notes after the assembly cut)

## Example

### Input
Sequence: The opening sequence of a documentary about a fishing community's response to a dramatic decline in their catch over three years
Narrative function: Establish the community, the landscape, the way of life — and introduce the crisis without explaining it yet
Position: Film opening, before the title card
Target running time: 5–6 minutes
Available material: Observational footage of early-morning boat departure; harbor at dawn; boats returning with small catch; interview with veteran fisherman Elias Strand about what the sea used to be like; archive footage of the same harbor in the 1990s when the catch was abundant; underwater footage of fish schooling (2010, not current); community meeting footage (not for this sequence)
Tone: Contemplative, visually led

### Output

**Scene Breakdown — Opening Sequence**
*Documentary: Fishing Community / Declining Catch*
*Target: 5–6 minutes | Position: Pre-title*

---

**Scene 1 — Darkness before dawn**
*Approx. running time: 0:45*
*Action:* Black screen. The sound of water before the image. Slow fade up to: an exterior shot of the harbor in near-total darkness. A single light on one of the boats. The sounds of preparation — ropes, engines idling.
*Narration Cue:* No narration. Sound only.
*Interview Placement:* None.
*B-roll Required:* Confirm pre-dawn harbor footage exists and is usable in low light. If not, this scene may need to be replaced with a cut from darkness to dawn.

---

**Scene 2 — The departure**
*Approx. running time: 1:15*
*Action:* A fishing boat leaves the harbor. We follow it from the dock, then cut to on-board — the crew moving efficiently, doing a job they have done thousands of times. The harbor recedes. The open sea appears.
*Narration Cue:* No narration. Possibly a single title card over black before this scene: the town name and "Atlantic coast."
*Interview Placement:* None.
*B-roll Required:* On-board footage of crew during departure. Aerial or wide shot of boat leaving harbor if available — do not use drone footage if it disrupts the observational register.

---

**Scene 3 — The sea as it was**
*Approx. running time: 1:00*
*Action:* Archive footage: the harbor in the 1990s. Full boats. The same landscape, louder with life. Then: underwater footage from 2010 — a dense school of fish. Both sequences play without explanation.
*Narration Cue:* No narration. Let the contrast work visually.
*Interview Placement:* None.
*B-roll Required:* Archive footage as described. Confirm archive rights are cleared. Underwater footage: confirm year and species visible are relevant to the current story.

---

**Scene 4 — The return**
*Approx. running time: 1:15*
*Action:* The present-day boats returning to harbor. The catch is visible — or noticeably absent. We see the crew's faces as they dock. No one is laughing. The contrast with the archival abundance is felt, not stated.
*Narration Cue:* Single narration line over the dock unloading — approximately: "This year, they brought back less than a quarter of what the boats could carry." (To be finalized in narration draft — this is the first time a fact is stated.)
*Interview Placement:* None in this scene.
*B-roll Required:* Close-ups of the catch (or near-empty hold). Faces of the crew. Avoid melodrama — observe rather than editorialize.

---

**Scene 5 — Elias speaks for the first time**
*Approx. running time: 1:15*
*Action:* Elias Strand, veteran fisherman, at the harbor or on his boat. This is the first interview element in the film. He speaks, but not yet about what's wrong.
*Narration Cue:* Narration sets Elias up briefly before he speaks: approximately one sentence on who he is. Then out.
*Interview Placement:* Elias on what the sea used to feel like — his relationship to it, how long his family has fished. **Not yet** the decline. Save his account of the decline for later in the film. Use the lines where he speaks about the sea with love and memory.
*B-roll Required:* Observational footage of Elias at work, in context. His hands. The harbor behind him.

---

**Scene 6 — The title card**
*Approx. running time: 0:15*
*Action:* Elias's final words fade out over a wide shot of the harbor. Title card appears.
*Narration Cue:* None.
*Interview Placement:* None.
*B-roll Required:* A single compelling wide shot for the title hold — harbor, sea, or landscape.

---

**Sequence Notes**

- This sequence depends entirely on the contrast between archival abundance and present-day scarcity. If the archive footage (Scene 3) cannot be cleared or is visually poor, the sequence loses its central structural device. Establish archive availability before locking this structure.
- The opening (Scene 1) requires pre-dawn footage of sufficient quality. If unavailable, consider opening on Scene 2 and beginning in motion rather than stillness — acceptable alternative.
- Elias's interview placement (Scene 5) is intentionally restrained. Resist the temptation to have him explain the problem in the opening sequence. The explanation is not the opening's job.

## Known Limitations
- This breakdown is a structural plan, not a locked editorial sequence. It assumes that the raw material described actually contains usable moments matching each scene description — confirmation requires reviewing the footage.
- Running time estimates for observational sequences are approximate. Actual cut times will be determined by the editor based on available footage quality and pacing decisions.
- This skill works from written descriptions of footage, not from the footage itself. Moments that read well on paper sometimes don't exist in the material, and vice versa.

## Related Skills
- [commentary-writer](./commentary-writer.md)
- [narrator-voice-adapter](./narrator-voice-adapter.md)
- [rough-cut-notes](../post-production/rough-cut-notes.md)

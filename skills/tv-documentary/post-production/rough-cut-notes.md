---
name: rough-cut-notes
status: stable
category: tv-documentary
subcategory: post-production
version: 1.0
eval_score: 4.4
tags: [documentary, post-production, editing, notes, structure]
---

# Rough Cut Notes

## What This Skill Does
Produces structured editorial notes from a rough cut description, identifying structural, pacing, and narrative issues and recommending specific solutions.

## When To Use This Skill
- You have a rough cut and need a systematic editorial assessment before showing it to a broadcaster or executive producer
- You are a producer reviewing an editor's first cut and want structured notes to give back
- You are the editor and want a second perspective on structural problems you can feel but cannot yet diagnose
- A broadcaster has given you feedback that "something isn't working" and you want help identifying what

## What You Need To Provide
**Required:** A description of the rough cut: the sequence of scenes in order, approximate running time of each section, and what is in each section (interview subjects featured, what they say, observational footage, archival material, narration content)
**Optional:** The film's intended running time; the broadcaster's brief or commissioning pitch; any specific concerns you already have about the cut; what previous feedback has been given (from editor, director, or broadcaster)

## How Claude Approaches This
1. Maps the cut's structure: where are the act breaks, where does the narrative question open and where does it close, what is the shape of the film's journey
2. Identifies structural problems first: scenes in the wrong order, missing elements, overlong sections that slow the film's forward momentum, and undercooked sections that leave questions unanswered
3. Identifies character and narrative issues: are the subjects' arcs coherent across the cut, does the film's central argument land, are there contradictions in the editorial logic
4. Produces notes in priority order — structural issues first, then pacing, then language and detail — and pairs each note with a specific suggested solution
5. After the notes, provides a "Next Step" note: which single structural change will have the greatest impact if only one note is acted on, whether to schedule a director-editor session around the top note before the next cut, and the estimated time saving if the pacing notes are implemented

## Output Format
Tiered notes document. Sections: Structural Notes (things that affect the whole film), Sequence-Level Notes (specific scenes or sections), Pacing Notes (running time and energy issues), Narrative/Character Notes (story and subject issues), and Positive Observations (what is working). Each note: Issue Description | Impact | Suggested Fix. Notes are numbered for easy reference in conversation with an editor or director. Total length: 600–1000 words depending on cut complexity. Output ends with a "Next Step" note: the single highest-priority change to make before the next cut, the estimated runtime saving if pacing notes are followed, and whether a director-editor review session should be scheduled around the structural notes.

## Quality Criteria
- [ ] Structural notes distinguish between symptoms and causes — identifies why a section isn't working, not just that it doesn't work
- [ ] Every note is paired with a specific suggested fix — not "this section is slow" but "this section can lose 90 seconds by cutting X"
- [ ] Positive observations section is genuine — identifies real strengths, not generic encouragement
- [ ] Notes are in priority order, with the most significant structural issues first
- [ ] Language is direct and constructive — written to be shared with the editing team
- [ ] Output includes at least one concrete next action the user can take immediately (implement the top structural note, schedule a director-editor review, or estimate the trim needed to reach target runtime)

## Example

### Input
Rough cut description: A 74-minute rough cut (target 55 minutes) of a documentary about a community legal clinic that provides free immigration services. The film follows three clients — Miriam (asylum seeker from West Africa), Kwon (a young man navigating a visa appeal), and Claudia (long-time resident with suddenly threatened status) — and the two lawyers at the clinic, Sandra and Darius.

Sequence order and timings:
1. 0:00–7:00: Introduction to the clinic — observational footage of the waiting room, Sandra and Darius at work, brief narration on immigration numbers
2. 7:00–22:00: Miriam's backstory — extended interview, archival footage, narration
3. 22:00–30:00: Kwon's case introduced and developed — interview and courtroom observational footage
4. 30:00–40:00: Claudia's story — interview and her court hearing
5. 40:00–50:00: Return to Miriam — her court hearing and result
6. 50:00–58:00: Sandra and Darius — how the work affects them; their motivations
7. 58:00–68:00: Return to Kwon and Claudia — their outcomes; where they are now
8. 68:00–74:00: Closing reflections — all three clients and the lawyers

Director's existing concern: The film feels too long and the middle section loses momentum.

### Output

**Rough Cut Notes — Immigration Legal Clinic Documentary**
*Cut length: 74 minutes | Target: 55 minutes | Notes prepared: March 2026*

---

**Structural Notes**

**S1 — The film has four main characters but the structure treats them as three parallel stories rather than one.**
*Impact:* The film reads as three separate mini-documentaries housed inside one program. The lawyers (Sandra and Darius) do not become structurally significant until minute 50, by which point the viewer has been watching for almost an hour without fully understanding why we are at this clinic and not any other.
*Suggested fix:* Move the Sandra and Darius sequence (currently 50–58 minutes) to approximately minute 15 — after the clinic introduction but before the first client case is developed. Establishing the lawyers' motivations and the clinic's particular ethos early gives every subsequent client scene a human anchor. This also creates the structural shape of: institution → clients → institution again at close, which is much stronger than: institution introduction → three client stories → institution reflection.

**S2 — The 15-minute Miriam section (7:00–22:00) is structurally overweighted at the film's opening.**
*Impact:* Miriam's backstory is important and compelling, but 15 minutes of interview and archive before the film has established its legs means the viewer is in deep emotional debt before they understand the film's structure. This is why the middle section feels slow — the film spent its first act on depth rather than establishment.
*Suggested fix:* Reduce the initial Miriam section to 6–8 minutes (the essential backstory beats only), hold her most emotionally complex interview material for after her hearing result (currently at 40–50 minutes), and build Kwon and Claudia's introductions earlier. Distribute the emotional weight more evenly.

---

**Sequence-Level Notes**

**Seq1 — The waiting room footage (0:00–7:00) is the film's best observational material but is underused.**
*Impact:* The waiting room contains the film's argument in miniature — people from different countries, different circumstances, the same systemic vulnerability. It is currently used as ambient texture rather than narrative.
*Suggested fix:* One of the three clients should be introduced in the waiting room before we know who they are — a face in the crowd that becomes, 10 minutes later, the center of the film. This requires a small re-edit of the opening sequence.

**Seq2 — Kwon's courtroom footage (22:00–30:00) is the film's strongest observational sequence and is positioned too early.**
*Impact:* The courtroom footage has maximum power if the viewer is invested in Kwon — which requires more time with him in interview before his hearing is shown. Currently we watch the hearing before we know enough about him to care deeply.
*Suggested fix:* Extend Kwon's introductory interview by 3–4 minutes before the courtroom sequence, or move the courtroom sequence to later in his arc.

---

**Pacing Notes**

**P1 — The cut is 19 minutes over target. The following sections can absorb most of the trim without losing material content:**
- Miriam backstory section: approximately 6 minutes available (see S2 above)
- Claudia section (30:00–40:00): approximately 3 minutes; the interview contains repetition that plays as emphasis in a long cut but as padding at the target length
- Closing reflections (68:00–74:00): 2–3 minutes; some closing interview lines restate what the film has already shown

*Total recoverable: approximately 11–12 minutes, leaving 7–8 minutes of structural re-editing work to reach the target.*

---

**Narrative and Character Notes**

**N1 — Claudia's outcome is the most ambiguous of the three, which is an editorial strength, but it needs a clearer setup.**
Currently we do not fully understand what Claudia's threatened status means practically — what happens to her life if her case fails. Add one specific detail in her introduction (where she has lived, what she would lose) to give the ambiguity of her outcome its full weight.

---

**Positive Observations**

- The observational footage quality throughout is exceptional — the waiting room, the courtroom, and the clinic hallways all feel like real access rather than staged filming.
- Darius's interview material is unusually honest about the emotional cost of this work. His presence in the film elevates every scene he is in.
- Miriam's court result sequence (40–50 minutes) is currently the emotional peak of the film and earns that position. Whatever structural changes are made, protect this sequence.

## Known Limitations
- These notes are based entirely on the cut description provided, not on watching the actual footage. Some structural problems that are obvious on screen may not be apparent from a written description; equally, some pacing issues that read as problems may resolve differently when the actual footage is seen.
- Running time recommendations (trim suggestions) are based on the described content. Actual trimmable duration depends on the footage — if a section described as "repetitive" contains no clean cut points, trimming it will take editing work beyond simply removing material.
- This skill produces notes based on dramatic and narrative principles. Some editorial decisions are legitimate creative choices that these notes might flag as problems — the director and editor are the final authority on intent.

## Related Skills
- [scene-breakdown-writer](../scripting/scene-breakdown-writer.md)
- [commentary-writer](../scripting/commentary-writer.md)
- [subtitles-rewriter](./subtitles-rewriter.md)

---
name: script-notes-writer
status: stable
category: screenwriting
subcategory: revision
version: 1.0
eval_score: 4.4
tags: [screenwriting, revision, script-notes, feedback, development]
---

# Script Notes Writer

## What This Skill Does
Writes a detailed set of editorial script notes for a specific draft, identifying structural problems, character issues, and scene-level fixes in the format used by development executives and experienced script editors.

## When To Use This Skill
- A writer has completed a draft and needs editorial notes before sharing with producers or an agent
- You are a producer or development executive preparing notes for a writer in your development slate
- You are a script editor working with a writer on a funded project and need to formalize your reading notes
- A workshop or lab leader needs to produce consistent, structured notes for multiple participants

## What You Need To Provide
**Required:** Detailed act-by-act story breakdown including character arcs; title, format, draft number; the specific problems the writer or editor is most concerned about (even if vague — "Act 2 drags" is useful context)
**Optional:** The draft's stated goals ("this draft was supposed to fix the protagonist's passivity"); what the previous draft's problems were; whether the writer is early in development (broad structural notes) or late (fine-tuning notes); any scenes or elements the writer considers fixed and does not want notes on

## How Claude Approaches This
1. Identifies the draft's single biggest structural issue — the root problem that, if unaddressed, makes everything else provisional — and states it plainly at the top of the notes before any specific notes begin
2. Works through the script in three passes: structural (acts and turning points), character (arc, want/need, consistency, agency), and scene-level (specific scenes that are not working and why, with a suggested fix or reframe for each)
3. Balances problem identification with what is working — notes that identify only problems are less useful than notes that help a writer understand what to protect
4. Closes with a priority list: the three to five changes that would most improve the next draft, in order of impact

## Output Format
Four sections: **Root Issue** (1 short paragraph stating the central problem plainly), **Structural Notes** (3–6 numbered notes on acts and turning points), **Character Notes** (one short paragraph per major character, noting arc status and any consistency issues), **Scene Notes** (numbered, each citing the specific scene or sequence, the problem, and a suggested direction), **Priority List** (numbered, 3–5 items, ordered by impact). Total length: 700–1,000 words. Tone: collegial, direct, specific. Notes are addressed to the writer ("you" or "the writer") and assume the writer is capable and wants to improve the draft.

## Quality Criteria
- [ ] Root Issue is stated in the first paragraph and is a single identifiable problem — not a list of five things
- [ ] Every structural note cites a specific turning point, act break, or page range
- [ ] Scene Notes cite specific scenes by sequence or description, not just act number
- [ ] Each Scene Note includes both the problem and a suggested direction or reframe
- [ ] Priority List is in order of impact and the top item corresponds to the Root Issue
- [ ] At least one section ("What's Working") or equivalent explicit acknowledgment identifies what the draft has achieved

## Example

### Input
**Title:** FALLBACK POSITION
**Format:** Feature film, 104 pages
**Draft:** Second draft
**Genre:** Workplace drama / dark comedy
**Writer concern:** "Act 2 loses momentum and the protagonist, Bex, goes passive. Also not sure the ending works."
**Story breakdown:**
- Bex, 35, is a junior policy advisor at a government ministry. She discovers that the department's flagship climate initiative — the one she wrote the white paper for — is being quietly buried by her director, who is protecting a relationship with a fossil fuel lobbying group.
- Act 1: Bex presents the white paper, it is praised, a committee date is set. Then the date is moved. Then moved again.
- Act 2: She investigates the delays, discovers the lobbying connection, takes it to her senior colleague Rhys, who is sympathetic but tells her she has no evidence that would survive institutional scrutiny. She tries three different routes to get the information confirmed — a journalist contact, an FOI, an internal whistleblower form — and all three dead-end. She becomes increasingly paralyzed.
- Act 3: The night before the committee date (which has been rescheduled one final time), she sends the journalist the white paper itself — the version with internal annotations that she wasn't supposed to keep — and goes home. The committee date is cancelled the following morning. Six months later, a title card tells us the director resigned.
**Prior draft issues:** "First draft had Bex make a big speech at the committee hearing. Removed it because it felt too neat. Now the ending feels deflating."

### Output

**SCRIPT NOTES — FALLBACK POSITION (Second Draft)**

---

**Root Issue**

The draft's central problem is that Bex's agency has been structurally removed in an attempt to solve an earlier draft's over-resolution. In the first draft, the big speech gave her too much power; in this draft, the three dead-ending investigation routes in Act 2 leave her with none. The result is a second act in which a capable, principled character tries three things and fails three times without any sense of escalation or learning — and arrives at the film's climax by running out of options rather than making a choice. The ending doesn't feel deflating because it's quiet; it feels deflating because it doesn't feel earned. The fix is not to restore the speech. It's to give Bex one real decision to make in Act 2 that costs her something — and let the leaked white paper be the consequence of that decision, not a last resort.

---

**Structural Notes**

1. **Act One end (approximately p. 25):** The committee date being moved works as a first disturbance but it is too passive as an Act One break. Bex reacts to the delay rather than making a choice in response to it. Consider giving her one moment at the end of Act One where she decides to investigate rather than accept the explanation — this makes the Act Two inquiry her initiative, not her reaction.

2. **Midpoint (approximately p. 55):** Currently, the Midpoint is Rhys telling Bex she has no actionable evidence. This is a closed door, not a pivot. A Midpoint should reframe the question, not shut the investigation down. Consider rewriting the Rhys conversation so that he tells her something she didn't know — something that changes what she's looking for, even if it doesn't give her what she needs.

3. **Act Two investigation sequence (pp. 40–75):** The three dead-ends are structurally equivalent in shape (Bex tries, hits wall, sits at desk). They don't escalate. Each attempt should cost something incrementally — a relationship strained, a professional risk taken, something personal revealed — so that by the time Bex is out of official routes, the audience understands what she has already sacrificed.

4. **Act Three decision (p. 85):** Bex sending the annotated white paper is the right ending. The problem is the framing: it currently reads as a surrender (she sends it and goes home, exhausted) rather than a decision. The same action can read as a deliberate, costly choice if what precedes it is a scene in which she explicitly weighs what she's about to lose. Let the audience be inside the decision, not just witness the result.

5. **Title card ending:** The director's resignation revealed by title card is a common choice for procedural dramas and it works as a device, but at present it arrives before the audience has time to sit with what Bex's decision cost her personally. Consider whether there is a final scene — brief, one location — before the title card that shows where Bex is, not where the institution is.

---

**Character Notes**

**Bex:** Her intelligence and commitment are well-established in Act One and her dry internal monologue (rendered through her glances and timing) is the best thing in the script. Her passivity in Act Two is not a character problem — it's a structural one. She has been written into a position where all her options are closed before she can exercise judgment. The fix is structural, not character-based.

**Rhys:** Sympathetic-but-useless colleagues are a well-worn type and Rhys is currently filling the slot without adding to it. He is most interesting in the single moment where he hesitates before giving Bex the official line — suggest expanding that hesitation into a scene that earns his presence in the story. Does he know more than he says? If so, why doesn't he say it? If not, what is he protecting?

**The Director:** Offscreen for most of the film, which is an interesting choice that works if the audience understands what kind of person is making these decisions. At the moment the Director is functional (we understand what he's doing) but not legible (we don't understand how he sleeps). One scene — even a brief one in which he performs normalcy around the climate initiative in front of Bex — would give the film a sharper antagonist without needing to make him a villain.

---

**Scene Notes**

1. **The FOI sequence (pp. 60–64):** This scene is currently the weakest of the three dead-ends because it resolves entirely off-page. Bex applies, we cut, she receives the heavily redacted response. The comedy of the redactions is good but underdeveloped. If this scene is going to be in the film, commit to it — let it breathe, let Bex read it in real time, let us watch her figure out what the redactions confirm rather than what they reveal.

2. **The journalist meeting (p. 68):** This scene is doing two jobs — Bex tests the journalist's trustworthiness AND decides not to hand anything over — and the second decision is currently implicit. It should be explicit. We need to see Bex make the calculation about why she holds back, not just observe that she does.

3. **The evening before the leak (pp. 87–89):** Currently three pages of Bex at home, restless, at her laptop. This is the most important scene in the film — the moment she crosses from deliberating to deciding — and it needs a clearer dramatic beat. Consider introducing a specific interruption or trigger: a notification, a call, something from outside that tips the balance. Not to make the decision feel reactive, but to mark the moment it becomes irreversible.

---

**Priority List**

1. **Give Bex a genuine Act 2 decision that costs her something.** This is the root issue and everything else is downstream of it.
2. **Rewrite the Midpoint scene with Rhys so it pivots rather than closes.** She should leave that conversation with new information or a new angle, not just a door shut.
3. **Let the audience inside the decision in the evening-before-the-leak scene.** The leak needs to feel chosen, not inevitable.
4. **Differentiate the three investigation dead-ends so they escalate.** Each one should cost Bex something the previous one didn't.
5. **Add one brief scene of the Director performing normalcy.** The film needs a legible antagonist, not just a mechanism.

## Known Limitations
- Script notes are only as specific as the synopsis or breakdown provided — the skill cannot read a screenplay file and cannot evaluate scenes it has not been described; vague input ("the middle is slow") produces vague structural analysis
- The skill produces notes from a development perspective, prioritizing story mechanics and character function; writers working in highly experimental or non-narrative forms may find the notes framework misapplied to their work
- Notes identify problems and suggest directions but do not rewrite scenes; the suggested fixes are starting points for revision, not substitute pages

## Related Skills
- [coverage-report-writer](./coverage-report-writer.md)
- [beat-sheet-builder](../development/beat-sheet-builder.md)
- [dialogue-polisher](../scripting/dialogue-polisher.md)

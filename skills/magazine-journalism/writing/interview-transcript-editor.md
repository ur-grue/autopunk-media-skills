---
name: interview-transcript-editor
status: stable
category: magazine-journalism
subcategory: writing
version: 1.0
eval_score: 4.5
tags: [journalism, writing, transcript, interview, editing, Q&A]
---

# Interview Transcript Editor

## What This Skill Does
Cleans, tightens, and restructures a raw interview transcript for publication — removing false starts and filler, condensing repetition, reordering for narrative flow, and preserving the subject's authentic voice.

## When To Use This Skill
- You've conducted an interview and have a raw transcript that needs to be publication-ready
- You're producing a Q&A format for print or web and need to tighten a 60-minute conversation into a 1,500-word piece
- You want to restructure an interview so the most important material comes first without losing the subject's voice
- You're editing an interview conducted by someone else and need to standardize the editing approach

## What You Need To Provide
**Required:** The raw transcript or the section you want edited; the publication format (full Q&A, excerpts within a narrative piece, pull-quote selection, or summary with quotes); approximate target word count or space available.
**Optional:** The publication and its style; which sections or answers you consider essential (must-keep material); the subject's identity type (expert, public figure, affected individual, whistleblower — this affects how aggressively to edit); whether the subject has approval rights over the edited transcript.

## How Claude Approaches This
1. Reads the full transcript to identify the three to five most substantive answers — the moments where the subject says something irreducible — and treats these as the structural anchors. Everything else is assessed for whether it supports or duplicates these moments.
2. Edits for clarity and compression: removes filler words, verbal repetition, and false starts; tightens long answers to their essential content; resolves pronoun ambiguity and unclear references. Does not change the subject's meaning, vocabulary level, or word choices — only removes and condenses, never substitutes.
3. Proposes a running order for the Q&A if restructuring is requested — moves the most compelling exchange to the top rather than preserving chronological order, and sequences subsequent exchanges so each one adds a distinct dimension (not repeating or contradicting the previous).

## Output Format
Edited transcript in Q&A format with interviewer questions marked **Q:** and subject answers marked **A:**. A brief editorial notes section at the end flags: any passages where editing required an editorial judgment (paraphrase risk), any passages that were cut in full with one-sentence explanation, and any answers where the meaning felt unclear in the original and the edit made a specific choice. Target word count honored. No changes to the subject's word choices — only removal and compression.

## Quality Criteria
- [ ] Subject's vocabulary and characteristic expressions are preserved throughout
- [ ] Filler and false starts removed without altering the meaning of any answer
- [ ] No answer has been "improved" — words not spoken by the subject are not added
- [ ] Running order puts the most substantive exchange first (unless chronological order is specified)
- [ ] Editorial notes are honest about any judgment calls made during editing
- [ ] Output meets the requested word count (±10%)

## Example

### Input
**Raw transcript excerpt (1,050 words → target 480 words):**
**Format:** Q&A for publication
**Subject:** A materials scientist who developed a biodegradable packaging alternative to single-use plastic

---

**Q:** Can you describe what your material actually is? Like, how would you explain it to someone who doesn't have a science background?

**A:** Yeah, so, um, the — it's basically, at its core, it's a composite material. We're combining — we take plant-based fibers, so these are agricultural waste streams, things that would otherwise be composted or just discarded — and we're combining them with a biopolymer matrix. And the biopolymer we use is derived from, it's a bacterial fermentation process. So you grow specific bacteria, they produce this polymer as a byproduct, and you harvest that. And then when you combine those two things together in the right proportions, and there's a lot of work that went into figuring out what "the right proportions" are, you get a material that has — that has comparable mechanical properties to the plastics we're trying to replace, but that will fully degrade in a soil environment within, we're measuring 18 to 24 months, which compared to, you know, standard petroleum-based plastics, that's — that's a dramatic improvement.

**Q:** What's the thing that took the longest to figure out?

**A:** Oh, that's — the mechanical properties question was hard. Because there's this fundamental tension that we kept running into — the more degradable you make something, generally speaking, the less structurally stable it is under the conditions it needs to perform under. So if you're packaging food, you need moisture resistance, you need to handle some compressive load, you can't have it just softening in a humid environment. And making the material more moisture-resistant tends to mean making it less biodegradable. So it's — you're constantly pulling in opposite directions. We spent — I'd say two, two and a half years just on that one question, on the moisture barrier problem. And the solution we landed on was actually — it came from an unexpected place, it came from looking at how certain seed coatings in plants work, because they have this same challenge, right, they need to protect the seed until germination and then fully break down, and nature has a pretty elegant solution to that. So we borrowed from that.

**Q:** Are you at a stage where this is commercially viable?

**A:** We think so, yes. We've been — we've been working with three packaging manufacturers over the last year on pilot programs. And the early results are — they're encouraging. The cost per unit is still higher than conventional plastic, I'm not going to pretend otherwise, it's about 30 to 40% higher right now at current production volumes. But what we're seeing — and this is the part that matters for the commercial question — is that the cost differential narrows significantly at scale. So when we model this at the production volumes these manufacturers would need to fully transition, the gap closes to somewhere between 8 and 15%. Which is in a range that several brands we've talked to have said they can absorb, particularly given the regulatory environment around single-use plastics in a number of markets.

### Output

**Edited Transcript**

**Q:** How would you describe your material to someone without a science background?

**A:** At its core, it's a composite material. We take plant-based fibers — agricultural waste streams that would otherwise be discarded — and combine them with a biopolymer derived from a bacterial fermentation process. When you combine those two things in the right proportions, you get a material with mechanical properties comparable to the plastics we're trying to replace, but one that fully degrades in a soil environment within 18 to 24 months. Compared to standard petroleum-based plastics, that's a dramatic improvement.

**Q:** What took the longest to solve?

**A:** The mechanical properties question. There's a fundamental tension: the more degradable you make something, generally, the less structurally stable it is under the conditions it needs to perform in. If you're packaging food, you need moisture resistance — and making a material more moisture-resistant tends to make it less biodegradable. You're constantly pulling in opposite directions. We spent two and a half years on the moisture barrier problem alone. The solution came from an unexpected place — we looked at how certain seed coatings in plants work. They have the same challenge: protect the seed until germination, then fully break down. Nature has a pretty elegant solution to that. We borrowed from it.

**Q:** Is this commercially viable?

**A:** We think so. We've been working with three packaging manufacturers over the last year on pilot programs. The cost per unit is still higher than conventional plastic — about 30 to 40% higher at current production volumes, I'm not going to pretend otherwise. But the cost differential narrows significantly at scale. When we model this at the volumes these manufacturers would need to fully transition, the gap closes to 8 to 15%. Several brands we've talked to have said they can absorb that range, particularly given the regulatory environment around single-use plastics in a number of markets.

---

**Editorial Notes**

- *Answer 1:* "the right proportions" parenthetical ("there's a lot of work that went into figuring out what 'the right proportions' are") removed — adds length without adding information.
- *Answer 2:* Verbal repetition of "you're constantly pulling in opposite directions" condensed. No word substitution — compression only.
- *Answer 3:* Opening was restructured from "We've been — we've been working with" to remove the stutter; meaning unchanged.
- *No material was cut in full.* All three answers address distinct points and are retained.

---

## Known Limitations
- This skill edits for clarity and compression only — it does not fact-check claims made by the subject, verify statistics, or flag potentially defamatory statements. Those are editorial responsibilities that remain with the journalist and publication.
- For subjects with legal protection considerations (whistleblowers, anonymous sources, people speaking about ongoing legal matters), editorial choices about what to remove can have legal implications. Use this skill for drafting, but review the final transcript with a legal or editorial supervisor before publication.
- If the subject has transcript approval rights, the edited version is a working draft — all editorial notes should be forwarded to the subject with the edited version so they can understand and respond to the changes made.

## Related Skills
- [reportage-structure](../writing/reportage-structure.md)
- [copy-editor-assistant](../editing/copy-editor-assistant.md)
- [fact-check-prompt](../editing/fact-check-prompt.md)

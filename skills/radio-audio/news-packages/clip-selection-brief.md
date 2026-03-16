---
name: clip-selection-brief
status: stable
category: radio-audio
subcategory: news-packages
version: 1.0
eval_score: 4.3
tags: [radio, news, clips, actuality, selection, edit, transcript]
---

# Clip Selection Brief

## What This Skill Does
Analyses an interview transcript and recommends the best actuality clips to use in a radio news package, with suggested in-points, out-points, and editorial justification for each selection.

## When To Use This Skill
- You have a long interview transcript and need to identify the 2–4 strongest clips for a news package
- A reporter is in the edit and needs to decide quickly which sections of an interview to use
- An editor wants a second opinion on clip selection before a package goes to air
- You need to match clip choices to a specific editorial angle or programme tone

## What You Need To Provide
**Required:** The interview transcript (or a detailed paraphrase of key sections), the story angle or package focus, and the target number of clips (typically 2–4).
**Optional:** Total available package duration (helps prioritise shorter vs longer clips), whether the clip is for a bulletin package or a longer feature, any sections the reporter has already flagged as likely clips, and any sections that must be excluded for legal or editorial reasons.

## How Claude Approaches This
1. Reads the transcript to map its structure: where does the speaker state the news angle, where do they express emotion or personal stakes, where do they deflect or reveal, where is the language most vivid and natural
2. Assesses each candidate passage against four criteria: news value (does it add information or perspective not covered elsewhere?), audio quality potential (is the spoken language clean, natural, and free of filler that would distort under editing?), edit-ability (does it have clear natural in and out points?), and uniqueness (does it say something only this speaker can say?)
3. Recommends 2–5 clips in priority order, each with a verbatim in-cue and out-cue, an estimated duration, a one-sentence editorial justification, and a note on any editing risk (e.g. a long self-correction before the key phrase, a technical term that needs a brief explanation in the surrounding track)

## Output Format
A clip selection brief with a short header (story, speaker, package angle), followed by numbered clip recommendations. Each recommendation includes: CLIP number, PRIORITY (primary/secondary), IN-CUE (first 4–6 words, verbatim), OUT-CUE (last 4–6 words, verbatim), ESTIMATED DURATION, EDITORIAL JUSTIFICATION (1–2 sentences), and any EDIT NOTE. A brief note at the end suggests how the clips could be sequenced in the package. Total document: 300–500 words.

## Quality Criteria
- [ ] Primary clip recommendation directly addresses the news angle, not just the most dramatic moment
- [ ] All in-cues and out-cues are verbatim from the transcript
- [ ] Editorial justification explains what the clip adds — not what it says, but why it earns its place
- [ ] Edit notes identify genuine audio or content risks, not just preferences
- [ ] Clip sequence recommendation shows an understanding of narrative — not simply "most important first"
- [ ] Recommended clips do not overlap or repeat the same point

## Example

### Input
Story angle: A major supermarket chain is trialling a four-day working week for distribution centre staff. The trial has been running for three months. The package will focus on whether it is working.
Speaker: Workforce manager at the distribution centre, Sandra Velez
Package target: 1:45 bulletin package, needs 2–3 clips

Transcript excerpt (relevant sections):
[A] "So when we first announced it, a lot of the team leads were... they were sceptical. Very sceptical. They thought we'd end up doing five days' work in four. And honestly? For the first three weeks, some of them were right." (22 secs)
[B] "The productivity data after week six was the turning point. Errors were down. Sick days were down. And people were actually — they were arriving on Monday morning ready to work. You could feel the difference." (20 secs)
[C] "I can't give you the exact figures because they're commercially sensitive. But what I can tell you is that the board has looked at this data, and nobody in that room is talking about going back to five days." (18 secs)
[D] "Look, it's not magic. Some roles just don't fit into a four-day pattern. We still have weekend staff. We still have cover arrangements. It's not like we've just... removed a day. We've compressed and reorganised." (19 secs)
[E] "My own life is... it's genuinely different. I coach my daughter's football on Fridays now. That sounds small, but it's not small." (12 secs)

### Output

---
CLIP SELECTION BRIEF
Story: Four-Day Week Trial — Distribution Centre
Speaker: Sandra Velez, Workforce Manager
Package angle: Is it working?
Package duration: 1:45 | Clips needed: 2–3

---

CLIP 1 — PRIMARY
IN-CUE: "The productivity data after week six..."
OUT-CUE: "...You could feel the difference."
ESTIMATED DURATION: 0:20
JUSTIFICATION: This is the central news claim — the hard evidence that it is working. It moves from data (credible) to human perception ("you could feel the difference"), which provides both rigour and texture. Essential clip.
EDIT NOTE: None — the clip is clean with a natural start and end.

---

CLIP 2 — PRIMARY
IN-CUE: "I can't give you the exact figures..."
OUT-CUE: "...nobody in that room is talking about going back to five days."
ESTIMATED DURATION: 0:18
JUSTIFICATION: The refusal to give figures followed immediately by the significance of what those figures mean is a strong editorial moment — the speaker reveals more by hedging than by disclosing. Out-cue is a quotable and memorable close.
EDIT NOTE: The phrase "commercially sensitive" will need a brief track note before or after the clip to prevent it sounding evasive without context.

---

CLIP 3 — SECONDARY (use if duration permits)
IN-CUE: "So when we first announced it..."
OUT-CUE: "...for the first three weeks, some of them were right."
ESTIMATED DURATION: 0:22
JUSTIFICATION: Provides context and narrative honesty — she admits the sceptics had a point initially. Useful as an opening clip because it introduces tension before the turn to evidence (Clip 1).
EDIT NOTE: Begins with a filler "So" — can be edited out cleanly if the word sits at a natural breath. Check audio before committing.

---

CLIPS NOT RECOMMENDED:
[D] — Accurate, but defensive. Contains no new information and would require track explanation. Risk of softening the package's positive conclusion.
[E] — Warm and human, but personal colour; better suited to a feature than a bulletin package. Use only if expanding to a longer format.

---

SUGGESTED SEQUENCE:
Open with CLIP 3 (sets up the scepticism), then CLIP 1 (the pivot to evidence), then CLIP 2 (the conclusion the board drew). This gives the package a natural arc: doubt → data → resolution.

## Known Limitations
- This skill works from transcripts, not from the audio itself — it cannot hear delivery, tone, or hesitation patterns that affect whether a clip works on air
- Duration estimates are based on typical speaking rates; the reporter should time actual audio before committing to a clip
- Cannot account for legal or ethical constraints on specific quotes unless those constraints are flagged in the input
- For political or accountability interviews, clip selection may require editorial sign-off beyond what this brief can provide — always review with an editor before broadcast

## Related Skills
- [package-script-writer](./package-script-writer.md)
- [two-way-brief-writer](./two-way-brief-writer.md)
- [interview-cue-sheet-writer](../scripting/interview-cue-sheet-writer.md)

---
name: transcript-timecoder
status: stable
category: tv-documentary
subcategory: post-production
version: 1.0
eval_score: 4.39
tags: [documentary, post-production, transcript, timecodes, editing, logging]
---

# Transcript Timecoder

## What This Skill Does
Adds broadcast-standard timecodes to a plain transcript at regular intervals or at speaker changes, producing a timecoded transcript formatted for use in documentary editing, paper edits, and compliance delivery.

## When To Use This Skill
- You have a plain-text transcript from an auto-transcription service (or a manual transcription) and need to add timecodes for editorial use
- You are preparing a paper edit and need timecoded references so the editor can locate selects in the footage
- You need to convert an un-timed transcript into a format suitable for broadcaster delivery or compliance documentation
- You are logging rushes and want a clean timecoded transcript to work from during the edit

## What You Need To Provide
**Required:**
- The transcript text (full or excerpt)
- The starting timecode for this transcript (e.g., "01:00:00:00" or "00:00:00:00" — the point at which the recording begins on the source media)
- Timecode interval preference: at every speaker change, at fixed intervals (e.g., every 30 seconds, every minute), or both

**Optional:**
- Speaker names or labels (if the transcript does not already identify speakers)
- The approximate total duration of the recorded material (helps calibrate timecode placement accuracy)
- Frame rate: 25fps (PAL/UK/EU standard), 29.97fps (NTSC/US), or 24fps (cinema). Defaults to 25fps if not specified.
- Whether the source uses drop-frame or non-drop-frame timecode (US productions)
- Any known timecode jumps or discontinuities in the source media
- Whether you need timecodes in HH:MM:SS:FF format (broadcast) or HH:MM:SS format (simplified)

## How Claude Approaches This
1. **Analyses the transcript structure.** Identifies speaker changes, paragraph breaks, natural pauses (indicated by ellipses, dashes, or "[pause]" markers), and approximate word count per section. Uses average speech rate (~150 words per minute for interview speech, ~130 for considered/emotional speech, ~170 for fast conversational speech) to estimate elapsed time from the starting timecode.

2. **Inserts timecodes at the specified intervals.** If the user requests speaker-change timecodes, places a timecode at every speaker transition. If fixed-interval timecodes are requested, inserts them at the specified time gap (e.g., every 30 seconds), splitting the transcript text at the nearest sentence boundary to avoid mid-word breaks. If both are requested, combines them — speaker changes always get a timecode, and fixed-interval timecodes are added within long single-speaker passages.

3. **Formats timecodes to broadcast standard.** Uses HH:MM:SS:FF format (where FF = frames) at the specified frame rate. For 25fps: frames run 00–24. For 29.97fps drop-frame: uses semicolons (HH:MM:SS;FF) as per SMPTE convention. Timecodes are placed on their own line above the corresponding text, or inline at the start of the text block, depending on the user's formatting preference (defaults to own-line placement).

4. **Estimates rather than fabricates.** Every timecode is clearly marked as an estimate based on speech-rate calculation from the transcript text. The skill does not have access to the actual audio/video file — it cannot provide frame-accurate timecodes. It provides working references that are typically accurate to within 5–15 seconds per 10 minutes of material, which is sufficient for paper edits and rough logging but not for final conforming.

5. **Outputs a clean, production-ready document.** The final transcript is formatted for immediate use: clear speaker labels, consistent timecode placement, no extraneous formatting. Includes a header noting the source, start timecode, frame rate, and a disclaimer that timecodes are estimated.

## Output Format
Timecoded transcript document. Header block with: source description, start TC, frame rate, and estimation disclaimer. Body: timecodes on their own line (bold or bracketed) followed by speaker label and text. Speaker labels are consistent throughout (UPPERCASE or as provided by user). Paragraphs break at speaker changes and at timecode intervals. No line exceeds a reasonable reading width. For a 30-minute interview, expect approximately 30–60 timecode markers depending on interval setting.

```
TIMECODED TRANSCRIPT
Source: [Description]
Start TC: [HH:MM:SS:FF] | Frame rate: [25fps]
Note: Timecodes are estimated from speech rate and transcript text.
Accuracy: ±5–15 seconds per 10 minutes. Verify against source media.

---

[HH:MM:SS:FF]
SPEAKER NAME:
Transcript text for this section...

[HH:MM:SS:FF]
SPEAKER NAME:
Transcript text continues...
```

## Quality Criteria
- [ ] Every timecode is in the correct format for the specified frame rate (FF values within valid range)
- [ ] Timecodes progress sequentially — no timecode is earlier than the one before it
- [ ] Speaker labels are consistent throughout the document (same name format, same casing)
- [ ] Timecodes do not split mid-sentence — they fall at natural language boundaries
- [ ] The estimation disclaimer is clearly present in the header
- [ ] The interval between timecodes matches the user's specification (within the constraints of natural speech breaks)
- [ ] The total elapsed time from first to last timecode is plausible for the amount of transcript text
- [ ] Output is clean enough to hand to an editor or include in a broadcaster delivery package without reformatting

## Example

### Input
**Transcript:**

Maria Castellano: I grew up on this river. My grandfather fished here, my mother swam here every summer, and I learned to row here when I was six. It was the centre of everything.

Interviewer: And when did that start to change?

Maria Castellano: The factory opened in eighty-nine. At first nobody thought much of it. Jobs, you know? Everyone was glad. But within a couple of years the fish started dying. You could smell it. The water turned this sort of grey-green colour and my mother said, don't you dare go near that river. And we didn't. Nobody did. A whole generation of kids in this town grew up without ever touching the water.

Interviewer: Has anything improved since the cleanup programme began?

Maria Castellano: On paper, yes. The readings are better. They tell us it's safe now. But trust doesn't come back with a government report. I still won't eat a fish from that river. My daughter has never swum in it. Maybe her children will, I don't know. But for my generation — that river is gone. Even though it's still there.

**Start timecode:** 01:03:22:00
**Frame rate:** 25fps
**Interval:** At every speaker change

### Output

**TIMECODED TRANSCRIPT**
Source: Interview — Maria Castellano
Start TC: 01:03:22:00 | Frame rate: 25fps
Note: Timecodes are estimated from speech rate and transcript text. Accuracy: ±5–15 seconds per 10 minutes. Verify against source media.

---

[01:03:22:00]
MARIA CASTELLANO:
I grew up on this river. My grandfather fished here, my mother swam here every summer, and I learned to row here when I was six. It was the centre of everything.

[01:03:36:00]
INTERVIEWER:
And when did that start to change?

[01:03:39:00]
MARIA CASTELLANO:
The factory opened in eighty-nine. At first nobody thought much of it. Jobs, you know? Everyone was glad. But within a couple of years the fish started dying. You could smell it. The water turned this sort of grey-green colour and my mother said, don't you dare go near that river. And we didn't. Nobody did. A whole generation of kids in this town grew up without ever touching the water.

[01:04:24:00]
INTERVIEWER:
Has anything improved since the cleanup programme began?

[01:04:28:00]
MARIA CASTELLANO:
On paper, yes. The readings are better. They tell us it's safe now. But trust doesn't come back with a government report. I still won't eat a fish from that river. My daughter has never swum in it. Maybe her children will, I don't know. But for my generation — that river is gone. Even though it's still there.

[01:04:58:00]
— END OF EXCERPT —

---

## Known Limitations
- This skill estimates timecodes from speech rate and transcript word count. It does not have access to the audio or video file and cannot provide frame-accurate timecodes. For final conforming, subtitling, or legal compliance, timecodes must be verified against the source media in an NLE (Avid, Premiere, Resolve, etc.).
- Speech rate varies significantly between speakers, emotional states, and languages. The estimates are calibrated for English-language documentary interviews at a moderate pace. Fast-talking speakers, speakers using a second language, or passages with long pauses will cause drift. The longer the transcript, the greater the potential cumulative error.
- The skill cannot detect or account for timecode breaks, camera stops/starts, or multi-camera shoots where sources have different timecodes. If the source media has discontinuous timecodes, provide the break points so the skill can reset accordingly.

## Related Skills
- [rough-cut-notes](rough-cut-notes.md) — generate editorial notes from the timecoded transcript for the editor
- [subtitles-rewriter](subtitles-rewriter.md) — rewrite or clean up subtitle text that builds on transcript work
- [scene-breakdown-writer](../scripting/scene-breakdown-writer.md) — use timecoded transcripts to plan the scene structure

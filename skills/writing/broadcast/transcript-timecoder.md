---
name: transcript-timecoder
status: beta
category: writing
subcategory: broadcast
version: 1.0
eval_score: null
tags: [transcript, timecode, broadcast, editing, post-production]
---

# Transcript Timecoder

## What This Skill Does
Inserts [HH:MM:SS] timecodes into a raw transcript at user-specified intervals or cue points, so editors and producers can locate any line of dialogue instantly in the timeline.

## When To Use This Skill
- You have a raw interview or programme transcript with no timecodes and need to sync it to a video timeline
- An editor has asked for a timecoded script before the offline edit begins
- You are logging rushes and need a readable document that maps words to tape positions
- A subtitler or translator needs timecode anchors before breaking the text into caption blocks

## What You Need To Provide
**Required:**
- The full transcript text (plain paragraphs or speaker-labelled lines)
- Your timing method — choose one:
  - **Interval:** "Add a timecode every 30 seconds, starting at 00:00:00"
  - **Manual cues:** A list of known timestamps paired with a word or speaker cue at that moment (e.g., "00:02:14 — INTERVIEWER: So when did you arrive?")

**Optional:**
- Programme start timecode if it is not 00:00:00 (e.g., the tape starts at 01:00:00:00)
- Speaker labels if they are not already in the transcript
- Whether timecodes should appear inline (mid-paragraph) or on their own line above the relevant passage

## How Claude Approaches This
1. Reads the full transcript and identifies natural speech boundaries — sentence ends, speaker turns, and paragraph breaks — to find the best insertion points near each target time
2. Calculates the position of each timecode by distributing the requested interval evenly across the text, or by anchoring to the manual cues provided and interpolating between them
3. Inserts each timecode at the nearest clean break (never mid-sentence) and formats it consistently throughout the document, preserving all original speaker labels and punctuation

## Output Format
- Timecodes in square brackets: `[00:04:32]`
- Each timecode appears on its own line, flush left, immediately before the passage it marks
- Speaker labels and original paragraph formatting are preserved exactly
- No commentary, notes, or changes to the transcript wording — only timecodes are added
- Length equals the original transcript length plus the timecode lines

## Quality Criteria
- [ ] Every timecode follows HH:MM:SS format with no variation
- [ ] No timecode is inserted mid-sentence — always at a clean speech boundary
- [ ] Timecodes are in strict ascending order with no duplicates
- [ ] All original text, speaker labels, and punctuation are unchanged
- [ ] The interval between consecutive timecodes is consistent (within ±5 seconds of the target interval)

## Example

### Input
**Timing method:** Add a timecode every 45 seconds, starting at 00:00:00.

**Transcript:**

PRESENTER: When the factory closed, three thousand people lost their jobs overnight. For the workers who had spent their careers there, it was more than a redundancy — it was the end of a way of life.

MARTA KOWALSKA: I started on the floor when I was nineteen. My mother worked there before me. When they told us, I thought it was a joke. I actually laughed. Then I saw the manager's face and I stopped laughing.

PRESENTER: The closure was announced on a Tuesday in November. By Friday, the gates were padlocked. The company issued a two-paragraph statement and declined all interview requests. Local councillors called an emergency meeting, but there was nothing they could do. The decision had been made at a head office four hundred miles away.

JANUSZ BRYK: Nobody told us it was coming. Not a word. We had a union meeting the week before — productivity was up, orders were healthy. And then Tuesday morning, a letter in the post.

PRESENTER: Marta and Janusz are two of the eleven hundred workers who have still not found stable employment two years on. The regional jobs programme promised to retrain workers within six months. For most, that promise remains unfulfilled.

### Output

[00:00:00]
PRESENTER: When the factory closed, three thousand people lost their jobs overnight. For the workers who had spent their careers there, it was more than a redundancy — it was the end of a way of life.

MARTA KOWALSKA: I started on the floor when I was nineteen. My mother worked there before me. When they told us, I thought it was a joke. I actually laughed. Then I saw the manager's face and I stopped laughing.

[00:00:45]
PRESENTER: The closure was announced on a Tuesday in November. By Friday, the gates were padlocked. The company issued a two-paragraph statement and declined all interview requests. Local councillors called an emergency meeting, but there was nothing they could do. The decision had been made at a head office four hundred miles away.

JANUSZ BRYK: Nobody told us it was coming. Not a word. We had a union meeting the week before — productivity was up, orders were healthy. And then Tuesday morning, a letter in the post.

[00:01:30]
PRESENTER: Marta and Janusz are two of the eleven hundred workers who have still not found stable employment two years on. The regional jobs programme promised to retrain workers within six months. For most, that promise remains unfulfilled.

## Known Limitations
- Claude cannot read actual video or audio files — timecodes are calculated from the text length and your stated interval, not from real speech speed. If speakers talk significantly faster or slower than average, timecodes will drift. Use manual cues for precision work.
- If you provide manual cues that are far apart (more than 3–4 minutes), the interpolated timecodes between them may be off by 10–20 seconds. Provide more anchor points for tighter accuracy.
- Drop-frame timecode (used in some broadcast standards) is not supported — output is always non-drop-frame HH:MM:SS.

## Related Skills
- [voice-over-script-writer](voice-over-script-writer.md)
- [subtitles-rewriter](../../tv-documentary/post-production/subtitles-rewriter.md)

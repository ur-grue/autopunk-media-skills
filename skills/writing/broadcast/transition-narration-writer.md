---
name: transition-narration-writer
status: beta
category: writing
subcategory: broadcast
version: 1.0
eval_score: null
tags: [narration, transitions, broadcast, scripting, documentary, tv]
---

# Transition Narration Writer

## What This Skill Does
Writes short presenter or narrator lines that bridge two programme segments smoothly, carrying the audience from one topic, location, or interview to the next without jarring cuts.

## When To Use This Skill
- You have a rough cut where two sequences sit back-to-back with no connecting narration and the join feels abrupt
- You need a line to move from an interview answer to a new scene or location
- A segment has ended on a strong statement and you want a narration bridge before the next subject begins
- You are scripting a documentary or news feature and need to signal a shift in time, place, or theme

## What You Need To Provide
**Required:**
- A brief description of the segment that is ending (topic, tone, last line of dialogue or action)
- A brief description of the segment that is beginning (topic, location, who appears)
- The overall tone of the programme (e.g., measured and serious, warm and observational, urgent and investigative)

**Optional:**
- Programme style or presenter voice (e.g., "first person, conversational" or "third-person, authoritative")
- A specific idea or fact you want the transition to introduce or plant
- The approximate word count or screen time (e.g., "10–15 words, about 6 seconds of narration")
- How many alternatives you want (default: 3)

## How Claude Approaches This
1. Identifies the emotional and thematic note on which the outgoing segment ends — whether it is a question left open, a conclusion reached, or a moment of tension — and uses that as the launch point for the bridge
2. Reads the incoming segment's opening to find a logical or emotional link: a contrast, a continuation, a cause-and-effect, or a geographic shift
3. Writes transition lines that are short enough to feel light on screen (typically 15–25 words), end with forward momentum rather than a full stop, and avoid clichéd connective phrases such as "Meanwhile..." or "But that's not all..."

## Output Format
- 3 alternative transition lines by default (more if requested)
- Each option is numbered and followed by a bracketed note explaining the linking strategy used (e.g., [contrast], [cause and effect], [geographic pivot])
- Lines are written in plain prose — no action directions, no timecodes
- Length per line: 10–30 words (approximately 5–15 seconds of narration at broadcast pace)
- Tone matches the programme register provided

## Quality Criteria
- [ ] Each transition lands on a word or image that belongs to the incoming segment, not the outgoing one
- [ ] No transition uses a cliché opener ("Meanwhile", "But", "However", "Turning now to")
- [ ] Each line sounds natural when read aloud — no clause that forces an awkward breath
- [ ] The linking logic is clear and does not require the audience to make an unsupported inferential leap
- [ ] All three alternatives use a different structural approach (contrast, continuation, pivot, etc.)

## Example

### Input
**Outgoing segment:** A factory worker describes being made redundant after 22 years. The segment ends on her line: "I walked out of those gates and I didn't look back. I couldn't."

**Incoming segment:** Cut to a retraining centre in the same town. A job adviser explains the scale of the redundancies and the pressure on the regional support system.

**Programme tone:** Measured, factual, sympathetic — a current-affairs documentary, third-person narration.

**Length:** Around 15–20 words each.

### Output

1. "For thousands of workers in this region, the question now is not what was lost — but what comes next."
[contrast — pivots from personal loss to collective forward pressure; leads naturally into the retraining centre]

2. "She was one of more than three thousand to leave those gates that week. Most of them ended up here."
[continuation — extends her story outward; "here" lands on the first shot of the retraining centre]

3. "The gates she walked away from closed permanently within the month. The building behind me opened six weeks later."
[geographic pivot — uses physical locations to link the two spaces; works well if the presenter is on camera at the centre]

## Known Limitations
- Transitions work best when the outgoing and incoming segments share at least one connecting thread (place, theme, or person). If the two segments are entirely unrelated in subject, Claude will flag this and suggest a harder structural break instead.
- Claude cannot hear or view the actual cut — if the outgoing segment ends on an image rather than dialogue, describe that image in your input for a more precise bridge.
- Political, legal, or highly contested subject matter may require a lawyer or editorial adviser to approve the framing of any narration line before broadcast.

## Related Skills
- [voice-over-script-writer](voice-over-script-writer.md)
- [commentary-writer](../../tv-documentary/scripting/commentary-writer.md)
- [narrator-voice-adapter](../../tv-documentary/scripting/narrator-voice-adapter.md)

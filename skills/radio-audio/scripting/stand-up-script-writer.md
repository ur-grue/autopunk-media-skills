---
name: stand-up-script-writer
status: stable
category: radio-audio
subcategory: scripting
version: 1.0
eval_score: 4.42
tags: [broadcast, scripting, stand-up, reporter, news, piece-to-camera, radio, field-reporting]
---

# Stand-Up Script Writer

## What This Skill Does
Writes a reporter stand-up script — a piece to camera or piece to microphone delivered on location — with positioning notes, delivery guidance, and integration cues for the surrounding package, ready for a broadcast journalist to rehearse and record.

## When To Use This Skill
- You are filing a news package or documentary insert and need a stand-up to bridge two sections, provide context, or deliver a closing summary on location
- You have the facts but are struggling to find the right words for a concise, authoritative on-location delivery
- You need to write a stand-up that adds something the footage alone cannot — context, analysis, or a sense of place — rather than simply repeating what the viewer or listener has already seen or heard
- You are mentoring a junior reporter and want to provide them with a well-structured stand-up script to study or adapt

## What You Need To Provide
**Required:**
- The story: what is the news, what has happened, what is the context (in as much detail as you have)
- Where the stand-up will be recorded (location description — this affects the script because a good stand-up connects to its surroundings)
- The stand-up's function within the package: bridge (connecting two sections), context (adding information not in the interviews), sign-off (closing summary with reporter name and outlet), or opening (establishing the scene)

**Optional:**
- Medium: television (piece to camera) or radio/audio (piece to microphone)
- Target duration: 15, 20, 30, or 45 seconds (defaults to 20 seconds if not specified)
- Tone: hard news, feature, investigative, or live-to-air
- What comes before and after the stand-up in the package (interview clip, actuality, narration)
- Reporter name and outlet (for sign-off)
- Any specific fact, figure, or detail you want included
- Whether the reporter will be walking, gesturing, or demonstrating something (TV only — affects script structure)

## How Claude Approaches This
1. **Determines what the stand-up must do that nothing else in the package can.** A stand-up is the most expensive sentence in broadcast journalism — the reporter is on camera or identifiably present, using valuable airtime. The script must justify that presence: it adds analysis the interviews cannot provide, it connects the location to the story in a way footage alone does not, or it delivers a summary that lands harder because the reporter is standing where the story happened. Claude does not write stand-ups that merely restate facts already covered elsewhere in the package.

2. **Writes to the location.** The best broadcast stand-ups are inseparable from where they are recorded. If the reporter is standing outside a courthouse, the script references what happened inside. If the reporter is at a flood-damaged bridge, the script connects the physical environment to the story's meaning. Claude uses the location description to anchor the language to a specific place, not to generic news copy.

3. **Matches the word count to the target duration.** Broadcast stand-ups follow strict timing: approximately 3 words per second (180 words per minute) for a measured delivery, slightly faster for hard news. A 20-second stand-up is 55–65 words. A 30-second stand-up is 80–95 words. Claude writes to these counts precisely — every word earns its place.

4. **Structures for spoken delivery.** Short sentences. Active voice. No subordinate clauses that require the listener to hold three ideas in memory before the verb arrives. The script is written to be spoken aloud, not read — it follows the cadence of natural authoritative speech. Where a sentence would be hard to deliver in a single breath, it is split.

5. **Adds production notes.** For TV stand-ups: suggests positioning relative to the location background, any movement (walk-and-talk, stop-and-deliver), and where to look. For radio: suggests ambient sound that should be audible underneath, and whether the delivery should be conversational or formal. Notes where the stand-up should cut to/from in the package edit.

## Output Format
The stand-up script text, clearly labelled with the function (bridge / context / sign-off / opening). Word count and estimated duration noted. Followed by a "Delivery & Production Notes" section (3–4 bullets) covering positioning, movement, ambient sound, and edit points. For TV, includes a [VISUAL] note describing the ideal framing. Total output is short — the script itself is 50–100 words; the notes add another 50–80 words. No padding, no preamble.

```
STAND-UP — [Function: Bridge / Context / Sign-off / Opening]
Duration: ~[XX] seconds | Word count: [XX]
Location: [Description]

---

[SCRIPT TEXT]

---

DELIVERY & PRODUCTION NOTES
- [Note 1]
- [Note 2]
- [Note 3]
```

## Quality Criteria
- [ ] The stand-up adds something the rest of the package cannot — context, analysis, location connection, or authority — not just a restatement of facts
- [ ] Word count matches the target duration at ~3 words per second
- [ ] Every sentence can be spoken in a single breath without losing clarity
- [ ] The script connects to the physical location — it would feel wrong if delivered from a studio
- [ ] Tone matches the story: hard news is crisp and factual, feature is more reflective, investigative carries weight
- [ ] Sign-off includes reporter name and outlet if provided
- [ ] Production/delivery notes are specific and useful — not generic ("stand in front of building")
- [ ] The stand-up has a clear function within the package structure and would cut cleanly from the preceding element

## Example

### Input
**Story:** A regional water authority has announced that three towns will face hosepipe bans starting next week, despite heavy rainfall last month. The authority says reservoir levels remain critically low because the rain fell too fast to be captured — it ran off saturated ground into rivers and out to sea. Residents are frustrated; local politicians are calling for an inquiry into the authority's infrastructure investment over the past decade.
**Location:** Standing beside the Greendale Reservoir, which is visibly low — the waterline has dropped several metres, exposing a ring of dried mud and rock around the edge.
**Function:** Bridge — connects an interview with a water authority spokesperson (defending the decision) to an interview with a local resident (angry about the ban).
**Medium:** Television
**Duration:** 20 seconds
**Tone:** Hard news
**Reporter:** Clara Mwangi, Midlands Regional News

### Output

**STAND-UP — Bridge**
Duration: ~20 seconds | Word count: 58
Location: Greendale Reservoir (visibly low waterline, exposed mud ring)

---

The water authority says the numbers leave them no choice. But standing here, the question residents are asking is harder to answer. Last month's rainfall was above average — yet this reservoir is metres below where it should be. The shortfall, critics say, is not in the sky. It is in the infrastructure that was supposed to catch it.

---

**DELIVERY & PRODUCTION NOTES**
- **Framing (TV):** Mid-shot with the reservoir's low waterline visible over Clara's right shoulder. The exposed mud ring tells the story visually — keep it in frame throughout. If possible, start wider and push in slightly during "the shortfall is not in the sky."
- **Positioning:** Clara faces camera at a slight angle, with the reservoir behind and to her right. Do not stand directly at the water's edge — the dried mud bank itself is the strongest visual, not the remaining water.
- **Edit points:** This cuts from the water authority spokesperson's final soundbite (defending the ban) directly into the stand-up. The first line ("The water authority says the numbers leave them no choice") bridges the spokesperson's argument. The closing line ("the infrastructure that was supposed to catch it") sets up the resident's frustration in the next clip.
- **Ambient sound:** Wind on the exposed bank and distant water. Keep levels low enough to hear delivery clearly but present enough to convey the outdoor location.

---

## Known Limitations
- Stand-up scripts are strongest when the reporter adapts them to their own voice and rhythm. This skill provides a production-ready draft, but most experienced reporters will — and should — adjust phrasing to match how they naturally speak on camera or mic. The structure and function will hold; individual word choices are meant to be personalised.
- For live-to-air stand-ups (live crosses, two-ways with an anchor), the unpredictability of the anchor's questions means a scripted stand-up is only useful for the opening statement. The skill can write that opening, but it cannot script the improvised Q&A that follows.
- The script's connection to the location depends entirely on the quality of the location description provided. A vague description ("outside a building") produces a generic script. A specific, visual description ("beside the reservoir with the waterline dropped three metres, exposing a mud ring") produces a script that feels rooted in place.

## Related Skills
- [bulletin-script-writer](bulletin-script-writer.md) — write the studio-read copy that introduces or follows the stand-up's package
- [package-script-writer](../news-packages/package-script-writer.md) — write the full news package script that the stand-up sits within
- [presenter-link-writer](presenter-link-writer.md) — write the presenter's studio link that throws to the reporter on location

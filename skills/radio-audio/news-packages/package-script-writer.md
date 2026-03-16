---
name: package-script-writer
status: stable
category: radio-audio
subcategory: news-packages
version: 1.0
eval_score: 4.4
tags: [radio, news, package, script, reporter-track, actuality]
---

# Package Script Writer

## What This Skill Does
Writes a complete radio news package script — intro copy, reporter track, clip cues, and back announcement — from notes and interview transcripts.

## When To Use This Skill
- A reporter has finished interviews and notes and needs to write up a 1:30 to 3-minute package for a news bulletin or programme
- A producer needs to review the package structure and copy before it goes to edit
- You need to turn a wire story and two phone clips into a broadcast-ready package quickly
- A training journalist needs a model package structure to work from

## What You Need To Provide
**Required:** The story details (facts, figures, key angles), available clips with approximate content and duration (from transcripts or notes), and the target package duration.
**Optional:** Programme name, whether the package needs a presenter intro or includes one, any particular angle the editor wants foregrounded, reporter name, and whether actuality or wildtrack is available.

## How Claude Approaches This
1. Identifies the news angle and structures the package around a clear narrative: scene-setting or context opening, evidence (clips), development or counterpoint, and a closing reporter track that lands the editorial point
2. Writes the presenter intro (15–20 seconds) as a separate, stand-alone cue that introduces the story and the reporter; writes reporter track sections in first-person reporter voice, calibrated to leave space for clips
3. Labels all clips with suggested in-cues, out-cues, and durations; adds a back announcement for the presenter if requested; calculates approximate total package duration based on track and clip lengths

## Output Format
A script document with four components: PRESENTER INTRO, PACKAGE SCRIPT (reporter track + clip labels interspersed), and optional BACK ANNOUNCEMENT. Reporter track copy is labelled TRACK with a duration estimate. Clips are labelled CUT with speaker name, in-cue, out-cue, and duration. Total package script layout is as used in broadcast newsrooms: short paragraphs, each line a breath unit, all caps for clip labels. Reporter voice is active, first-person, slightly more informal than a bulletin cue but still broadcast standard.

## Quality Criteria
- [ ] The presenter intro names the story and the reporter and ends with a natural handover cue
- [ ] Reporter track does not repeat word-for-word what a clip has just said
- [ ] Each clip is set up with a track that creates context — the listener should understand who is speaking and why before the clip plays
- [ ] Package has a clear ending — not a clip followed by silence, but a reporter sign-off or a closing track that completes the story
- [ ] Total duration lands within 10 seconds of the target
- [ ] Language throughout is broadcast English: active voice, short sentences, no print idioms

## Example

### Input
Programme: Evening News bulletin
Story: A major employer in a market town has announced it will close its regional call centre, putting 340 jobs at risk. The closure is expected by June. The company says automation is the reason. The union disputes this, saying the centre was profitable.
Target package duration: 1:45
Reporter name: James Okoro
Clips available:
- Company spokesperson, Lena Marsh (12 secs) — content: "The decision reflects changes in how our customers interact with us. We're moving to digital-first channels."
- Unite union rep, Callum Reid (18 secs) — content: "This centre has been profitable for three years running. This is not about technology. This is about cutting costs at workers' expense."
- Affected worker (anonymous, 8 secs) — content: "I've worked here eleven years. They sent us a letter. That's all we got."

### Output

---
EVENING NEWS — PACKAGE SCRIPT
Story: Westfield Call Centre Closure
Reporter: James Okoro
Package duration: approx. 1:45

---

PRESENTER INTRO | ~20 secs

Three hundred and forty jobs are at risk tonight after a company announced it will close its regional call centre in Westfield by June. Our reporter James Okoro has been speaking to the workers affected.

---

PACKAGE — TRACK 1 | ~18 secs

The Westfield call centre has been part of this town for nearly fifteen years. Today, the staff who arrived for morning shift found managers waiting at the door. By midday, they knew what was coming. The company says the way its customers want to be helped has changed.

---

CUT 1 — LENA MARSH, COMPANY SPOKESPERSON
IN: "The decision reflects..." OUT: "...digital-first channels." DUR: 0:12

---

TRACK 2 | ~15 secs

But the union that represents most of the three hundred and forty workers does not accept that explanation. Callum Reid from Unite says the numbers simply do not add up.

---

CUT 2 — CALLUM REID, UNITE
IN: "This centre has been profitable..." OUT: "...at workers' expense." DUR: 0:18

---

TRACK 3 | ~12 secs

For many of those workers, this is not an abstract dispute about business strategy. Some have been here a decade or more. A few asked us not to use their names.

---

CUT 3 — ANONYMOUS WORKER
IN: "I've worked here eleven years..." OUT: "...That's all we got." DUR: 0:08

---

TRACK 4 — SIGN-OFF | ~20 secs

The company says it will open a consultation process in the coming weeks and that some staff may be redeployed to other sites. The union says it will be scrutinising that process closely. For the workers here in Westfield, that process begins tomorrow.

James Okoro, Evening News, Westfield.

---

BACK ANNOUNCEMENT (presenter) | ~10 secs

James Okoro there. The company has been contacted for further comment and says it expects to announce full consultation details later this week.

---
TOTAL PACKAGE (without pres intro or back anno): approx. 1:43

## Known Limitations
- Package duration estimates assume standard broadcast pacing; a reporter with an unusually fast or slow delivery will need to adjust track lengths manually
- The skill cannot assess whether a clip is genuinely the most newsworthy excerpt from a longer interview — it works from the descriptions and in/out cues provided, not from the audio itself
- Sign-off formats vary between networks; the output uses the most common BBC-style format but may need adjustment for commercial radio style guides
- Does not write music or jingle cues, travel wraps, or ad-adjacent copy

## Related Skills
- [bulletin-script-writer](../scripting/bulletin-script-writer.md)
- [clip-selection-brief](./clip-selection-brief.md)
- [two-way-brief-writer](./two-way-brief-writer.md)

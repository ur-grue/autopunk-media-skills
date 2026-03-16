---
name: documentary-narration-writer
status: stable
category: radio-audio
subcategory: scripting
version: 1.0
eval_score: 4.4
tags: [radio, scripting, documentary, narration, audio, actuality, feature]
---

# Documentary Narration Writer

## What This Skill Does
Writes narration for a radio or audio documentary, weaving together interview clips, actuality recordings, and presenter voice into a structured, audiogenic script.

## When To Use This Skill
- You have interview transcripts and actuality notes for a radio documentary and need to write the connective narration
- A feature or audio story needs narration that sets scenes, builds context between clips, and moves the listener through the story
- You are cutting a documentary from recorded material and need a script that maps onto your edit
- A long-form audio piece needs a distinct documentary register — not a bulletin, not a magazine link, but sustained narrative prose for the ear

## What You Need To Provide
**Required:** A brief description of the documentary's subject and argument or story arc, a list of available clips (speaker name, rough content, duration), and any actuality sounds that will be featured.
**Optional:** The documentary's target duration, the narrator's voice profile (authoritative, intimate, journalistic), any specific scene-setting beats needed, and the intended audience or platform.

## How Claude Approaches This
1. Reads the clip list and actuality notes to map the available material, then identifies the documentary's implicit structure — where does the story begin, what are the turning points, how does it resolve or leave questions open
2. Writes narration that "earns" each clip — the narration before a clip sets up exactly what the listener needs to hear the clip clearly; the narration after a clip draws out its significance without over-explaining
3. Crafts scene-setting passages in the present tense where appropriate, uses silence and sound cues as structural punctuation, and maintains a consistent narrative voice throughout — the narration sounds like one authorial voice, not a series of bulletin cues stitched together

## Output Format
A script in industry-standard radio documentary format: narration blocks are labelled NAR and set in roman type; clip cues are labelled CUT or CLIP with speaker name, in-cue, out-cue, and duration; actuality or wildtrack cues are labelled ATMOS with a description. Narration blocks are double-spaced. A header shows documentary title, total target duration, and narrator voice profile. Average narration-to-clip ratio: approximately 40% narration, 60% clips and actuality. Narration blocks run 20–90 seconds; none exceed 120 seconds without a sound break.

## Quality Criteria
- [ ] Each narration block before a clip sets up the clip without pre-quoting it or telling the listener what they are about to hear
- [ ] Actuality and wildtrack cues are used as structural and emotional punctuation, not just filler
- [ ] The documentary has a discernible narrative arc: opening hook, development, climax or revelation, close
- [ ] Narration language is written for the ear — short to medium sentences, concrete imagery, active verbs, no parenthetical asides
- [ ] No narration block simply repeats information already given in a clip (no "As she just said...")
- [ ] The closing narration lands the documentary's theme without being didactic or over-explaining the point

## Example

### Input
Documentary title: "The Last Post Office"
Subject: A small-town post office that has served a rural community for 140 years is about to close permanently. The story follows the postmistress on her final week.
Story arc: Nostalgia and loss, but also resilience — the community is adapting.
Target duration: 20 minutes
Narrator profile: Warm, unhurried, journalistic — not sentimental

Available clips:
- Margaret Howell, postmistress (68): "I've weighed parcels for people's grandchildren who weren't even born when I started. That's not a job. That's a life." (18 secs)
- Jack Ferris, farmer (74): "Every morning I came in here. Even when I didn't need stamps, I came in. You knew who was still standing." (12 secs)
- Sarah Okafor, young mother (34): "For me it was the only place in the village where you'd actually see people. My kids have never known anything else. I don't know how I explain it to them." (20 secs)
- Margaret Howell: "On Friday I'll lock that door. And I'll put the key through my own letterbox. Because it's not my key anymore, is it." (14 secs)
Actuality: The bell above the door as customers enter. The sound of a date stamp. Quiet conversation. A queue on the final morning.

### Output

---
THE LAST POST OFFICE
Target duration: 20 minutes
Narrator profile: Warm, unhurried, journalistic

---

NAR — OPENING | ~45 secs

*[ATMOS: bell above door — sustained 3 secs, then under narration]*

The village of Hartstone sits eleven miles from the nearest market town, at the end of a single-track road that floods every February. It has a church, a pub that opens four nights a week, and a post office that has been open since 1884.

For one hundred and forty years, someone has unlocked that door on a Monday morning.

This Friday, no one will.

---

CLIP 1 — MARGARET HOWELL (postmistress, 68)
IN: "I've weighed parcels..." OUT: "...That's a life." DUR: 0:18

---

NAR — 1 | ~30 secs

Margaret Howell has run this post office for thirty-one years. Before her, her mother-in-law ran it for twenty-two. Before that, records are incomplete — but the counter is the same counter. The wood worn smooth in two places where generations of hands have rested, waiting.

Today is Tuesday. Margaret has four working days left.

---

*[ATMOS: date stamp — 3 stamps in sequence, close mic, 4 secs]*

---

NAR — 2 | ~25 secs

The official reason for the closure is footfall. The number of transactions has fallen sixty percent in a decade. The post office network says the branch is no longer economically viable.

But in a village with no broadband fast enough to bank online, and a bus service that runs twice a week, footfall is a complicated word.

---

CLIP 2 — JACK FERRIS (farmer, 74)
IN: "Every morning I came in here..." OUT: "...who was still standing." DUR: 0:12

---

NAR — 3 | ~20 secs

Jack Ferris is eighty-three. He drove here this morning from his farm, two miles up the valley. He bought nothing. He stayed twenty minutes.

He will do the same tomorrow. And Thursday. He has not decided what he will do on Saturday.

---

CLIP 3 — SARAH OKAFOR (young mother, 34)
IN: "For me it was the only place..." OUT: "...explain it to them." DUR: 0:20

---

NAR — 4 | ~35 secs

Sarah Okafor moved to Hartstone six years ago. She came for the quiet. She stayed because of the people. She is not sure where she will cash her child benefit payments from next month. The post office network website suggests she could travel to a branch twelve miles away, or register for an online account.

She does not drive. There is no bus on Fridays.

---

*[ATMOS: queue sounds — low murmur, footsteps, bell over door — 6 secs]*

---

NAR — PENULTIMATE | ~30 secs

On Thursday morning, the queue stretches out of the door and down the pavement. Some people have driven from neighbouring villages. One woman has brought a card. Someone has baked a cake.

Margaret Howell weighs a parcel for a man she has known for twenty years. She hands him his receipt. She does not cry. She has decided she will not cry until Saturday, when she is on her own.

---

CLIP 4 — MARGARET HOWELL
IN: "On Friday I'll lock that door..." OUT: "...it's not my key anymore, is it." DUR: 0:14

---

NAR — CLOSE | ~40 secs

*[ATMOS: bell above door — one ring, door closing, silence — 5 secs]*

The post office closed at five-thirty on Friday afternoon.

By Monday morning, the village had started a petition. By Wednesday, three hundred people had signed it. By Friday, a local councillor had agreed to raise it at the next full meeting.

Margaret Howell spent the weekend gardening. She says she slept better than she has in years.

Hartstone does not yet know what happens next. But it is, at least, still asking.

*[ATMOS: fade to silence — 3 secs]*

---
END

## Known Limitations
- Narration quality depends heavily on the richness of the clip and actuality notes provided — sparse inputs will produce structurally correct but emotionally thin narration
- The skill cannot listen to the actual recordings; it works from transcripts and descriptions, so nuances of delivery (hesitation, emotion, emphasis) that affect how narration should set up a clip may be missed
- For documentaries over 30 minutes, the structure section may need to be broken into two separate passes to maintain coherence
- Does not suggest music cues or compose original audio — if music is part of the documentary's texture, those cues need to be added manually

## Related Skills
- [package-script-writer](../news-packages/package-script-writer.md)
- [presenter-link-writer](./presenter-link-writer.md)
- [programme-brief-writer](../production/programme-brief-writer.md)

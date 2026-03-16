---
name: bulletin-script-writer
status: stable
category: radio-audio
subcategory: scripting
version: 1.0
eval_score: 4.5
tags: [radio, scripting, news, bulletin, broadcast]
---

# Bulletin Script Writer

## What This Skill Does
Writes a broadcast-ready radio news bulletin script from raw story notes, structured for clear on-air delivery at a specified duration.

## When To Use This Skill
- You need a timed bulletin script (2-minute, 3-minute, or 5-minute) from notes collected during a news shift
- A presenter or newsreader needs copy they can read cold without editing
- You are assembling an hourly or half-hourly bulletin under deadline pressure
- You need to reorder and weight several stories into a single coherent bulletin

## What You Need To Provide
**Required:** A list of story notes (at least 2 stories), the target bulletin duration (e.g. 2 mins, 3 mins), and the name of the programme or station (for tone calibration).
**Optional:** Story priority order, any clips or actuality that will be included (with durations), presenter name, and whether a specific story should lead.

## How Claude Approaches This
1. Reads all story notes and ranks them by news value — impact, immediacy, audience relevance — to determine the running order
2. Writes a strong opening sentence for the headline cue that states the top story clearly and without padding; follows with the body of each story in descending importance
3. Formats each story as a discrete cue — intro line, body copy, and where clips are flagged, a clip label and suggested out-cue — calibrating word count to the target duration (approximately 150 words per minute)

## Output Format
A clean script with stories separated by clear headings (CUE 1, CUE 2, etc.). Each cue shows: the story slug, estimated duration in seconds, the script copy in double-spaced lines, and a clip label if applicable. The final line of the bulletin is the standard out-cue sign-off (e.g. "I'm [name], the news continues..."). Total word count targets 150 wpm × bulletin length. Language is formal but spoken — short sentences, active voice, no subordinate clauses at sentence openings.

## Quality Criteria
- [ ] Lead story is the most newsworthy item, not the most recent or most convenient
- [ ] No sentence opens with a subordinate clause or a name — context comes before identity
- [ ] All clips are labelled with a suggested in-cue and out-cue
- [ ] Running time lands within 10 seconds of the target duration at 150 wpm
- [ ] Language is spoken English — no passive constructions, no print idioms ("it emerged that", "the move comes as")
- [ ] Each story can stand alone if the bulletin is cut short

## Example

### Input
Station: Northgate Radio, daytime news programme
Target duration: 3 minutes
Stories:
1. Local council has voted to close three libraries in the borough — decision taken last night, 6-4 vote. Opponents say it puts 12 full-time jobs at risk. Council leader says £2.4 million savings needed to balance budget. Campaign group "Save Our Libraries" vow to mount legal challenge.
2. National rail operator announces fares will rise 4.8% from 1 April — above inflation. Season ticket holders hardest hit. Rail union says workers' wages have not risen at same rate. Transport minister defends move, says investment needed.
3. Weather: cold front moving in from the west, temperatures dropping to 2 degrees overnight, ice warnings in place for rural roads from midnight.
Include clip: Council leader (12 seconds) — out-cue: "...and every penny will be spent on front-line services."

### Output
NORTHGATE RADIO NEWS — 3-MINUTE BULLETIN
Word count target: ~450 words | Approx. 3:00 at 150 wpm

---

CUE 1 — LIBRARIES | LEAD | ~75 secs

Three libraries in the borough are to close — after councillors voted last night to approve the cuts.

The decision passed six votes to four at a full council meeting. The closures are expected to put twelve full-time jobs at risk by the summer.

The council leader says the cuts are part of a two-point-four million pound package of savings needed to balance this year's budget.

// CLIP: COUNCIL LEADER — IN: "We did not take this lightly..." OUT: "...and every penny will be spent on front-line services." DUR: 0:12 //

The campaign group Save Our Libraries says it will seek a judicial review of the decision. A spokesperson told Northgate Radio the group has already taken legal advice and expects to file a challenge within 28 days.

---

CUE 2 — RAIL FARES | ~65 secs

Train fares are to rise by nearly five percent from the first of April — taking the increase above the current rate of inflation.

The national rail operator confirmed the rise this morning. Season ticket holders will see the sharpest increases, with some annual passes going up by more than three hundred pounds.

The rail workers' union says the announcement comes as its members face a third year of below-inflation pay offers.

The transport minister says the revenue is necessary to fund improvements to the network, including new rolling stock and station upgrades across the country.

---

CUE 3 — WEATHER | ~20 secs

And finally — tonight will be the coldest of the week so far. A weather front moving in from the west will push temperatures down to two degrees by midnight. The Met Office has issued ice warnings for rural roads across the region from midnight until eight tomorrow morning. Drivers are advised to take extra care.

---

OUT-CUE:
That's the latest from Northgate Radio News. I'm back with more news at the top of the hour. Stay with us.

---
TOTAL: ~445 words | Running time: approx. 2:58

## Known Limitations
- Word-count-based timing assumes a steady reading pace of 150 wpm; newsreaders who read faster or slower will need to adjust copy length manually
- Cannot verify factual accuracy of notes provided — all facts in the output reflect the input notes exactly as supplied
- Does not generate original reporting; if the notes are thin on detail, the script will be thin — the skill cannot invent quotes or fill factual gaps
- Does not account for live talkbacks, traffic or travel inserts, or music beds that may affect the final running time

## Related Skills
- [package-script-writer](../news-packages/package-script-writer.md)
- [presenter-link-writer](./presenter-link-writer.md)
- [running-order-builder](../production/running-order-builder.md)

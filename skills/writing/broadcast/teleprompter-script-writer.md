---
name: teleprompter-script-writer
status: beta
category: writing
subcategory: broadcast
version: 1.0
eval_score: null
tags: [broadcast, presenter, teleprompter, autocue, studio, television, on-camera]
---

# Teleprompter Script Writer

## What This Skill Does
Writes a full presenter script formatted for teleprompter delivery — short spoken sentences, natural breath points marked, and pacing tuned for on-camera reading without the script sounding read.

## When To Use This Skill
- You need a complete presenter script for a studio programme segment, bulletin, or explainer piece and the presenter will read from autocue
- An existing script sounds "written" rather than spoken — it needs rewriting for comfortable on-camera delivery
- You are producing a fast-turnaround bulletin and need clean, correctly paced copy that a presenter can sight-read without stumbling
- The presenter has flagged that previous scripts gave them no room to breathe or modulate — you need copy with natural pause points built in

## What You Need To Provide
**Required:**
- The content to be covered: a summary, a set of bullet points, or a rough draft to be rewritten
- Target duration (state in seconds or minutes; the script will be timed to match)
- The number of presenters, if more than one (for scripts that need to be split between two anchors)

**Optional:**
- The presenter's name and any known speech rhythms or preferences (e.g. prefers short sentences, dislikes contractions)
- Tone of the segment: breaking news, magazine, explainer, human interest
- Any mandatory phrases, names, or figures that must appear verbatim
- Whether the script ends with a package cue, a toss to another presenter, or a programme close

## How Claude Approaches This
1. Converts all content into spoken-word sentences — active voice, contractions where natural, no sub-clauses that bury the verb — so every sentence reads naturally at the speed a presenter speaks
2. Marks pause points with a double forward slash (//) at each natural breath moment — typically after every sentence and at any point where a presenter should slow for emphasis; these are not read aloud, they are cues for timing and delivery
3. Calculates approximate duration based on a standard broadcast read rate of 150–160 words per minute and notes the estimated time at the end of the script; adjusts sentence density if the draft runs long or short

## Output Format
- Each sentence on its own line for easy autocue scrolling
- Double forward slash (//) marks each natural pause point — placed after punctuation, never mid-clause
- No parenthetical stage directions in the body of the script (delivery notes, if any, go in a separate block at the top)
- Font and casing: written in standard sentence case — all-caps is a teleprompter operator's choice, not applied here
- If two presenters share the script, each block is labelled with the presenter's name or role (PRESENTER 1 / PRESENTER 2) in a clearly separated header line
- Estimated duration noted at the end: [approx. X min Y sec at 155 wpm]

## Quality Criteria
- [ ] Every sentence can be read in a single breath at a natural speaking pace
- [ ] No sentence exceeds 20 words without a pause marker
- [ ] Pause markers (//) appear at every sentence boundary and at any point of intended emphasis
- [ ] No sub-clauses that force a presenter to delay the main verb beyond the first half of the sentence
- [ ] The script sounds spoken, not written — contractions used where natural, no formal connectives ("furthermore", "moreover", "henceforth")
- [ ] Estimated duration matches the requested target within five seconds

## Example

### Input
Content: Three bullet points for a bulletin segment about a new public transport strike.

- Rail workers at the national operator are beginning a 48-hour strike at midnight tonight.
- The action is being taken over a pay dispute; unions say their members have not received a cost-of-living increase in two years.
- Passengers are advised to check their journeys online. A reduced service will run on some lines operated by private carriers.

Target duration: 40 seconds.
Tone: Breaking news bulletin.
Ends with: toss to reporter in the field.

### Output

---
[Delivery note: Measured pace. Pause on the word "midnight" for emphasis.]
---

Rail workers are going on strike tonight. //
The walkout begins at midnight // and will last forty-eight hours. //

Unions say their members have not had a cost-of-living pay rise in two years. //
The national operator says talks are ongoing. //

If you are travelling tomorrow — check your route before you leave. //
Some lines run by private carriers will operate a reduced service. //

Our correspondent is at the central station. // Here is her report.

---
[approx. 40 sec at 155 wpm]

## Known Limitations
- Pause markers are a guide for timing, not a directive — experienced presenters adapt them to their own rhythm; share the script with the presenter before the recording so they can mark their own copy
- This skill cannot account for a presenter's individual speech patterns, accent, or idiosyncrasies; for presenters with a very distinctive delivery, provide one or two sample scripts as optional input so Claude can calibrate sentence length and contraction use
- Scripts containing complex foreign names, technical terms, or numbers in rapid succession may need phonetic guides added manually — Claude will flag these but will not produce phonetics unless asked
- Duration estimates assume a standard broadcast read rate of 155 words per minute; individual presenter speeds vary; time the script in a read-through before broadcast

## Related Skills
- [studio-intro-writer](studio-intro-writer.md)
- [standup-script-writer](standup-script-writer.md)

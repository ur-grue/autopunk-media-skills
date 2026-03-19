---
name: voice-over-script-writer
status: beta
category: writing
subcategory: broadcast
version: 1.0
eval_score: null
tags: [voice-over, narration, broadcast, scripting, documentary, tv, radio]
---

# Voice-Over Script Writer

## What This Skill Does
Turns research notes, interview transcripts, or article text into a broadcast-ready voice-over script — short sentences, active voice, written for the ear, timed to picture.

## When To Use This Skill
- You have reporting or research notes and need to shape them into spoken narration for a documentary, news package, or explainer film
- You have a print article that needs to be rewritten for broadcast — the sentences are too long, the grammar too formal, the vocabulary too dense
- You need narration that fits a specific screen duration (e.g., "I have 45 seconds of wide shots with no sync sound")
- You want to test whether a story works as spoken word before committing to a shoot

## What You Need To Provide
**Required:**
- Your source material — research notes, a transcript excerpt, key facts to cover, or an existing written passage to rewrite for broadcast
- The target duration or word count (broadcast narration averages 2.5–3 words per second; state seconds if you know the picture length)

**Optional:**
- Narrator voice style (e.g., "warm and personal", "calm and authoritative", "urgent, first person")
- Any words, names, or technical terms that must appear exactly as written (for pronunciation clarity or legal reasons)
- Specific images or moments in the cut that the narration should land on or avoid stepping over
- Whether this is for TV, radio, or online — the register differs slightly

## How Claude Approaches This
1. Identifies the core facts and the narrative thread — what the audience must know, in what order — and strips away everything that would read well in print but slow down the ear
2. Rewrites into broadcast grammar: sentences of 10–15 words, active constructions, numbers spoken out ("four hundred" not "400"), no subordinate clauses longer than a phrase, no jargon that cannot be immediately understood on a single listen
3. Paces the script to the target duration, marking approximate timings every 15–20 seconds so the producer can see where the narration sits against the picture, and flags any line that risks clashing with a sync sound moment if one is described

## Output Format
- Plain prose narration, broken into short paragraphs (each paragraph = one breath group, roughly one shot)
- A running time estimate in brackets after each paragraph (e.g., `[~12 sec]`)
- Total estimated duration at the top of the script
- Speaker label before the first line: `NARRATOR:` (or `PRESENTER:` if specified)
- No action directions, no music cues — narration text only unless the producer requests a fuller two-column format

## Quality Criteria
- [ ] No sentence exceeds 20 words
- [ ] Every sentence uses active voice unless passive is required for accuracy
- [ ] No word that would confuse a general audience on a single listen (jargon is explained or replaced)
- [ ] Numbers, dates, and statistics are spoken out in full ("nineteen ninety-seven", "one point four million")
- [ ] The total word count falls within ±10% of the target duration at 2.8 words per second
- [ ] The script reads cleanly aloud — no awkward consonant clusters or breath-defying run-ons

## Example

### Input
**Source material (research notes):**
The Arendt River flood of 2019 caused €340 million in damage across the Vallenberg district. 4,200 homes were affected. The regional emergency authority's response was criticised in a subsequent parliamentary inquiry, which found that early warning systems had not been tested since 2014 and that coordination between municipal and national agencies broke down in the first 48 hours. Three people died. The authority's director resigned in March 2020.

**Target duration:** 45 seconds
**Style:** Calm, authoritative, third person. TV documentary.

### Output

Estimated duration: ~44 seconds

NARRATOR:

In the summer of two thousand and nineteen, the Arendt River flooded the Vallenberg district. The damage came to three hundred and forty million euros. Four thousand two hundred homes were affected. Three people died. `[~14 sec]`

A parliamentary inquiry later found that early warning systems had not been tested in five years. When the flood came, coordination between local and national agencies broke down within forty-eight hours. `[~16 sec]`

The director of the regional emergency authority resigned the following March. The inquiry's findings have never been formally contested. `[~14 sec]`

## Known Limitations
- The 2.8 words-per-second timing estimate is an average. A slower, more gravely delivery can drop to 2.2; a brisk news-package pace can reach 3.2. Always read the script aloud before locking the edit.
- Claude cannot watch your cut. If narration must hit specific picture moments (a name appearing on screen, a graph animating), describe those moments in your input so the script can be shaped around them.
- Highly technical subjects — legal, medical, scientific — may require a specialist to review the simplified language before broadcast to ensure nothing has been inadvertently misrepresented.
- This skill writes narration text only. Music, sound design, and production directions should be added by the producer in a separate pass.

## Related Skills
- [transition-narration-writer](transition-narration-writer.md)
- [commentary-writer](../../tv-documentary/scripting/commentary-writer.md)
- [narrator-voice-adapter](../../tv-documentary/scripting/narrator-voice-adapter.md)
- [teleprompter-formatter](teleprompter-formatter.md)

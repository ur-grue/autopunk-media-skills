---
name: transcript-cleanup
status: stable
category: podcast
subcategory: post-production
version: 1.0
eval_score: 4.4
tags: [podcast, post-production, transcript, editing, accessibility]
---

# Transcript Cleanup

## What This Skill Does
Cleans and formats a raw auto-generated podcast transcript for publication on a website or show page — removing filler words and transcription errors, adding speaker labels, formatting for readability, and preserving the authentic voice of host and guests.

## When To Use This Skill
- You have a raw transcript from an auto-transcription service (Otter.ai, Descript, Whisper, Rev) and need it cleaned for publication
- You want to publish an accessible transcript on your show's website alongside the episode
- Your sponsor or network requires a clean transcript for accessibility compliance
- You want a readable written record of an interview that can be shared as a standalone document

## What You Need To Provide
**Required:**
- The raw transcript text (paste directly)
- The names of the host and guest(s), so Claude can assign correct speaker labels

**Optional:**
- Show name and episode title (for the header)
- Any proper nouns, technical terms, or names that the transcription service consistently got wrong (Claude will look for these and correct them)
- Publication format: website (markdown), plain text, or formatted document
- Whether you want light cleanup (fix errors, add speakers, remove obvious filler) or heavy cleanup (also remove all filler words, tighten sentences, remove false starts)

## How Claude Approaches This
1. Assigns correct speaker labels throughout, replacing auto-generated labels (SPEAKER 1, SPEAKER 2) with actual names
2. Corrects transcription errors: proper nouns misspelled, technical terms mangled, homophones chosen incorrectly, sentences that clearly run together or are incorrectly split
3. Applies the appropriate level of cleanup:
   - **Light:** Fix errors and add speakers only; preserve all speech patterns including filler words and false starts — this is the most authentic record
   - **Heavy:** Also remove filler words (um, uh, you know, like used non-meaningfully), clean false starts (incomplete sentences immediately corrected by the speaker), and tighten repeated false starts into the completed sentence
4. Adds minimal formatting: timestamps every 5–10 minutes, a header with episode title and date, clean paragraph breaks between speakers
5. Does not change the meaning, reorder ideas, or silently alter what was said — any uncertain transcription is marked [UNCLEAR] rather than guessed at

## Output Format
- Header: Show name · Episode title · Recording date (if provided) · Format note (Light or Heavy cleanup)
- Speaker labels in bold: **HOST:** / **GUEST NAME:**
- Timestamps in brackets every 5–10 minutes: **[10:23]**
- [UNCLEAR] tag for any passage where the transcription was not recoverable
- Paragraphs broken at natural speaker turn transitions
- For web publication: markdown formatting (headers, bold labels)
- For plain document: clean paragraph structure, no markdown
- No editorializing, no added context, no summarizing — the transcript is a record, not an interpretation

## Quality Criteria
- [ ] Every speaker turn is correctly attributed — no line assigned to the wrong speaker
- [ ] Proper nouns and technical terms are corrected wherever a clear error is identifiable
- [ ] No sentence has its meaning changed by the cleanup, even in heavy mode
- [ ] [UNCLEAR] tags are used consistently for genuinely unrecoverable passages rather than guesses
- [ ] The cleaned transcript reads naturally — filler removal (in heavy mode) does not create choppy or unnatural sentence fragments

## Example

### Input
**Cleanup level:** Heavy
**Host:** Dani Reyes
**Guest:** Marcus Webb — supply chain analyst

```
SPEAKER 1: so um today i'm i'm really excited to have um marcus webb on the show he's been uh looking at supply chains for like fifteen years now marcus welcome
SPEAKER 2: thanks dani great to be here great to be here
SPEAKER 1: so i wanted to start with like the thing everyone's kind of been confused about which is you know why why did the uh the backlogs persist for so long like we were told it was gonna be a short term thing
SPEAKER 2: yeah so that's a great question and i think the the the honest answer is that nobody really understood at the time how uh how interconnected the failure modes were so you'd have like a port backup in long beach and people would say okay we fix the port and then everything flows again but what they didn't account for was that the uh the shortage of chassis which are the the little trailers that move the containers um that that had its own separate uh production constraint that was completely divorced from the port issue so you kind of had this this this layering of of unrelated bottlenecks that all got triggered at the same time
SPEAKER 1: that's fascinating and and and i hadn't thought about the chassis thing specifically
```

### Output

---

**[TRANSCRIPT]**
*Podcast: [Show name to be added]*
*Episode: [Episode title to be added]*
*Cleanup: Heavy — filler words and false starts removed; meaning preserved*

---

**DANI REYES:** Today I'm excited to have Marcus Webb on the show. He's been looking at supply chains for fifteen years. Marcus, welcome.

**MARCUS WEBB:** Thanks, Dani. Great to be here.

**DANI REYES:** I wanted to start with the thing everyone's been confused about — why did the backlogs persist for so long? We were told it was going to be a short-term situation.

**MARCUS WEBB:** The honest answer is that nobody really understood at the time how interconnected the failure modes were. You'd have a port backup in Long Beach and people would say, okay, we fix the port and then everything flows again. But what they didn't account for was that the shortage of chassis — those are the trailers that move the containers — that had its own separate production constraint that was completely divorced from the port issue. So you had this layering of unrelated bottlenecks that all got triggered at the same time.

**DANI REYES:** That's fascinating. I hadn't thought about the chassis situation specifically.

---

*[Note: "LONG BEACH" confirmed from context — if this refers to a different port location, correct before publishing. No [UNCLEAR] passages in this excerpt.]*

## Known Limitations
- Claude cannot hear the audio — if the transcription service produced a passage that is garbled in a way where multiple interpretations are plausible, Claude will mark it [UNCLEAR] and the user must check against the recording
- Heavy cleanup removes filler and false starts but cannot always detect when a filler word ("you know," "I mean") is being used meaningfully as a rhetorical device — the user should review any passage where the register feels off after cleanup
- Very long transcripts (over 10,000 words) should be submitted in sections; submitting a full 60-minute transcript at once may produce inconsistent results
- Claude does not have memory of prior sessions — speaker name assignments must be provided every time, even for recurring guests
- This skill cleans the transcript; it does not produce show notes, chapter markers, or summaries — those require separate skills

## Related Skills
- [show-notes-generator](../post-production/show-notes-generator.md)
- [episode-summary-writer](../post-production/episode-summary-writer.md)
- [chapter-timestamps](../../youtube/post-production/chapter-timestamps.md)

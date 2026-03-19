---
name: youtube-chapters-writer
status: beta
category: writing
subcategory: digital-social
version: 1.0
eval_score: null
tags: [youtube, chapters, timestamps, navigation, video-structure]
---

# YouTube Chapters Writer

## What This Skill Does
Converts a video outline or rough transcript into a properly formatted YouTube chapter list with [HH:MM:SS] timestamps and punchy, click-navigable chapter titles.

## When To Use This Skill
- You have finished editing and know the approximate start time of each major section
- You have a script or outline with clear topic breaks and want chapter markers before you even export
- Your video is longer than 8 minutes and viewers will need to jump between sections
- You want chapters to appear in YouTube's progress bar (requires the first chapter to start at 0:00)

## What You Need To Provide
**Required:** A list of your video's sections in order, each with either an exact timestamp or an estimated start time in minutes and seconds. A one-sentence description of what happens in each section is enough.

**Optional:** The video's total runtime, so Claude can sanity-check that no chapter overruns the end. The overall topic or title, so chapter names stay on-brand.

## How Claude Approaches This
1. Reads the section list and maps each entry to a [HH:MM:SS] timestamp, converting any minute:second shorthand (e.g. "4:30") to the full three-part format YouTube requires.
2. Writes a chapter title for each section — 2 to 5 words, front-loaded with the most specific or searchable term, no filler words like "Part" or "Section."
3. Checks that the first chapter is always 0:00:00, that timestamps are strictly ascending, and that no title exceeds 100 characters. Flags any gaps or ordering problems before delivering the final list.

## Output Format
A plain-text block, one chapter per line, formatted exactly as:

```
0:00 Intro
1:45 [Topic A]
8:20 [Topic B]
...
```

Uses the short `M:SS` or `MM:SS` format for videos under one hour (YouTube accepts both; shorter looks cleaner in descriptions). Switches to `H:MM:SS` automatically if the video exceeds 59:59. No bullet points, no numbering, no extra punctuation — just the timestamp, a single space, and the title. Ready to paste directly into the YouTube description field.

## Quality Criteria
- [ ] First chapter is exactly 0:00
- [ ] Every timestamp is strictly later than the one above it
- [ ] No chapter title exceeds 100 characters or uses vague filler words ("Part 1", "Segment", "Stuff")
- [ ] The most searchable or specific term in each section appears at the start of the chapter title
- [ ] The full block is pasteable into a YouTube description without any editing

## Example

### Input
Video topic: How to negotiate a freelance contract
Total runtime: approx 22 minutes

Sections:
- 0:00 — Quick welcome, what the video covers
- 1:10 — Why most freelancers leave money on the table
- 3:45 — The three clauses you must read before signing anything
- 9:20 — How to counter a low offer without losing the client
- 14:55 — Kill fees, late payment, and scope creep explained
- 19:40 — A word-for-word script for starting the negotiation conversation
- 21:30 — Final recap and where to get the template

### Output
```
0:00 Intro
1:10 Why Freelancers Undercharge
3:45 Three Clauses to Read Before Signing
9:20 How to Counter a Low Offer
14:55 Kill Fees, Late Payment & Scope Creep
19:40 Word-for-Word Negotiation Script
21:30 Recap & Free Template
```

## Known Limitations
- Claude cannot watch your video. Timestamps must come from you — either from your edit timeline, your script, or your own notes. If your timestamps are wrong, the chapters will be wrong.
- Very short sections (under 30 seconds) are often better merged with the adjacent chapter; Claude will flag these but the decision is yours.
- YouTube only displays chapters in the progress bar if the video has at least three chapters and the first starts at 0:00. If your outline starts later, Claude will prompt you to add an intro chapter at 0:00.

## Related Skills
- [chapter-timestamps](../../youtube/post-production/chapter-timestamps.md)
- [youtube-description-writer](./youtube-description-writer.md)

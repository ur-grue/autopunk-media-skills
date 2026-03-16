---
name: subtitles-rewriter
status: stable
category: tv-documentary
subcategory: post-production
version: 1.0
eval_score: 4.4
tags: [documentary, post-production, subtitles, accessibility, localization]
---

# Subtitles Rewriter

## What This Skill Does
Reformats and rewrites subtitle text for timing, readability, and on-screen clarity, following broadcast subtitle standards.

## When To Use This Skill
- Auto-generated subtitles contain transcript errors that need correcting before delivery
- Subtitle timing needs reformatting for broadcast delivery (line length, reading speed, two-line breaks)
- Subtitles were originally written for one platform and need reformatting for another (cinema, broadcast, streaming, DVD)
- Foreign-language dialogue subtitles need to be adapted for clarity and reading speed without re-translating

## What You Need To Provide
**Required:** The subtitle text to be rewritten; the context (documentary title, type of content — dialogue, narration, foreign language, on-screen text); the target platform (broadcast, streaming, cinema, DVD/home video)
**Optional:** The original timecodes if reformatting is needed; the target maximum characters per line; the target maximum words per second (reading speed); whether this is SDH (subtitles for deaf and hard of hearing) or standard subtitles; the language

## How Claude Approaches This
1. Reviews the existing subtitle text for transcript accuracy, line breaks, and character count — identifies errors and over-long lines
2. Reformats to the target platform's line length and reading speed standards (see Output Format for typical values)
3. Corrects errors in auto-generated transcript (common patterns: homophones, proper nouns misread, non-standard accents misread, punctuation errors)
4. For two-line subtitles, applies grammatical line-break rules — breaks at clause boundaries, not in the middle of phrases

## Output Format
Corrected subtitle text in the format provided (SRT, WebVTT, or plain numbered blocks). Each subtitle block: number, timecode (preserved or adjusted if requested), two lines maximum, maximum 42 characters per line (broadcast standard), maximum 17 words per second reading speed. For plain text input without timecodes: numbered blocks only, with notes on any corrections made. Corrections are listed separately in a Changes Log at the end.

**Platform standards applied by default unless otherwise specified:**
- Broadcast (UK/international): 42 chars/line, 2 lines max, ~160–180 wpm reading speed
- Streaming (Netflix/Amazon standard): 42 chars/line, 2 lines max, 17 wpm max
- Cinema (DCP): 32–40 chars/line, 2 lines max, conservative reading speed

## Quality Criteria
- [ ] No subtitle block exceeds the platform's character-per-line limit
- [ ] Line breaks occur at grammatical boundaries — not mid-phrase
- [ ] Reading speed is within platform standards — no subtitle requires faster-than-standard reading
- [ ] Proper nouns, technical terms, and names are corrected where auto-generation has produced errors
- [ ] Changes Log accurately records every correction made

## Example

### Input
Platform: Broadcast (UK standard)
Content: Documentary interview — foreign language dialogue (French), English subtitles
Context: Interview with a marine biologist discussing ocean pollution

Auto-generated subtitles (with errors):
```
1
00:02:14,400 --> 00:02:18,900
the microplastics they are entering the food chain at every level but we don't see them

2
00:02:19,200 --> 00:02:24,800
the fish consume them and then we consume the fish and nobody is talking about the concentration levels that we are now measuring in human blood samples

3
00:02:25,100 --> 00:02:27,300
it's not a projection anymore it's already happening

4
00:02:31,000 --> 00:02:37,200
in 1972 the scientist jock cousteau already described the Mediterranean as a garbage dump nobody listened

5
00:02:37,500 --> 00:02:42,100
and now here we are fifty years later and the situation is categorically worse not better
```

### Output

```
1
00:02:14,400 --> 00:02:18,900
Microplastics are entering the food chain
at every level. We don't see them.

2
00:02:19,200 --> 00:02:22,600
The fish consume them,
and then we consume the fish.

3
00:02:22,700 --> 00:02:24,800
Nobody is talking about the concentration levels
we're now measuring in human blood samples.

4
00:02:25,100 --> 00:02:27,300
This isn't a projection anymore.
It's already happening.

5
00:02:31,000 --> 00:02:34,800
In 1972, the scientist Jacques Cousteau
described the Mediterranean as a garbage dump.

6
00:02:34,900 --> 00:02:37,200
Nobody listened.

7
00:02:37,500 --> 00:02:42,100
Fifty years later, the situation
is categorically worse. Not better.
```

---

**Changes Log**

| Block | Change | Reason |
|-------|--------|--------|
| 1 | Added capitalisation; restructured from run-on | Broadcast standard; readability |
| 2 | Split from original block 2; shortened each line | Original block 2 was over 180 words per minute at this timecode; split into two subtitles with adjusted timecodes |
| 3 | New block from end of original block 2 | Overflow from split above |
| 4 | "it's not a projection anymore" → "This isn't a projection anymore" | Cleaner register for subtitle reading; subject pronoun added for clarity |
| 5 | "jock cousteau" → "Jacques Cousteau" | Proper noun correction — auto-generation phonetic error |
| 5 | Split into two blocks | Original block 5 was 22+ seconds with ~190 wpm; split required |
| 6 | "Nobody listened" separated as standalone block | Creates emphasis; fits naturally after the Cousteau subtitle |
| 7 | "here we are fifty years later" → "Fifty years later" | Reduced characters; removes register-inappropriate colloquial phrase for subtitle context |

## Known Limitations
- This skill corrects subtitle text based on the input provided. If the underlying transcript is wrong (mis-heard speech, incorrect translation), the skill corrects formatting errors but cannot know the content error. Provide accurate transcript text as input.
- Timecode adjustment (when a subtitle block is split or merged) is provided as a best estimate based on the text length. Precise timecodes must be confirmed against the actual audio in a subtitle editing application.
- Subtitle standards vary by broadcaster, territory, and platform. The defaults used here are broadcast-standard UK/international. Different platforms (Netflix, Amazon, Disney+) have specific style guides that may differ in small but delivery-critical ways — check the commissioning platform's technical specification before final delivery.
- SDH subtitles (including sound effects, music descriptions, and speaker identification) have different requirements that are not fully addressed by this skill's standard output. Flag SDH content explicitly when requesting a rewrite.

## Related Skills
- [rough-cut-notes](./rough-cut-notes.md)
- [press-kit-generator](./press-kit-generator.md)
- [narrator-voice-adapter](../scripting/narrator-voice-adapter.md)

---
name: subtitle-translator
status: beta
category: translation-localization
subcategory: localization
version: 1.0
eval_score: null
tags: [translation, subtitles, localization, documentary, broadcast, accessibility]
---

# Subtitle Translator

## What This Skill Does
Translates subtitle blocks from one language to another while respecting broadcast subtitle constraints: a maximum of 42 characters per line, no more than two lines per block, and a reading speed that allows viewers to watch the screen at the same time.

## When To Use This Skill
- You are localising a documentary, short film, or news package for a new language market and need broadcast-compliant subtitles
- You have transcribed and timed subtitles in the source language and need translated versions that fit the same timecodes
- A platform (YouTube, Vimeo, Netflix delivery, festival submission) requires subtitles in a language you are translating into
- You need to check whether a translated subtitle block will fit within standard broadcast limits before sending to a subtitling house

## What You Need To Provide
**Required:** The subtitle blocks in the source language, each with its timecode and original text; the source language; the target language

**Optional:** The intended platform (broadcast television, streaming, festival, online); whether the programme is documentary, drama, news, or entertainment (affects register); any glossary or character name spellings that must be kept consistent; the total programme duration (helps Claude calibrate reading-speed targets)

**Format to provide subtitle blocks in:**
```
00:02:14,500 --> 00:02:17,200
Original subtitle text here,
second line if present.
```

## How Claude Approaches This
1. Read each block as a unit — timecode, line count, and text together — and identify the maximum character budget per line (42 characters) and the display duration in seconds before touching the translation
2. Translate for meaning first, then restructure to fit the line constraints; if the target language is structurally longer than the source (German compound nouns, French grammatical gender expansions), Claude will split or paraphrase rather than exceed the line limit or crowd the text
3. Check reading speed: the standard broadcast target is approximately 17 words per minute, which at typical subtitle durations means roughly one to two short lines per two-to-three-second block; if a translation runs long for the available duration, Claude will trim without losing the core meaning, and flag every block where trimming occurred
4. Preserve speaker register across the translation — formal dialogue stays formal, conversational speech stays conversational, emotional intensity is not flattened to fit the line

## Output Format
Subtitle blocks returned in the same format as the input — timecode preserved, translated text below. Each block presented as:

```
00:02:14,500 --> 00:02:17,200
Translated line one here,
line two if needed.
```

After the translated blocks, a brief translator's note listing: any blocks where meaning was condensed to meet line or timing limits, any culturally specific terms that required adaptation, and any blocks that need human review before delivery.

Maximum two lines per block. Maximum 42 characters per line. Lines broken at a natural syntactic boundary — not mid-phrase.

## Quality Criteria
- [ ] No line exceeds 42 characters (including spaces and punctuation)
- [ ] No block contains more than two lines
- [ ] Lines break at grammatically natural points — not mid-clause or mid-noun-phrase
- [ ] The translation fits within the block's display duration at a comfortable reading speed (a viewer should not have to choose between reading and watching)
- [ ] Register is consistent with the source: formal speakers remain formal, colloquial speech remains colloquial
- [ ] Every block where meaning was condensed is flagged in the translator's note
- [ ] Timecodes are reproduced exactly as provided — no alteration

## Example

### Input
**Source language:** Spanish
**Target language:** English
**Platform:** Documentary, festival submission

```
00:01:03,100 --> 00:01:06,400
Cuando llegamos al pueblo por primera vez,
no teníamos nada. Absolutamente nada.

00:01:06,800 --> 00:01:09,500
Los vecinos nos dieron comida, ropa,
un lugar donde dormir esa primera noche.

00:01:10,000 --> 00:01:12,800
No lo olvidaremos nunca.
Nunca.
```

### Output

```
00:01:03,100 --> 00:01:06,400
When we first arrived in the village,
we had nothing. Absolutely nothing.

00:01:06,800 --> 00:01:09,500
Neighbours gave us food, clothes,
somewhere to sleep that first night.

00:01:10,000 --> 00:01:12,800
We will never forget that.
Never.
```

---

**Translator's note:**
All three blocks fall within the 42-character-per-line limit. Block 2: "Los vecinos" is rendered as "Neighbours" (British English spelling assumed for festival submission; change to "Neighbors" for US delivery). "Un lugar donde dormir" is condensed from "a place where we could sleep" to "somewhere to sleep" to preserve the line limit without altering meaning — no flag required. Block 3: The speaker's deliberate repetition of "Nunca / Nunca" is preserved as "Never / Never" — this is a rhetorical choice in the source and should not be merged into a single line.

## Known Limitations
- Claude cannot verify that the reading speed is appropriate for the exact display duration without being given the timecodes — provide full timecode data, not just the text, for accurate assessment
- Languages that expand significantly in translation (Arabic, German, Finnish) may require more condensation than languages closer to English in syntactic structure; Claude will always flag where condensation occurred, but a native-speaking subtitle editor should review any block that was substantially shortened
- Claude does not produce SRT, VTT, or other file formats — it returns plain text blocks in the format shown above, which must be pasted into a subtitle editor or converted by your post-production workflow
- Right-to-left languages (Arabic, Hebrew) require additional formatting attention in the subtitle editor; Claude will translate the text correctly but cannot control rendering direction in the final file
- Always verify with a native speaker before delivery, and always do a final sync check against picture before submitting to a broadcaster or festival

## Related Skills
- [article-translator](./article-translator.md)
- [voice-over-translator](./voice-over-translator.md)
- [quote-translator](./quote-translator.md)

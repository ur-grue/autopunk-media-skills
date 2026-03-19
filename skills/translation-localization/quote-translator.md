---
name: quote-translator
status: beta
category: translation-localization
subcategory: writing
version: 1.0
eval_score: null
tags: [translation, quotes, interview, register, tone]
---

# Quote Translator

## What This Skill Does
Translates interview quotes from one language to another while preserving the speaker's register, emotional tone, and rhetorical character — not just the literal meaning.

## When To Use This Skill
- You have recorded or transcribed interview quotes in a foreign language and need accurate translations for publication
- A source spoke in a mix of languages and you need consistent English (or target-language) versions for print or broadcast
- You are working with translated quotes from a wire agency and want a second rendering that captures how the speaker actually sounds
- You need to translate a quote that contains slang, regional expressions, or strong emotion without flattening it into neutral prose

## What You Need To Provide
**Required:** The original quote in the source language; the source language; the target language; a one-sentence description of the speaker (role, age range, context — e.g. "local fisherman, 60s, speaking about the destruction of his livelihood")

**Optional:** The question that prompted the quote; surrounding transcript for context; the publication's house style (formal newspaper, conversational podcast, documentary narration); any glossary terms that must be preserved exactly

## How Claude Approaches This
1. Read the full quote and identify register markers — formality level, contractions, hesitations, repetition, emotional intensity, rhetorical emphasis — before translating a single word
2. Produce a primary translation that transfers meaning while carrying those same register markers into the target language; if the speaker sounds exhausted and clipped in the original, the translation sounds exhausted and clipped
3. Flag any phrase where a literal translation would misrepresent tone or mislead readers — idioms, false friends, culturally loaded terms — and offer a brief note explaining the choice made
4. If the original contains grammatical errors or unconventional speech patterns that reveal the speaker's character, preserve them in the translation rather than correcting them (unless the publication's style requires otherwise, which Claude will note)

## Output Format
- The translated quote set in quotation marks, ready to paste directly into copy
- A brief translator's note (two to four sentences) covering any significant interpretive decisions, false cognates avoided, or emotional nuances that required departure from a word-for-word rendering
- If multiple valid translations exist with meaningfully different tones, present two options and explain the difference

Tone of the translator's note: plain professional English, no jargon. Written for a journalist, not a linguist.

## Quality Criteria
- [ ] The translated quote reads as something a real person would say in the target language — not as a sentence constructed in the source language and swapped word for word
- [ ] The speaker's register is preserved: informal stays informal, urgent stays urgent, hesitant stays hesitant
- [ ] Any idioms, regional expressions, or culturally loaded terms are handled explicitly — not silently smoothed over
- [ ] The translator's note is honest about where choices were made and why
- [ ] The output can be handed to a sub-editor without further explanation

## Example

### Input
**Source language:** Spanish
**Target language:** English
**Speaker:** Community organiser, early 40s, speaking at a press conference after a local water contamination ruling

**Original quote:**
"Mira, llevamos tres años gritando esto, tres años. Y nos decían que estábamos exagerando, que éramos alarmistas. ¿Y ahora qué? Ahora el juez dice lo que nosotros decíamos desde el principio. Pero el daño ya está hecho, ¿no?"

**Context question asked:** "How do you feel about today's court ruling?"

### Output

**Translated quote:**
"Look, we've been shouting this for three years — three years. And they told us we were exaggerating, that we were alarmists. And now what? Now the judge is saying exactly what we said from the beginning. But the damage is already done, isn't it."

---

**Translator's note:**
The speaker's repetition of "three years" and the staccato rhythm of short rhetorical questions are deliberate features of the original — they convey controlled anger and exhaustion. The translation preserves that structure rather than consolidating sentences into smoother prose. The closing "¿no?" functions as a bleak rhetorical appeal; it has been rendered as "isn't it" with a period rather than a question mark to capture the speaker's flat, resigned delivery. "Alarmistas" is a direct cognate and has been kept as "alarmists" — it carries the same dismissive connotation in both languages.

## Known Limitations
- Claude cannot verify the accuracy of proper nouns, technical terms, legal terminology, or place names that appear in a quote — these must be checked by a reporter or native-speaking editor before publication
- For languages with formal/informal second-person distinctions (Spanish tú/usted, French tu/vous, German du/Sie), Claude will make a judgment call based on the context provided, but a native speaker should confirm whether the choice reflects how the speaker actually communicates
- Dialect, heavy accent, or code-switching in the original may produce multiple plausible translations; Claude will flag these cases but cannot resolve them without additional context
- Always verify with a native speaker before publication, particularly for quotes that will be attributed by name

## Related Skills
- [article-translator](./article-translator.md)
- [subtitle-translator](./subtitle-translator.md)
- [voice-over-translator](./voice-over-translator.md)

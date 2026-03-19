---
name: voice-over-translator
status: beta
category: translation-localization
subcategory: translation-localization
version: 1.0
eval_score: null
tags: [translation, voice-over, dubbing, timing, localization, broadcast]
---

# Voice-Over Translator

## What This Skill Does
Translates a voice-over script into a target language while preserving the approximate speech duration and natural delivery rhythm of the original, so the translated audio fits the existing picture edit without re-cutting.

## When To Use This Skill
- When a finished documentary, news package, or corporate film needs a voice-over in a second language and the picture lock cannot be changed
- When dubbing a narrator track for international broadcast or festival distribution
- When translating a voice-over for a YouTube or social media video where on-screen timing — such as graphics, cuts, or subtitles — is already fixed
- When a translated script keeps running long or short and needs to be adjusted to match the original's pace before the recording session

## What You Need To Provide
**Required:** The complete source-language voice-over script. The target language. The total duration of the voice-over in minutes and seconds (or timecode in and out points for each section).

**Optional:** A project terminology glossary, if one exists. The narrator's delivery style (conversational, authoritative, soft documentary, urgent news). Notes on any lines the director considers "locked" (cannot be shortened) or "flexible" (can be paraphrased). Speaker gender, which affects translation in gendered languages.

## How Claude Approaches This
1. Reads the source script and estimates the word count per segment relative to the declared duration, establishing a target speech rate in the target language. Speech rates vary by language — Spanish and French typically run 15–20% longer than equivalent English; German runs shorter; Japanese requires different rhythm handling — and Claude accounts for this in the translation.
2. Translates each line for meaning first, then tests the translated line against the available time by estimating syllable count and natural delivery pace. Lines that translate long are condensed by finding shorter synonyms, removing non-essential qualifiers, or restructuring the sentence — always within the boundaries of editorial accuracy.
3. Lines that translate short are given natural expansion — adding a clarifying phrase, a geographic or contextual note — so the narrator is not left with silence before the next cut. The final script is annotated with timing guidance so the narrator and director can spot any lines that still need adjustment before the recording session.

## Output Format
The translated script presented as a two-column table: Original Line | Translated Line. Each row corresponds to one script segment or paragraph. A "Duration Note" column flags any segment where Claude judges the timing tight or loose. After the table, a short Translator's Notes section explaining any editorial decisions — condensed lines, paraphrased passages, terms left untranslated. Total output length mirrors the source script length. Register and tone match the requested delivery style.

## Quality Criteria
- [ ] Every segment of the source script is translated — nothing is omitted
- [ ] Translated lines approximate the syllable count and delivery pace of the source line, within a 10% margin
- [ ] No line sacrifices editorial accuracy in order to hit timing — all condensations are flagged in Translator's Notes
- [ ] Proper nouns, technical terms, and named locations match any provided glossary
- [ ] The script reads naturally when spoken aloud — no awkward syntax caused by length-fitting
- [ ] Timing-tight and timing-loose lines are clearly flagged for the director's attention
- [ ] Always verify with a native speaker before the recording session

## Example

### Input
**Source language:** English
**Target language:** Spanish (Latin American)
**Total duration:** 1 minute 45 seconds (105 seconds)
**Delivery style:** Authoritative documentary narrator
**No glossary provided**

**Source script:**

> [00:00–00:18]
> In the summer of 2021, a heatwave swept across the western coast, pushing temperatures to levels not recorded in over a century. Farmers watched their crops fail within days. Reservoirs that had supplied cities for generations dropped to critically low levels.

> [00:18–00:34]
> Emergency water restrictions were introduced across eleven municipalities. Residents were asked to cut consumption by forty percent. Many could not.

> [00:34–01:05]
> Scientists had warned that events like this would become more frequent. What surprised them was how fast. Models had predicted a gradual increase in extreme heat events over decades. The data from that summer compressed those projections into a single season.

> [01:05–01:45]
> The region has spent the years since rebuilding — not just its water infrastructure, but its assumptions about what the climate will demand. New reservoirs are under construction. Ancient irrigation techniques, once abandoned, are being studied again. Whether these measures will be enough remains an open question.

### Output

## Voice-Over Translation — English → Latin American Spanish
**Duration:** 1 minute 45 seconds
**Style:** Authoritative documentary narrator

| Time | Original (EN) | Translation (ES) | Duration Note |
|---|---|---|---|
| 00:00–00:18 | In the summer of 2021, a heatwave swept across the western coast, pushing temperatures to levels not recorded in over a century. Farmers watched their crops fail within days. Reservoirs that had supplied cities for generations dropped to critically low levels. | En el verano de 2021, una ola de calor barrió la costa occidental, llevando las temperaturas a niveles no registrados en más de un siglo. Los agricultores vieron sus cosechas arruinarse en cuestión de días. Los embalses que habían abastecido ciudades durante generaciones cayeron a niveles críticamente bajos. | Slightly long — narrator should deliver at a measured pace. |
| 00:18–00:34 | Emergency water restrictions were introduced across eleven municipalities. Residents were asked to cut consumption by forty percent. Many could not. | Se implementaron restricciones de emergencia en once municipios. Se pidió a los residentes que redujeran el consumo en un cuarenta por ciento. Muchos no pudieron. | On time. |
| 00:34–01:05 | Scientists had warned that events like this would become more frequent. What surprised them was how fast. Models had predicted a gradual increase in extreme heat events over decades. The data from that summer compressed those projections into a single season. | Los científicos habían advertido que eventos como este se volverían más frecuentes. Lo que los sorprendió fue la velocidad. Los modelos predecían un aumento gradual de las olas de calor a lo largo de décadas. Los datos de ese verano comprimieron esas proyecciones en una sola temporada. | On time. |
| 01:05–01:45 | The region has spent the years since rebuilding — not just its water infrastructure, but its assumptions about what the climate will demand. New reservoirs are under construction. Ancient irrigation techniques, once abandoned, are being studied again. Whether these measures will be enough remains an open question. | La región ha pasado los años siguientes reconstruyéndose — no solo su infraestructura hídrica, sino también sus expectativas sobre lo que el clima exigirá. Nuevos embalses están en construcción. Técnicas de irrigación ancestrales, abandonadas hace tiempo, vuelven a ser estudiadas. Si estas medidas serán suficientes es una pregunta que aún no tiene respuesta. | Slightly long — condense "es una pregunta que aún no tiene respuesta" to "sigue sin respuesta" if time is tight. |

### Translator's Notes

**Segment 00:00–00:18 — slight length:** Spanish naturally runs longer than English. The line is accurate and readable; recommend a deliberate but unhurried delivery. If picture timing is critical, "llevando las temperaturas a niveles no registrados en más de un siglo" can be shortened to "con temperaturas no vistas en más de un siglo."

**Segment 01:05–01:45 — final line:** The full translation ("es una pregunta que aún no tiene respuesta") is the most natural phrasing. The condensed alternative ("sigue sin respuesta") saves approximately 1.5 seconds and is offered only if the editor judges timing critical.

**"Reservoirs" → "embalses":** Standard Latin American usage. In some regions "represas" or "depósitos" are preferred. Confirm with the regional broadcaster.

**No glossary was provided.** If this project has approved terminology for climate or water-management terms, the glossary should be applied before the recording session.

## Known Limitations
- Syllable-count estimation is a guide, not a precise measurement. Actual recording duration depends on the narrator's delivery speed, breath patterns, and the director's pacing decisions. A table read with the narrator before the session is always recommended.
- Languages with grammatical gender (Spanish, French, Portuguese, Italian) require knowing the narrator's gender for correct agreement. If not specified, Claude defaults to masculine forms and flags this in the notes.
- Highly technical scripts — medical, legal, scientific — may require terminology review by a subject-matter expert before the recording session, regardless of translation quality.
- Claude cannot account for mouth sync requirements in lip-synced dubbing (where the translated audio must match the on-screen speaker's lip movements). This skill is designed for voice-over and narrator-track translation only, not full dubbing replacement.
- Always verify the final translated script with a native speaker before the recording session.

## Related Skills
- [translation-glossary-creator](./translation-glossary-creator.md)
- [subtitle-translator](./subtitle-translator.md)
- [dubbing-script-adapter](../tv-documentary/localization/dubbing-script-adapter.md)

---
name: article-translator
status: beta
category: translation-localization
subcategory: articles
version: 1.0
eval_score: null
tags: [translation, journalism, articles, localization, multilingual]
---

# Article Translator

## What This Skill Does
Translates a full journalistic article from one language to another while preserving the original tone, structure, and editorial voice.

## When To Use This Skill
- You have an article in one language and need a publication-ready version in another
- Your publication runs editions in multiple languages and needs consistent translation quality
- A wire story or partner publication has sent content in a foreign language you need to publish locally
- You are preparing a translated version of your own article for international distribution

## What You Need To Provide
**Required:** The full article text in the source language. The source language name. The target language name.

**Optional:** Target publication name and its typical editorial voice (formal, conversational, tabloid, broadsheet). Any specific terminology or names that must not be translated. A note on whether the article is for print, web, or broadcast — this affects sentence length and rhythm. Any house style preferences for the target language (e.g., date formats, currency symbols, title capitalisation rules).

## How Claude Approaches This
1. Reads the full source article to understand structure, argument, tone, and any culturally specific references before translating a single word.
2. Translates section by section — headline, standfirst, body paragraphs, captions — keeping the same editorial flow and preserving the journalist's voice rather than producing a generic literal rendering.
3. Flags any passages that contain idioms, cultural references, legal terms, or proper nouns that require a human editorial decision, listing them at the end of the translation with a brief note on the issue.

## Output Format
Full translated article in the same structural order as the original: headline, standfirst (if present), byline placeholder, body text, captions. Approximate length matches the source. Followed by a short "Translator's Notes" section listing any flagged terms or phrases that need human review before publication. Tone mirrors the source — formal broadsheet articles stay formal, conversational features stay conversational.

## Quality Criteria
- [ ] Headline reads naturally in the target language, not as a word-for-word carry-over from the source
- [ ] No sentences have been added or omitted — the translated article covers the same ground as the original
- [ ] Proper nouns, statistics, and direct quotes are reproduced exactly and not paraphrased
- [ ] Idioms and culturally specific references are either adapted or flagged — never left as literal nonsense
- [ ] Translator's Notes section is present and identifies any passage requiring human editorial review
- [ ] Tone and register of the translation match the source material

## Example

### Input
Source language: Spanish
Target language: English
Target publication voice: Broadsheet, formal

Article text:

**El agua que desaparece**

*Las comunidades del interior de la provincia sufren la peor sequía en cuatro décadas. Los expertos advierten que el problema no es climático: es político.*

Por Elena Vargas

Tres años sin lluvia suficiente habrían bastado para tensar los nervios de cualquier agricultor. Pero en el Valle de Montserrat, los campesinos llevan cuatro décadas conviviendo con una infraestructura hídrica diseñada para otra época y otra población. El embalse de Portorreal, construido en 1978 con capacidad para 40 millones de metros cúbicos, apenas retiene hoy el 12 por ciento de ese volumen.

"No es que no llueva", dice Ramón Feliu, presidente de la cooperativa agraria local. "Es que el agua que cae no llega donde tiene que llegar."

La Consejería de Medio Ambiente lleva cinco años anunciando una reforma integral del sistema de canales. Hasta la fecha, sólo se ha ejecutado el ocho por ciento de las obras previstas.

### Output
**The Disappearing Water**

*Communities in the province's interior are enduring the worst drought in four decades. Experts warn that the problem is not climatic — it is political.*

By Elena Vargas

Three years of insufficient rainfall would have been enough to fray the nerves of any farmer. But in the Montserrat Valley, smallholders have spent four decades contending with a water infrastructure designed for a different era and a different population. The Portorreal reservoir, built in 1978 with a capacity of 40 million cubic metres, now holds barely 12 per cent of that volume.

"It isn't that it doesn't rain," says Ramón Feliu, president of the local farming cooperative. "It's that the water that does fall never reaches the places it needs to reach."

The regional Environment Ministry has spent five years announcing a comprehensive overhaul of the canal network. To date, only eight per cent of the planned works have been completed.

---

**Translator's Notes**

- *Consejería de Medio Ambiente* — translated as "regional Environment Ministry." Verify whether your style guide prefers this rendering or a more literal "Department of the Environment."
- *Cooperativa agraria* — rendered as "farming cooperative." If the piece is destined for an agricultural specialist audience, the more precise "agrarian cooperative" may be preferred.
- *Valle de Montserrat / Portorreal* — left in Spanish as proper nouns. Confirm with editors whether to add a geographic clarification (e.g., "the Montserrat Valley in [region name]") for readers unfamiliar with the region.

## Known Limitations
- Claude's translation quality varies significantly by language pair. Spanish-English, French-English, and German-English translations are generally strong; translations involving less-resourced languages (e.g., Swahili, Bengali, Welsh) should be treated as rough drafts and always verified with a native speaker before publication.
- Claude does not have access to your publication's specific style guide. Supply it explicitly if you need house style applied (e.g., Oxford comma rules, number formatting, title capitalisation).
- Legal language, medical terminology, and regulatory references require verification by a qualified professional regardless of translation quality. Claude will flag these but cannot guarantee accuracy in specialist domains.
- Claude cannot verify whether proper nouns — government bodies, geographic names, institutional titles — have an established official translation in the target language. Always check official sources for these.

## Related Skills
- [press-release-translator](./press-release-translator.md)
- [cultural-adaptation-brief](./cultural-adaptation-brief.md)
- [quote-translator](./quote-translator.md)
- [subtitle-translator](./subtitle-translator.md)

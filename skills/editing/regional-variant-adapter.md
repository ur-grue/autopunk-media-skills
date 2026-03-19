---
name: regional-variant-adapter
status: beta
category: editing
subcategory: editing
version: 1.0
eval_score: null
tags: [editing, localization, british-english, american-english, australian-english, regional-language]
---

# Regional Variant Adapter

## What This Skill Does
Converts a piece of text from one regional variety of English — or another language with regional variants — into another, covering spelling, vocabulary, idiom, punctuation conventions, and register differences between regional standards.

## When To Use This Skill
- When a US-based article needs to be published on a UK or Australian platform without sounding foreign
- When a UK production is delivering scripts or subtitles to a North American distributor
- When a broadcaster needs a single article adapted into two or three regional versions for different markets simultaneously
- When a journalist from one English-speaking country is filing for a masthead in another and wants to pre-adapt their copy before it reaches the sub-desk

## What You Need To Provide
**Required:** The full text to be adapted; the source variant (for example, British English); the target variant (for example, American English or Australian English).
**Optional:** Any house style rules that override standard regional conventions (for example, "we use -ise spellings even on the US site"); a list of proper nouns, brand names, or trademarked terms that must not be changed regardless of regional norms.

## How Claude Approaches This
1. Identifies the source variant by reading the text and confirming it against the stated source, flagging any inconsistencies already present in the original.
2. Works through the text systematically across four layers: (a) **spelling** — variant spellings such as -ise/-ize, colour/color, centre/center, travelling/traveling; (b) **vocabulary** — terms that differ by region, such as "lorry" to "truck," "full stop" to "period," "fortnight" (no direct American equivalent — handled case by case); (c) **idiom and reference** — phrases or cultural shorthand that will read as foreign in the target market; (d) **punctuation and number conventions** — Oxford comma practices, date formats (1 March vs March 1), and currency symbol placement.
3. For items with no clean one-to-one equivalent (for example, British "fortnight," Australian "arvo"), Claude chooses the closest natural target-language equivalent and notes the substitution in the report.
4. Returns a change log and a fully adapted clean text.

## Output Format
Two sections:

**Section 1 — Change log:** A table with four columns: original text, adapted text, category of change (spelling / vocabulary / idiom / punctuation), and a brief note where the change is not straightforward. Only changes are listed — unchanged passages are not included.

**Section 2 — Adapted text:** The complete adapted text, formatted identically to the original (paragraph breaks, headings, any markdown or script formatting preserved). Ready to publish or hand to an editor.

## Quality Criteria
- [ ] Every spelling variant in the source is converted to the target standard consistently throughout — no mixed spellings in the output
- [ ] Vocabulary and idiom substitutions read as natural to a native speaker of the target variant, not as word-for-word replacements
- [ ] Proper nouns, brand names, and protected terms provided by the user are left unchanged
- [ ] Punctuation and number conventions (date format, currency, Oxford comma) match the target regional standard
- [ ] The change log accounts for every modification so the journalist can audit and override individual decisions

## Example

### Input
**Source variant:** British English
**Target variant:** American English
**Do not change:** "Transport for London," "Oyster card"

> The Department for Transport has published its latest travel statistics, revealing that the number of passengers using public transport in Britain's major cities rose by nearly a third last year. The figures, which were analysed by an independent consultancy and published on its website at the weekend, show a pronounced upturn in both rail and bus patronage. Transport for London, which operates the city's Underground, buses, and overground services, said it had seen a fortnight of record ridership during the summer holidays. Travellers using an Oyster card accounted for roughly four-fifths of all journeys. A spokesperson said the organisation was "cautiously optimistic" that the trend would continue, though they acknowledged that industrial action by drivers next month could disrupt services. The full report, running to 140 pages, is available to download from the department's website in PDF format.

### Output

**Section 1 — Change log**

| Original | Adapted | Category | Note |
|---|---|---|---|
| Department for Transport | Department of Transportation | Vocabulary | US federal naming convention |
| Britain's | the UK's | Vocabulary | "Britain" is less common in American usage for formal institutional references; "the UK" is the standard neutral equivalent |
| were analysed | were analyzed | Spelling | -ise → -ize |
| at the weekend | over the weekend | Idiom | "At the weekend" is British; "over the weekend" is standard American usage |
| pronounced upturn | marked upturn | Vocabulary | "Pronounced" in this sense is less common in American journalistic usage; "marked" is the neutral equivalent |
| rail and bus patronage | rail and bus ridership | Vocabulary | "Patronage" for transit use is a British formulation; "ridership" is standard American |
| a fortnight of | two weeks of | Vocabulary | "Fortnight" has no common American equivalent; replaced with the literal duration |
| summer holidays | summer break | Vocabulary | "Holidays" for the school recess period is British; "summer break" or "summer vacation" is standard American — "summer break" chosen as more neutral for a news register |
| Travellers | Travelers | Spelling | Double-l → single-l |
| accounted for roughly four-fifths | accounted for roughly four-fifths | — | No change — fraction format consistent across variants |
| organisation | organization | Spelling | -ise → -ize, -isation → -ization |
| industrial action by drivers | strike action by drivers | Vocabulary | "Industrial action" is the standard British term; American readers use "strike action" or simply "a strike" — "strike action" retained to preserve the uncertainty about whether a full strike will occur |
| running to 140 pages | running to 140 pages | — | No change |
| in PDF format | in PDF format | — | No change |

**Section 2 — Adapted text**

The Department of Transportation has published its latest travel statistics, revealing that the number of passengers using public transport in the UK's major cities rose by nearly a third last year. The figures, which were analyzed by an independent consultancy and published on its website over the weekend, show a marked upturn in both rail and bus ridership. Transport for London, which operates the city's Underground, buses, and overground services, said it had seen two weeks of record ridership during the summer break. Travelers using an Oyster card accounted for roughly four-fifths of all journeys. A spokesperson said the organization was "cautiously optimistic" that the trend would continue, though they acknowledged that strike action by drivers next month could disrupt services. The full report, running to 140 pages, is available to download from the department's website in PDF format.

## Known Limitations
- This skill covers British English, American English, and Australian English with high reliability. Other regional variants (Canadian English, South African English, Indian English) are supported but with lower precision — always review the change log carefully for those targets.
- This skill does not translate between languages. It adapts between regional varieties of the same language only.
- Cultural references embedded in the text — allusions to institutions, public figures, or events that are regionally specific — are flagged in the change log but not automatically replaced. Replacing them requires editorial judgement that must stay with the journalist.
- This skill covers published prose, broadcast scripts, and subtitles. Legal and regulatory documents have regional conventions beyond spelling and vocabulary; do not use this skill as the sole review for legal copy.
- Heavily idiomatic or colloquial text (opinion columns, first-person essays) may require more manual review than hard news copy — idiom is harder to adapt cleanly at scale.

## Related Skills
- [translation-accuracy-reviewer](../editing/translation-accuracy-reviewer.md)
- [tone-consistency-checker](../editing/tone-consistency-checker.md)
- [copy-editor](../editing/copy-editor.md)
- [multi-author-harmoniser](../editing/multi-author-harmoniser.md)

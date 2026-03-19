---
name: translation-glossary-creator
status: beta
category: translation-localization
subcategory: translation-localization
version: 1.0
eval_score: null
tags: [translation, glossary, terminology, localization, consistency]
---

# Translation Glossary Creator

## What This Skill Does
Produces a structured source-language to target-language glossary of domain-specific terms, names, and recurring phrases to ensure consistent translation across an entire project.

## When To Use This Skill
- At the start of a documentary, series, or long-form journalism project that will be translated into one or more languages
- When multiple translators or dubbing studios are working on the same project and need to use identical terminology
- When a subject area has specialised vocabulary — science, law, economics, medicine, military — where inconsistent translation could mislead the audience
- When revisiting an existing project for a new language version and need to lock terminology before any new translation work begins

## What You Need To Provide
**Required:** A representative sample of source-language text — script excerpts, interview transcripts, or article sections totalling at least 300 words. The target language. The media format (documentary, news report, magazine article, podcast, etc.).

**Optional:** Names of key people, organisations, and locations that appear throughout the project. Any terms already translated and approved by the editorial team. Style preferences (e.g. formal register, region-specific spelling such as European vs. Latin American Spanish).

## How Claude Approaches This
1. Reads all provided source text and identifies every term likely to cause inconsistency: technical vocabulary, proper nouns, branded names, recurring thematic phrases, and any word with multiple plausible translations.
2. For each term, selects the most accurate and contextually appropriate target-language equivalent, noting when regional variants exist or when the term should be left untranslated.
3. Delivers the glossary in a clean two-column table (source → target) with a short note for any entry that requires editorial judgement — for example, a term with no direct equivalent, or a name with an established local spelling.

## Output Format
A two-column markdown table: Source Term | Target Translation. One row per term. After the table, a short Notes section explaining any flagged entries. Total length depends on source material but typically 20–60 rows. Register and tone follow the project's editorial style. No footnotes or academic apparatus — written to be immediately usable by a translator or dubbing artist.

## Quality Criteria
- [ ] Every term in the glossary appears in the source text provided
- [ ] Target translations are contextually accurate, not literal word-for-word substitutions where idiom differs
- [ ] Proper nouns (people, organisations, locations) are handled consistently and follow established local conventions where applicable
- [ ] Flagged entries include a plain-English note explaining the editorial decision required
- [ ] The glossary is free of duplicates and alphabetically ordered for quick lookup
- [ ] Verify with native speaker before broadcast

## Example

### Input
**Source language:** English
**Target language:** French
**Format:** TV documentary (3-part series on urban food systems)
**Sample text:**

> "The city's food sovereignty movement gained traction after the 2019 supply-chain disruption. Community land trusts began converting vacant lots into urban farms, while food hubs — centralised distribution points run by cooperatives — took over from traditional wholesalers. The mayor's office launched a 'farm-to-table' initiative to link smallholders directly to school canteens. Critics argue the programme prioritises optics over food justice for the city's low-income neighbourhoods."

**Additional terms to include:** food sovereignty, urban farm, food hub, supply chain, community land trust, smallholder, farm-to-table, food justice, cooperative, wholesaler, canteen, low-income neighbourhood.

### Output

## Project Glossary — Urban Food Systems Documentary
**Language pair:** English → French
**Prepared for:** Series translation and dubbing

| Source Term (EN) | Target Translation (FR) |
|---|---|
| canteen | cantine |
| community land trust | foncière solidaire |
| cooperative | coopérative |
| farm-to-table | de la ferme à la table |
| food hub | hub alimentaire |
| food justice | justice alimentaire |
| food sovereignty | souveraineté alimentaire |
| low-income neighbourhood | quartier populaire |
| smallholder | petit exploitant agricole |
| supply chain | chaîne d'approvisionnement |
| supply-chain disruption | rupture de la chaîne d'approvisionnement |
| urban farm | ferme urbaine |
| vacant lot | terrain vague |
| wholesaler | grossiste |

### Notes

**community land trust → foncière solidaire:** No standard French equivalent exists. "Foncière solidaire" is the term used by French urban policy organisations and will be recognised by informed viewers. An on-screen text explanation is recommended on first use.

**farm-to-table:** The phrase is increasingly used as-is in French media contexts, particularly in lifestyle journalism. If the editorial team prefers a fully French version, "de la ferme à la table" is the standard rendering. Confirm with the series editor.

**low-income neighbourhood → quartier populaire:** Preferred over the more clinical "quartier à faibles revenus," which does not reflect natural French editorial usage. Consistent with public broadcaster style guides.

**food hub → hub alimentaire:** "Hub" is an established anglicism in French logistics and food-system journalism. No substitution recommended.

## Known Limitations
- Claude identifies terms from the sample text provided; terms that appear only in sections not shared will be missed. Provide as broad a sample as possible.
- Regional variation is flagged but not automatically resolved — a French glossary does not distinguish between French, Belgian, and Swiss usage without explicit guidance. Specify the target region.
- Claude cannot verify whether a proposed translation matches an organisation's existing official terminology. Always cross-check proper nouns against the organisation's own French-language materials.
- Always verify the complete glossary with a native-speaker translator before distribution to dubbing studios or external translators.

## Related Skills
- [voice-over-translator](./voice-over-translator.md)
- [subtitle-translator](./subtitle-translator.md)
- [article-translator](./article-translator.md)

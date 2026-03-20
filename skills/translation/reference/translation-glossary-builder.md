---
name: translation-glossary-builder
status: stable
category: translation
subcategory: reference
version: 1.0
eval_score: 4.44
tags: [translation, glossary, terminology, consistency, reference, localization]
---

# Translation Glossary Builder

## What This Skill Does
Creates a structured bilingual or multilingual glossary of key terms for a project, organization, or subject area, ensuring consistent translation across all deliverables.

## When To Use This Skill
- You are beginning a multi-document translation project and need to lock terminology before translators start work
- Your organization produces content in multiple languages and needs a single source of truth for branded terms, titles, and recurring phrases
- You are onboarding a new translator or translation vendor and need to provide a reference glossary specific to your subject area
- You want to standardize how technical, legal, or industry terms are translated across your newsroom's foreign-language editions

## What You Need To Provide
**Required:** The source language; the target language(s); the subject area or project context (e.g., "renewable energy company press materials," "investigative series on agricultural trade"); a sample of source-language text or a list of key terms to include.

**Optional:** Existing translations you want to keep (approved terms that must appear in the glossary as-is); terms that must never be translated (brand names, trademarks, proper nouns); preferred register (formal institutional, journalistic, conversational); any existing style guides or glossaries to build upon; the number of terms needed (small project glossary vs. comprehensive organizational glossary).

## How Claude Approaches This
1. **Extracts key terminology from the provided text or list.** Identifies proper nouns, technical terms, recurring phrases, acronyms, titles, and any domain-specific language that requires consistent translation. Groups related terms (e.g., a product name and its description, an acronym and its expansion).

2. **Researches standard translations for each term.** For technical and industry terms, uses the most widely accepted translation in the target language's professional literature. For terms with multiple valid translations, lists the preferred option and notes alternatives with usage context (e.g., "used in EU regulatory documents" vs. "used in Latin American media").

3. **Applies user-specified constraints.** Locks any terms the user has pre-approved. Flags terms marked as untranslatable and includes them in the glossary with a "Do Not Translate" note. Respects the specified register throughout — a glossary for formal institutional communications uses different translation choices than one for conversational digital content.

4. **Structures the glossary for practical use.** Organizes entries alphabetically by source-language term. Each entry includes: source term, approved translation, part of speech or usage category, context note (when and where to use this translation), and any alternatives with guidance on when each is appropriate.

5. **Adds a usage guide header.** Includes a brief note at the top of the glossary explaining its scope, the languages covered, and instructions for translators on how to use it (e.g., "If a term is not in this glossary, flag it for the project lead rather than choosing a translation independently").

## Output Format
A structured table or list, organized alphabetically by source term. Each entry contains: source term | approved translation | category (technical, brand, title, acronym, general) | context note. A header section at the top states the project name, languages, date created, and usage instructions. For glossaries of 20+ terms, entries are grouped by category with sub-headings. Tone of the context notes: precise and instructive, written for a working translator.

```
**Project:** [Name]
**Languages:** [Source] → [Target]
**Created:** [Date]
**Usage:** [Brief instruction]

| Source Term | Translation | Category | Context / Notes |
|---|---|---|---|
| Term | Translation | Category | When and how to use |
```

## Quality Criteria
- [ ] Every term has a single approved translation — no entry left with "TBD" or multiple unmarked options
- [ ] Alternatives are listed where relevant, with clear guidance on when to use each
- [ ] Brand names and untranslatable terms are explicitly flagged as "Do Not Translate"
- [ ] Context notes are specific enough for a translator unfamiliar with the project to apply them correctly
- [ ] The glossary is organized for quick lookup — alphabetical with category groupings for large glossaries
- [ ] Register is consistent across all entries (formal glossary uses formal translations throughout)
- [ ] Header includes clear usage instructions for translators

## Example

### Input
**Source language:** English
**Target language:** French
**Subject area:** Renewable energy company — press materials, investor communications, and website content
**Register:** Formal institutional
**Sample text:** "Solarvio AG develops proprietary coating technologies that increase solar panel energy yield by up to 18%. The company's Series C funding round was led by Nordic Ventures. The new Brandenburg manufacturing facility will produce coated panels at scale."

**Pre-approved terms:**
- "Solarvio AG" — do not translate
- "Nordic Ventures" — do not translate

### Output

**Project:** Solarvio AG — Multilingual Communications Glossary
**Languages:** English → French
**Created:** March 2026
**Usage:** This glossary is the binding reference for all Solarvio press materials, investor documents, and web content translated into French. If a term appears in this glossary, use the approved translation exactly as shown. If you encounter a term not listed here, flag it for the communications team before selecting a translation.

| Source Term | Translation | Category | Context / Notes |
|---|---|---|---|
| Brandenburg manufacturing facility | site de production de Brandebourg | Location | Use "site de production" (not "usine") in all external communications — consistent with Solarvio's preferred framing of the facility as a technology site, not a factory. |
| coated panels | panneaux revetus | Technical | "Revetus" preferred over "traites" — "traites" implies chemical treatment, which is inaccurate for Solarvio's coating process. |
| coating technology | technologie de revetement | Technical | Always singular "technologie" even when referring to multiple products — Solarvio positions this as a unified technology platform. |
| energy yield | rendement energetique | Technical | Standard photovoltaic industry term in French. Do not use "production d'energie" (which refers to total output, not efficiency gain). |
| manufacturing facility | site de production | General | See "Brandenburg manufacturing facility" above. Use "site de production" in all contexts. |
| Nordic Ventures | Nordic Ventures | Brand | **Do Not Translate.** Retain English name in all French-language materials. |
| proprietary | proprietaire | Legal | In investor documents, "brevete" (patented) may be more appropriate if referring to patented technology specifically — confirm with legal team on a case-by-case basis. |
| Series C funding round | tour de financement de Serie C | Financial | "Serie C" is the standard French-language convention for venture capital rounds. "Tour de table" is an acceptable alternative in informal contexts but not in press releases. |
| Solarvio AG | Solarvio AG | Brand | **Do Not Translate.** Retain full legal name including "AG" in all French-language materials. |
| solar panel | panneau solaire | Technical | Standard term. Do not abbreviate to "PV" in press materials (acceptable in technical documents only). |

---

**Additional Notes for Translators**
- Percentages: Use the format "18 %" with a non-breaking space before the percent sign, per French typographic convention.
- Currency: Render "$45 million" as "45 millions de dollars americains (USD)" on first mention, then "45 M USD" in subsequent references.
- Compound nouns: French does not hyphenate compound nouns the way German does. "Series-C-Finanzierungsrunde" in German becomes "tour de financement de Serie C" in French — no hyphens.

## Known Limitations
- Claude builds glossaries based on general knowledge of industry terminology and standard translation practice. For highly specialized or proprietary terms, the approved translations should be confirmed by a subject-matter expert in the target language before the glossary is distributed to translators.
- A glossary is only as complete as the sample text provided. If the source material does not contain all relevant terms, the glossary will have gaps. Provide the broadest representative sample available, or supplement with a list of additional terms to include.
- This skill creates a static glossary at a point in time. Terminology evolves — especially in technology and regulatory contexts. Schedule periodic reviews to update entries as usage changes.

## Related Skills
- [article-translator](../text/article-translator.md) — translate articles using this glossary as a reference
- [press-release-translator](../institutional/press-release-translator.md) — translate press releases with consistent corporate terminology
- [translation-reviewer](../quality/translation-reviewer.md) — review translations for glossary compliance
- [regional-variant-adapter](../localization/regional-variant-adapter.md) — adapt glossary entries for regional variants of the target language

---
name: press-release-translator
status: stable
category: translation
subcategory: institutional
version: 1.0
eval_score: 4.50
tags: [translation, press-release, institutional, corporate, multilingual, localization]
---

# Press Release Translator

## What This Skill Does
Translates a complete press release from one language to another, preserving corporate terminology, regulatory phrasing, and newswire formatting conventions appropriate to the target market.

## When To Use This Skill
- Your communications team has approved a press release in one language and needs identical versions in other languages for simultaneous distribution
- You received a press release from a foreign partner organization and need an accurate English-language version for your newsroom or media monitoring
- You are distributing a release through regional wire services that require native-language versions (not machine-translated copy)
- You need to translate a release while maintaining approved legal and regulatory language that must not be paraphrased

## What You Need To Provide
**Required:** The complete press release in the source language; the target language; the organization's preferred name in the target language (if different from the source — some organizations use localized names, others keep the original).

**Optional:** A glossary of approved translations for proprietary terms, product names, or legal phrases; the target wire service or distribution channel (AP, AFP, Reuters, PR Newswire, regional equivalent); whether the boilerplate has an approved translation already; dateline city for the target-market version if different from the original; any regulatory disclaimers that must appear verbatim.

## How Claude Approaches This
1. **Identifies structural elements before translating.** Maps the release into its components: headline, sub-headline, dateline, body paragraphs, quotes, boilerplate, contact block, and any legal disclaimers or embargo notices. Each element is translated according to its specific conventions.

2. **Translates the headline for news impact, not literal equivalence.** Press release headlines follow different conventions across languages. Claude rewrites the headline to land with the same news value in the target language, adjusting word order, article usage, and emphasis to match local press release norms.

3. **Preserves approved corporate language.** Product names, division names, trademarks, and legal phrases are retained exactly as provided in the glossary. Where no glossary is supplied, Claude flags proprietary terms in the translator's notes and uses the most common industry-standard translation.

4. **Adapts formatting to the target market's wire conventions.** Dateline format, currency notation, measurement units, number formatting (thousands separators, decimal marks), and contact block layout are adjusted for the target market. The "###" end mark is retained universally.

5. **Flags regulatory and legal translation decisions.** Any passage containing legal language, financial disclosures, or regulatory disclaimers is flagged in the translator's notes with a recommendation to have legal counsel in the target jurisdiction confirm the phrasing.

## Output Format
Complete translated press release, formatted for the target market's wire service conventions. Same structural elements as the original: headline, optional sub-headline, dateline, body, quotes with attribution, boilerplate, contact block, end mark. After the release, a "Translator's Notes" section (3–6 bullet points) covering significant decisions, flagged terms, and any legal language requiring counsel review. Length matches the original within 15%.

## Quality Criteria
- [ ] Headline conveys the same news value as the original — not a literal word-for-word rendering
- [ ] All quotes are translated with correct attribution in the target language's press conventions
- [ ] Proprietary terms and product names match the supplied glossary or are flagged for confirmation
- [ ] Dateline, currency, measurement, and number formatting follow target-market conventions
- [ ] Legal disclaimers and regulatory language are flagged for counsel review in the translator's notes
- [ ] Boilerplate reads naturally in the target language — not as a mechanical translation of marketing copy
- [ ] Contact block is reformatted for the target market (phone format, time zone reference if applicable)

## Example

### Input
**Source language:** English
**Target language:** German
**Organization name in German:** Solarvio AG (same as English)

**Press release:**

FOR IMMEDIATE RELEASE

**Solarvio AG Secures $45 Million in Series C Funding to Expand European Manufacturing**

*Round led by Nordic Ventures with participation from existing investors*

ZURICH, Switzerland, March 10, 2026 — Solarvio AG, a developer of next-generation solar panel coating technology, today announced the close of a $45 million Series C funding round led by Nordic Ventures. Existing investors Greenfield Capital and Atlas Partners also participated.

The funding will accelerate the construction of Solarvio's second manufacturing facility in Brandenburg, Germany, expected to be operational by Q2 2027. The new plant will triple the company's production capacity to 1.5 million square meters of coated panels annually.

"This round validates the market's confidence in our technology and our team," said Henrik Lindqvist, CEO of Solarvio AG. "Brandenburg was the obvious choice for our next facility — the talent pool, infrastructure, and regulatory environment are exactly what a scaling cleantech company needs."

Nordic Ventures Managing Partner Astrid Holm added: "Solarvio's coating technology addresses a real bottleneck in solar panel efficiency. We see significant upside as European manufacturing scales."

**About Solarvio AG**
Solarvio AG develops proprietary coating technologies that increase solar panel energy yield by up to 18%. Founded in 2019 and headquartered in Zurich, the company operates one manufacturing facility in Switzerland and holds 14 patents across six jurisdictions.

**Media Contact**
Klara Meier, Head of Communications
press@solarvio.example.com
+41 44 555 0190

###

### Output

ZUR SOFORTIGEN VEROFFENTLICHUNG

**Solarvio AG sichert sich 45 Millionen US-Dollar in Series-C-Finanzierungsrunde fur Ausbau der europaischen Fertigung**

*Runde unter Fuhrung von Nordic Ventures mit Beteiligung bestehender Investoren*

ZURICH, Schweiz, 10. Marz 2026 — Die Solarvio AG, ein Entwickler von Beschichtungstechnologien der nachsten Generation fur Solarpaneele, hat heute den Abschluss einer Series-C-Finanzierungsrunde in Hohe von 45 Millionen US-Dollar unter der Fuhrung von Nordic Ventures bekannt gegeben. Die bestehenden Investoren Greenfield Capital und Atlas Partners beteiligten sich ebenfalls.

Die Finanzierung beschleunigt den Bau der zweiten Produktionsanlage von Solarvio in Brandenburg, die voraussichtlich im zweiten Quartal 2027 den Betrieb aufnehmen wird. Das neue Werk wird die Produktionskapazitat des Unternehmens auf 1,5 Millionen Quadratmeter beschichteter Paneele pro Jahr verdreifachen.

„Diese Runde bestatigt das Vertrauen des Marktes in unsere Technologie und unser Team", sagte Henrik Lindqvist, CEO der Solarvio AG. „Brandenburg war die naheliegende Wahl fur unsere nachste Anlage — der Talentpool, die Infrastruktur und das regulatorische Umfeld bieten genau das, was ein wachsendes Cleantech-Unternehmen braucht."

Astrid Holm, Managing Partner bei Nordic Ventures, erganzte: „Die Beschichtungstechnologie von Solarvio adressiert einen echten Engpass bei der Effizienz von Solarpaneelen. Wir sehen erhebliches Aufwartspotenzial im Zuge der Skalierung der europaischen Fertigung."

**Uber Solarvio AG**
Die Solarvio AG entwickelt proprietare Beschichtungstechnologien, die den Energieertrag von Solarpaneelen um bis zu 18 % steigern. Das 2019 gegrundete Unternehmen mit Hauptsitz in Zurich betreibt eine Produktionsanlage in der Schweiz und halt 14 Patente in sechs Rechtsordnungen.

**Medienkontakt**
Klara Meier, Leiterin Unternehmenskommunikation
press@solarvio.example.com
+41 44 555 0190

###

---

**Anmerkungen des Ubersetzers / Translator's Notes**

- "$45 million" rendered as "45 Millionen US-Dollar" — standard German press convention spells out the currency rather than using the $ symbol when the audience is European.
- Number formatting adjusted to German conventions: "1.5 million" becomes "1,5 Millionen" (comma as decimal separator).
- "Q2 2027" translated as "zweiten Quartal 2027" — German press releases typically spell out the quarter rather than using the Q-abbreviation.
- "Series C" retained as "Series C" with hyphenated compound "Series-C-Finanzierungsrunde" following German compound-noun conventions. Some German outlets prefer "Serie C" — confirm with your communications team.
- German quotation marks (typographic low-high style) used throughout. Wire services may reformat these during distribution.
- No regulatory disclaimers present in the original. If this release is distributed in Germany, confirm with counsel whether a Handelsregister reference is required in the boilerplate.

## Known Limitations
- Claude cannot verify that proprietary terms, product names, or legal phrases are translated according to an organization's internal glossary unless that glossary is provided. Always supply approved translations for brand-critical terminology.
- Financial and legal language in press releases often has jurisdiction-specific implications. Claude flags these passages but cannot replace legal counsel review in the target market.
- For simultaneous multi-language distribution (e.g., translating one release into five languages at once), run this skill once per target language rather than requesting all translations in a single pass — quality degrades when multiple target languages compete in a single output.

## Related Skills
- [article-translator](../text/article-translator.md) — translate editorial content rather than institutional communications
- [translation-glossary-builder](../reference/translation-glossary-builder.md) — build a glossary of approved translations before running batch translations
- [translation-reviewer](../quality/translation-reviewer.md) — quality-check a completed press release translation
- [press-release-writer](../../pr-communications/press-office/press-release-writer.md) — write an original press release from scratch

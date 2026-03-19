---
name: press-release-translator
status: beta
category: translation-localization
subcategory: institutional
version: 1.0
eval_score: null
tags: [translation, press-release, PR, institutional, formal-register, localization]
---

# Press Release Translator

## What This Skill Does
Translates a press release from one language to another while preserving its formal institutional register, standard PR structure, and the precise wording of quotes and official claims.

## When To Use This Skill
- A partner organisation, government body, or company has sent you a press release in a language other than your publication's working language
- You are issuing your own press release in a second language for an international audience or co-production partner
- You need to accurately convey the official position of an institution quoted in a foreign-language press release, without paraphrasing
- You are preparing multilingual press materials for a publication, festival, or broadcast event

## What You Need To Provide
**Required:** The full press release text in the source language. The source language name. The target language name.

**Optional:** The issuing organisation's name and sector (government ministry, NGO, corporation, cultural institution) — this helps calibrate register. Any embargo date or "for immediate release" designation that must appear in the translated version. A note on whether quotes must be reproduced verbatim or can be lightly adapted for grammatical naturalness in the target language. Any specific terminology or product/programme names that must not be translated.

## How Claude Approaches This
1. Identifies the full structure of the press release — dateline, headline, standfirst, body paragraphs, attributed quotes, boilerplate "About" section, and contact block — and maps each element before translating anything.
2. Translates each structural element in order, applying the formal institutional register standard in press release writing: active declarative sentences, official titles rendered in full, numbers formatted to target-language conventions, and quotes handled as close to verbatim as grammatical naturalness allows.
3. Produces a brief "Translation Notes" section at the end flagging any terms, titles, or passages where the translator has made a judgment call that a journalist or PR professional should verify — particularly institutional names, regulatory references, and direct quotes from named individuals.

## Output Format
Full translated press release in standard press release layout: "FOR IMMEDIATE RELEASE" or embargo line, headline in title case, dateline, body (two to five paragraphs), at least one attributed quote in quotation marks, boilerplate "About [Organisation]" block, and contact details block. Followed by a "Translation Notes" section (bullet list, concise). Tone is formal and institutional throughout — press releases are not rewritten as journalism; the institutional voice is preserved as received. Length matches the source.

## Quality Criteria
- [ ] Standard press release structure is intact — no sections have been merged, shortened, or omitted
- [ ] Attributed quotes reproduce the speaker's words as closely as the target language grammar allows — no paraphrasing
- [ ] Official titles, programme names, and institutional names are rendered consistently throughout and flagged if an authoritative translation is uncertain
- [ ] Numbers, dates, currency, and units of measurement are converted to target-language formatting conventions
- [ ] Register is formal and institutional — not journalistic, not conversational
- [ ] Translation Notes section identifies every judgment call that requires human verification before publication or distribution

## Example

### Input
Source language: French
Target language: English
Issuing organisation: National arts funding body (public institution)

Press release text:

POUR DIFFUSION IMMÉDIATE

**Le Conseil des Arts annonce une enveloppe de 4,2 millions d'euros pour soutenir la création documentaire indépendante**

*Paris, le 14 mars 2026* — Le Conseil des Arts de la République a annoncé aujourd'hui l'attribution de 4 200 000 euros destinés au financement de productions documentaires indépendantes dans le cadre de son Programme pluriannuel d'aide à la création audiovisuelle (PPACA).

Ce financement permettra de soutenir quarante-deux projets sélectionnés lors de la session d'évaluation du premier trimestre 2026. Les projets retenus couvrent des thématiques allant de l'environnement à la mémoire sociale, en passant par les droits humains et la création expérimentale.

"Nous sommes convaincus que le documentaire indépendant constitue un pilier essentiel de la vie démocratique et culturelle de notre pays," a déclaré Isabelle Fontaine, Présidente du Conseil des Arts de la République. "Cet investissement témoigne de notre engagement indéfectible envers les cinéastes qui prennent des risques artistiques et intellectuels."

Les candidats dont le dossier n'a pas été retenu lors de cette session pourront soumettre une nouvelle candidature lors de la session du troisième trimestre 2026, dont les délais de dépôt seront annoncés prochainement.

---

**À propos du Conseil des Arts de la République**
Établissement public placé sous tutelle du ministère de la Culture, le Conseil des Arts de la République a pour mission de soutenir la création artistique et culturelle dans toutes ses formes. Depuis sa fondation en 1962, il a attribué plus de 800 millions d'euros à des artistes et des organisations culturelles à travers le pays.

Contact presse : Marie-Claire Dupuis — m.dupuis@conseil-des-arts.fr — +33 1 44 00 00 00

### Output

FOR IMMEDIATE RELEASE

**Arts Council Announces €4.2 Million Funding Package to Support Independent Documentary Production**

*Paris, 14 March 2026* — The Arts Council of the Republic today announced the allocation of €4,200,000 to support independent documentary productions under its Multi-Year Audiovisual Creation Support Programme (PPACA).

This funding will support forty-two projects selected during the first-quarter 2026 assessment session. The selected projects span a range of themes including the environment, social memory, human rights, and experimental filmmaking.

"We are convinced that independent documentary is an essential pillar of our country's democratic and cultural life," said Isabelle Fontaine, President of the Arts Council of the Republic. "This investment reflects our unwavering commitment to filmmakers who take artistic and intellectual risks."

Applicants whose submissions were unsuccessful in this session may reapply during the third-quarter 2026 session, the submission deadlines for which will be announced shortly.

---

**About the Arts Council of the Republic**
A public institution under the authority of the Ministry of Culture, the Arts Council of the Republic's mission is to support artistic and cultural creation in all its forms. Since its founding in 1962, it has awarded more than €800 million to artists and cultural organisations across the country.

Press contact: Marie-Claire Dupuis — m.dupuis@conseil-des-arts.fr — +33 1 44 00 00 00

---

**Translation Notes**

- *Conseil des Arts de la République* — translated as "Arts Council of the Republic." If this organisation has an established English-language name used in its own international communications, that name should be substituted here.
- *Programme pluriannuel d'aide à la création audiovisuelle (PPACA)* — translated as "Multi-Year Audiovisual Creation Support Programme (PPACA)." The French acronym has been retained in parentheses; if the organisation uses a different English acronym officially, update accordingly.
- Currency: euros (€) retained as-is. No conversion applied — press releases from European institutions typically retain the original currency for international distribution. Confirm with your style guide if conversion is required.
- Date format changed from French convention ("14 mars 2026") to standard international English ("14 March 2026"). If your publication uses US format, change to "March 14, 2026."
- The quote from Isabelle Fontaine has been translated to preserve meaning and institutional register. For publication, verify against any official English-language statement issued by the Council if available.

## Known Limitations
- Claude's translation quality varies significantly by language pair. Translations from major European languages (French, Spanish, German, Italian, Portuguese) into English are generally reliable for press release purposes; translations involving less commonly taught languages should always be reviewed by a native speaker before distribution or publication.
- Institutional names — government ministries, regulatory bodies, publicly funded organisations — often have official English translations that Claude may not know. Always verify these against the organisation's own English-language materials before publishing.
- Claude cannot verify whether a named individual's quote has been officially released in an English-language version. Where an official English quote exists, use it rather than the translation produced here.
- Legal, regulatory, and financial terminology in press releases requires verification by a qualified professional. Claude will flag these in Translation Notes but cannot guarantee accuracy in specialist domains.
- Embargo dates and distribution restrictions in the source document must be checked and re-applied by the journalist or PR professional — Claude will render them as found but cannot confirm their legal status in the target market.

## Related Skills
- [article-translator](./article-translator.md)
- [cultural-adaptation-brief](./cultural-adaptation-brief.md)
- [quote-translator](./quote-translator.md)
- [translation-glossary-creator](./translation-glossary-creator.md)

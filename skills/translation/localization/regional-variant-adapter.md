---
name: regional-variant-adapter
status: stable
category: translation
subcategory: localization
version: 1.0
eval_score: 4.39
tags: [translation, localization, regional, adaptation, variants, dialect]
---

# Regional Variant Adapter

## What This Skill Does
Adapts text from one regional variant of a language to another — such as British English to American English, European Portuguese to Brazilian Portuguese, or Castilian Spanish to Mexican Spanish — adjusting vocabulary, spelling, idioms, and cultural references while preserving meaning and tone.

## When To Use This Skill
- You have content written in one regional variant and need it adapted for a different market (e.g., a UK press release being distributed in the US)
- Your organization's style guide specifies a particular regional variant and you need to convert incoming content to match
- You are localizing a translated text that was produced in one variant of the target language for a different regional audience
- You need to adapt dialogue, quotes, or social media copy so it reads naturally to a specific regional audience rather than sounding foreign

## What You Need To Provide
**Required:** The text to adapt; the source variant (e.g., "British English," "European Spanish," "European Portuguese"); the target variant (e.g., "American English," "Mexican Spanish," "Brazilian Portuguese").

**Optional:** The content type (news article, press release, social media post, marketing copy, dialogue/script); the target publication or platform's style guide; specific terms that must remain unchanged regardless of variant; the desired register (formal, conversational, colloquial); whether to adapt measurement units and currency references.

## How Claude Approaches This
1. **Identifies all variant-specific elements in the source text.** Scans for spelling differences (colour/color, organise/organize), vocabulary differences (flat/apartment, boot/trunk, ordenador/computadora), grammatical patterns (have got/have gotten, vosotros/ustedes), punctuation conventions, and measurement or currency formats.

2. **Adapts vocabulary and idioms to the target variant.** Replaces region-specific terms with their natural equivalents. Where an idiom exists in both variants but with different phrasing, uses the target variant's version. Where an idiom has no equivalent, replaces it with a locally natural expression that conveys the same meaning and register.

3. **Adjusts spelling and grammar systematically.** Applies the target variant's spelling conventions throughout (not selectively). Adjusts grammatical structures that differ between variants — such as collective noun agreement (British: "the team are"; American: "the team is") or past participle forms (British: "learnt"; American: "learned").

4. **Converts measurements, currency, and cultural references when requested.** If the user specifies unit conversion, changes metric to imperial (or vice versa), adjusts currency references, and adapts culturally specific references (government agencies, educational systems, legal terms) to their target-market equivalents.

5. **Produces a change log.** After the adapted text, lists all substantive changes made — organized by category (spelling, vocabulary, grammar, idiom, cultural reference). Minor systematic spelling changes (e.g., all -ise to -ize conversions) are summarized as a group rather than listed individually.

## Output Format
The fully adapted text, maintaining the original's formatting and structure. After the text, a "Change Log" section organized by category: Vocabulary, Spelling (summarized), Grammar, Idioms, and Cultural References (if applicable). Each vocabulary and idiom change shows the original and replacement. Spelling changes are summarized by rule (e.g., "All -our endings converted to -or: 7 instances"). Tone: the adapted text should read as if it was originally written in the target variant — no trace of the source variant should remain.

## Quality Criteria
- [ ] All spelling is consistent with the target variant — no source-variant spellings remain
- [ ] Vocabulary replacements are natural and contextually appropriate, not mechanical substitutions
- [ ] Idioms are adapted to the target variant or replaced with equivalent expressions, not left as source-variant idioms
- [ ] Grammar follows the target variant's conventions (collective nouns, verb forms, preposition usage)
- [ ] The adapted text reads as native content in the target variant — no "foreignisms"
- [ ] Change log is complete and organized by category for editorial review
- [ ] Measurements and currency are converted only if the user requested it

## Example

### Input
**Source variant:** British English
**Target variant:** American English
**Content type:** News feature
**Convert measurements:** Yes

**Text:**

The council approved the £4.2 million scheme on Thursday, paving the way for construction to begin in the autumn. The development, which sits on a 2.5-hectare plot of disused industrial land on the outskirts of the city centre, will include 180 flats, a GP surgery, and a neighbourhood playground.

"We've been campaigning for this for donkey's years," said Marcus Webb, chair of the residents' association. "The land's been sat there doing nothing since the factory closed. It's about time the council got their act together."

Transport links are a selling point. The site is a five-minute walk from the nearest Underground station and 400 metres from a bus stop serving six routes. Residents will also have access to a car park with spaces for 60 vehicles, though the developers are keen to emphasise that the scheme prioritises cycling and public transport.

### Output

The city council approved the $5.3 million project on Thursday, paving the way for construction to begin in the fall. The development, which sits on a 6.2-acre plot of disused industrial land on the outskirts of the city center, will include 180 apartments, a primary care clinic, and a neighborhood playground.

"We've been campaigning for this for ages," said Marcus Webb, chair of the residents' association. "The land's been sitting there doing nothing since the factory closed. It's about time the council got their act together."

Transit connections are a selling point. The site is a five-minute walk from the nearest subway station and about 1,300 feet from a bus stop serving six routes. Residents will also have access to a parking garage with spaces for 60 vehicles, though the developers are keen to emphasize that the project prioritizes cycling and public transit.

---

**Change Log**

**Vocabulary**
- "council" → "city council" (in American English, "the council" alone is less common; specifying "city council" is standard)
- "scheme" → "project" ("scheme" has negative connotations in American English — implies something dishonest)
- "flats" → "apartments"
- "GP surgery" → "primary care clinic"
- "Underground station" → "subway station"
- "car park" → "parking garage"
- "transport" → "transit" (two instances)
- "donkey's years" → "ages" (British idiom with no American equivalent; "ages" preserves the casual register)
- "been sat there" → "been sitting there" (British dialectal past participle replaced with standard American progressive)

**Spelling (systematic)**
- All -ise/-isation endings converted to -ize/-ization: 2 instances (emphasise → emphasize, prioritises → prioritizes)
- All -our endings converted to -or: 1 instance (neighbourhood → neighborhood)
- "centre" → "center": 1 instance

**Grammar**
- "council got their act together" — retained as-is. While American English more commonly treats collective nouns as singular, "their" is acceptable in informal quoted speech and preserves the speaker's voice.

**Measurements and Currency**
- £4.2 million → $5.3 million (converted at approximate current rate; confirm exact figure with finance team)
- 2.5 hectares → 6.2 acres
- 400 metres → approximately 1,300 feet

**Cultural References**
- "autumn" → "fall" (standard American English preference in journalistic writing)

## Known Limitations
- Currency conversions use approximate exchange rates and should be confirmed with the finance or editorial team before publication. Claude flags every currency conversion in the change log for this reason.
- Some regional differences are context-dependent rather than categorical. For example, "pavement" means "sidewalk" in British English but "road surface" in American English — Claude handles these based on context, but ambiguous cases should be reviewed.
- This skill adapts language variants within the same language. It does not translate between different languages. For cross-language translation followed by regional adaptation, run Article Translator first, then this skill.

## Related Skills
- [article-translator](../text/article-translator.md) — translate between languages before adapting regional variants
- [social-post-translator](../digital/social-post-translator.md) — translate and adapt social posts, including regional variant adjustments
- [translation-reviewer](../quality/translation-reviewer.md) — review the adapted text for any remaining source-variant elements
- [house-style-enforcer](../../magazine-journalism/editing/house-style-enforcer.md) — enforce a publication's specific house style after regional adaptation

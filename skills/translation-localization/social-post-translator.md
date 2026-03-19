---
name: social-post-translator
status: beta
category: translation-localization
subcategory: digital-social
version: 1.0
eval_score: null
tags: [translation, social-media, localization, audience, platform]
---

# Social Post Translator

## What This Skill Does
Translates a social media post into a target language and adapts it for the cultural expectations and platform conventions of that market — not just word-for-word, but audience-ready.

## When To Use This Skill
- You are distributing a story or campaign across multiple language markets and need each post to feel native, not translated
- A social team in your organisation posts in English and needs localized versions for regional accounts
- You are publishing breaking news across platforms and need rapid, publication-quality translations of your social copy
- A post contains idioms, humour, or cultural references that will not land in the target market and need local equivalents

## What You Need To Provide
**Required:** The original post in full (including any hashtags and calls to action); the source language; the target language; the platform (X/Twitter, Instagram, Facebook, LinkedIn, TikTok, Threads); the account's editorial tone (news, campaigning, entertainment, institutional)

**Optional:** Target country or region (e.g. "French for Québec audiences, not France"); character or word limit if the platform imposes one; any brand terms or hashtags that must appear verbatim; audience age range or demographic notes

## How Claude Approaches This
1. Identify every element of the post that is culturally specific — idioms, humour, references, platform-native conventions such as emoji use or hashtag style — before translating
2. Translate the core message accurately, then re-localise cultural elements: replace idioms with natural target-language equivalents, adapt references that will not be recognised, adjust formality to match how the target-market account sounds
3. Handle hashtags explicitly: translate where a local equivalent exists and is in common use; keep the original in brackets if the hashtag is part of a global campaign; flag if a hashtag has an unintended meaning in the target language
4. Deliver the final post at the correct length for the platform and language combination — some languages expand significantly from English and may need restructuring, not just truncation

## Output Format
- The complete translated post, formatted exactly as it would appear in the platform's composer — ready to copy and paste
- A short localisation note (two to three sentences) flagging any adaptations made beyond translation and why they were necessary
- If a hashtag was changed or dropped, one sentence explaining the decision

Character limits observed by default: X/Twitter 280 characters; LinkedIn 700 characters for feed posts; Instagram caption uncapped but hook in first 125 characters. State in the localisation note if the translation required structural change to meet a limit.

## Quality Criteria
- [ ] The translated post reads as something written natively for that market — no "translated" stiffness or literal constructions
- [ ] Platform conventions (emoji norms, hashtag style, @ tagging conventions) are preserved or appropriately adapted for the target market
- [ ] Hashtags are handled explicitly — no hashtag is silently dropped or changed without a note
- [ ] The post fits the platform's character or display limit without truncation of the message
- [ ] The editorial tone of the account (news, campaigning, entertainment) is carried through into the translation
- [ ] Any idiom or cultural reference that would not land in the target market has been replaced or omitted, not left in

## Example

### Input
**Source language:** English
**Target language:** French (France)
**Platform:** X/Twitter
**Account tone:** News — serious, factual, no humour

**Original post:**
Coastal communities are bracing for the worst as the storm approaches. We're on the ground with the latest. 🌊

#StormWatch #ClimateAction

### Output

**Translated post:**
Les communautés côtières se préparent au pire à l'approche de la tempête. Nos équipes sont sur place avec les dernières informations. 🌊

#SurveillanceTempête #ActionClimatique

---

**Localisation note:**
"Bracing for the worst" has been rendered as "se préparent au pire" — a natural French expression carrying the same sense of active, anxious preparation. "We're on the ground" becomes "Nos équipes sont sur place," which is the standard French news-wire phrasing for field reporting; "on the ground" used literally in French would be ambiguous. Hashtags have been translated into their French equivalents, which are in common use in French climate and weather coverage; the English originals are not widely recognised by French-language audiences.

## Known Limitations
- Claude cannot verify whether a translated hashtag is currently trending or in active use in the target market — always check before publishing, particularly for breaking-news topics where local conversation may be using a different tag
- Humour, irony, and wordplay are the hardest elements to localise; if the original post relies on a pun or cultural joke, the translation will either find a functional equivalent or flag that none exists — it will not produce a false equivalent that does not work
- Regional variation within a language (French in France vs. Québec; Spanish in Spain vs. Mexico) can significantly change vocabulary and tone; always specify the target region, not just the language
- Always verify with a native speaker before publishing to an audience that matters to your organisation's reputation
- Emoji connotations can differ by market; the translation preserves the original emoji unless it flags a known issue

## Related Skills
- [article-translator](./article-translator.md)
- [press-release-translator](./press-release-translator.md)
- [cultural-adaptation-brief](./cultural-adaptation-brief.md)

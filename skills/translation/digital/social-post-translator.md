---
name: social-post-translator
status: stable
category: translation
subcategory: digital
version: 1.0
eval_score: 4.33
tags: [translation, social-media, digital, adaptation, platforms, localization]
---

# Social Post Translator

## What This Skill Does
Translates social media posts from one language to another, adapting tone, character limits, hashtags, and cultural references for the target audience while preserving the post's intent and engagement mechanics.

## When To Use This Skill
- You have an approved social post in one language and need equivalent versions for other markets
- You are managing multilingual social accounts and need consistent messaging across languages without robotic literal translations
- A viral or high-performing post from one market needs to be adapted for another language audience on the same platform
- You need to translate a batch of scheduled posts for a campaign rollout across multiple regions

## What You Need To Provide
**Required:** The original post text; the source language; the target language; the platform (Instagram, X/Twitter, LinkedIn, Facebook, TikTok, Threads).

**Optional:** Character limit for the target version (if different from platform default); hashtag strategy (translate hashtags, replace with local equivalents, or drop them); whether emojis should be kept, adapted, or removed; the brand's tone of voice guidelines for the target market; any terms or slogans that must remain in the original language.

## How Claude Approaches This
1. **Analyzes the post's engagement mechanics before translating.** Identifies the hook (question, bold claim, statistic), the call to action, and any platform-specific elements (hashtags, mentions, line breaks for readability). These structural elements are preserved in the translation — the translated post must work the same way on the same platform.

2. **Translates for impact, not equivalence.** Social media copy is performance-driven. If a pun, wordplay, or cultural reference does not land in the target language, Claude replaces it with an equivalent device that achieves the same effect — a different joke, a locally resonant reference, or a rephrased hook that creates the same curiosity gap.

3. **Adapts hashtags for discoverability.** Translates hashtags into their most-used target-language equivalents rather than literal translations. If a hashtag is a branded term, it is retained in the original language. Notes when a hashtag has no established equivalent and suggests alternatives.

4. **Respects platform character limits.** If the translation exceeds the platform's character limit, Claude tightens the copy to fit without losing the core message or call to action. Flags any cuts made.

5. **Provides the post ready to copy and paste.** Output is the final post text — no quotation marks wrapping it, no commentary inline. Notes and decisions are appended separately.

## Output Format
The translated post, formatted exactly as it would appear on the platform — including line breaks, hashtags, and emojis in their final positions. If multiple posts are provided, each is numbered and separated by a horizontal rule. After all posts, a "Translation Notes" section (2–4 bullet points per post) covering adapted references, hashtag decisions, and any character-limit adjustments. Each post is labeled with its platform and character count.

## Quality Criteria
- [ ] The translated post achieves the same engagement intent as the original (same hook type, same CTA)
- [ ] Character count fits the target platform's limits
- [ ] Hashtags are locally relevant, not literal translations of untranslatable tags
- [ ] Cultural references and wordplay are adapted, not forced into awkward literal translations
- [ ] The post reads as native content — not as a translation
- [ ] Emojis are appropriate for the target market's platform conventions
- [ ] Translation notes flag every significant adaptation for the social media manager to review

## Example

### Input
**Source language:** English
**Target language:** Spanish (Latin American)
**Platform:** Instagram (caption)

**Post:**

Your morning coffee costs more than it did last year. But the farmer who grew it? They're earning less.

We traced one bag of beans from a highland farm to your kitchen counter. The markup will surprise you.

Link in bio.

#CoffeePricing #SupplyChain #FoodJournalism #InvestigativeReporting

### Output

**Instagram caption (Spanish, Latin America) — 284 characters**

Tu cafe de la manana cuesta mas que el ano pasado. Pero el agricultor que lo cultivo? Gana menos.

Rastreamos una bolsa de granos desde una finca de altura hasta tu cocina. El margen de ganancia te va a sorprender.

Enlace en bio.

#PrecioDelCafe #CadenaDeSupministro #PeriodismoAlimentario #PeriodismoDeInvestigacion

---

**Translation Notes**
- "Highland farm" translated as "finca de altura" — standard Latin American term for high-altitude coffee farms. In Spain, "explotacion agraria de montana" would be more common; this version targets Latin American audiences as specified.
- "The markup will surprise you" rendered as "el margen de ganancia te va a sorprender" — uses "tuteo" (informal "tu") consistent with the original post's direct, conversational tone and standard Latin American social media register.
- Hashtags translated to commonly used Spanish-language equivalents. #FoodJournalism adapted to #PeriodismoAlimentario (more discoverable in Spanish than a literal #PeriodismoDeComida). #InvestigativeReporting rendered as #PeriodismoDeInvestigacion, the standard Spanish-language journalism tag.
- "Link in bio" translated as "Enlace en bio" — the English word "bio" is universally understood on Instagram in Spanish-speaking markets and is more natural than "enlace en biografia."

## Known Limitations
- Claude cannot verify which hashtags are currently trending or have the highest engagement in a given market. Hashtag suggestions are based on common usage patterns, not real-time analytics. Cross-check with your social analytics tools before publishing.
- Humor and wordplay are the hardest elements to translate for social media. If the original post relies heavily on a language-specific joke, the translated version may need a fundamentally different hook — Claude will flag this, but the social media manager should review the replacement.
- Platform-specific formatting (Instagram line breaks, X thread numbering, LinkedIn article links) may render differently when copy-pasted. Test the formatted output on the actual platform before scheduling.

## Related Skills
- [article-translator](../text/article-translator.md) — translate full articles rather than social copy
- [regional-variant-adapter](../localization/regional-variant-adapter.md) — adapt a translation for a specific regional dialect or market
- [caption-writer](../../social-media/content/caption-writer.md) — write original social captions from scratch
- [cross-platform-repurposer](../../social-media/strategy/cross-platform-repurposer.md) — adapt a post for a different platform entirely

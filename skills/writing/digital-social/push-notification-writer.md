---
name: push-notification-writer
status: beta
category: writing
subcategory: digital-social
version: 1.0
eval_score: null
tags: [push notifications, breaking news, mobile alerts, digital editing, audience engagement]
---

# Push Notification Writer

## What This Skill Does
Writes concise, high-urgency push notification text for a news story — optimised for mobile lock screens where readers decide in under two seconds whether to tap or dismiss.

## When To Use This Skill
- A breaking story has just been confirmed and you need a push alert live within minutes
- A developing story has reached a significant new threshold (arrest made, verdict reached, death toll updated)
- You are writing alerts for multiple platforms (app, SMS, web push) and need variants calibrated to each character limit
- A planned story is publishing and you want an alert that drives click-through, not just awareness

## What You Need To Provide
**Required:** The core news fact in plain language — who, what, and (if known) why it matters right now.
**Optional:** Character limit for your platform (default: 100 characters for the alert body); story URL or slug for reference; urgency level (breaking / developing / analysis); audience type (general / specialist / local).

## How Claude Approaches This
1. Strips the story down to its single most consequential fact — the thing that makes a reader stop scrolling.
2. Writes the alert in active voice, present or immediate-past tense, with the most newsworthy word as early as possible in the sentence.
3. Produces three variants: one at approximately 60 characters (SMS / minimal display), one at approximately 100 characters (standard app push), and one at approximately 130 characters (web push / expanded view) — adjusting information density to fit each.

## Output Format
Three labelled variants, each on its own line. No headline casing — push notifications read like spoken news, sentence case only. No hashtags, no emojis unless you specify otherwise. Each variant is a standalone sentence; no ellipsis trails. A one-line editorial note follows each variant explaining the trade-off made at that length.

## Quality Criteria
- [ ] The most newsworthy element appears in the first five words
- [ ] Every variant is grammatically complete — no fragments or trailing dots
- [ ] No speculative language ("may," "could," "reportedly") unless the story is unconfirmed, in which case uncertainty is stated explicitly
- [ ] Each variant fits its stated character count (±5 characters)
- [ ] The 60-character version contains enough information to be meaningful without clicking through

## Example

### Input
Story: A regional appeals court has overturned a conviction in a high-profile financial fraud case, ruling that key evidence was improperly obtained. The defendant had been serving a six-year sentence. The prosecution has 30 days to decide whether to retry the case.

Platform: App push notification. Standard limit 100 characters. Audience: general news readers.

### Output

**60-character variant (SMS / minimal display):**
Appeals court overturns fraud conviction on evidence ruling.
*Editorial note: Names and sentence length cut to fit; conviction + reason survives.*

**100-character variant (standard app push):**
Fraud conviction overturned after appeals court rules key evidence was improperly obtained.
*Editorial note: Adds the legal basis, which is the most compelling element for click-through.*

**130-character variant (web push / expanded view):**
Appeals court overturns six-year fraud conviction, ruling evidence was improperly obtained. Retrial decision due in 30 days.
*Editorial note: Adds the retrial angle — creates forward tension that rewards tapping.*

## Known Limitations
- Push notifications must be factually confirmed before sending. This skill produces text only — editorial verification is the journalist's responsibility.
- Highly localised stories (place names, local officials) may need manual adjustment if the audience is national and the references carry no recognition value.
- Character counts are estimates based on Latin-character alphabets. Languages with longer average word lengths (German, Finnish) will need manual trimming.
- This skill does not write the push notification headline/title field (the bold line above the body on iOS and Android) — provide the article headline separately or request a combined version.

## Related Skills
- [headline-generator](../../magazine-journalism/ideation/headline-generator.md)
- [seo-headline-variants-writer](seo-headline-variants-writer.md)
- [social-media-excerpt](../../magazine-journalism/distribution/social-media-excerpt.md)

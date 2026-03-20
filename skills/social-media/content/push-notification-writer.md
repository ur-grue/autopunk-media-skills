---
name: push-notification-writer
status: stable
category: social-media
subcategory: content
version: 1.0
eval_score: 4.44
tags: [social-media, push-notifications, mobile, news-apps, engagement, breaking-news]
---

# Push Notification Writer

## What This Skill Does
Writes three push notification variants for a news story or content update, each optimized for different urgency levels and character limits, ready to paste directly into a CMS or notification platform.

## When To Use This Skill
- A breaking or developing story needs to reach mobile readers immediately
- You are scheduling a push notification for a feature story, newsletter edition, or podcast episode and want to maximize tap-through
- You need to adapt one story into multiple notification tones — urgent, informational, and curiosity-driven — for A/B testing or different audience segments
- You are writing notifications under strict character limits and need every word to earn its place

## What You Need To Provide
**Required:** The story or content to promote (headline, one-sentence summary, or a brief paragraph describing the news); the platform or character limit (iOS: ~110 characters visible on lock screen, Android: ~65 characters in collapsed view, or a custom limit).

**Optional:** Urgency level (breaking, developing, scheduled feature); tone preference (neutral news, conversational, provocative); the publication's voice (formal broadsheet, digital-native, tabloid energy); a specific detail or number that should appear in the notification.

## How Claude Approaches This

1. **Extracts the single most compelling fact.** Reads the input and identifies what makes this notification worth interrupting someone's day — the new information, the surprising number, the consequence that affects the reader personally. This fact anchors all three variants.

2. **Writes three variants at different urgency registers:**
   - **Breaking/Urgent** — leads with the news, no wasted words. Reads like a wire alert. Prioritizes speed of comprehension over curiosity.
   - **Informational** — gives enough context that the reader understands the significance without tapping. Still concise, but explanatory rather than breathless.
   - **Curiosity-driven** — opens an information gap that can only be closed by tapping. Uses tension, a question, or a surprising framing. Best for features, analysis, and non-breaking content.

3. **Enforces character limits ruthlessly.** Counts characters for each variant against the stated platform limit. If a variant exceeds the limit, it is rewritten — not truncated. Every variant displays completely on the lock screen without ellipsis.

4. **Adds a tap-through rationale.** After the three variants, one sentence explains which variant suits which scenario (e.g., "Use Variant A for push-alert subscribers who opted into breaking news; Variant C for the general audience segment to maximize tap-through on a feature").

## Output Format

Three labeled notification variants, each on a single line with a character count in brackets. No preamble. After the variants, one line of deployment guidance. Total output: under 150 words.

```
**Variant A — Breaking/Urgent** [XX chars]
[Notification text]

**Variant B — Informational** [XX chars]
[Notification text]

**Variant C — Curiosity-Driven** [XX chars]
[Notification text]

---
*Deployment: [One sentence on which variant to use for which audience segment or scenario.]*
```

## Quality Criteria
- [ ] Every variant fits within the stated character limit — no truncation or ellipsis
- [ ] The breaking variant leads with the news fact, not a label or preamble
- [ ] The curiosity-driven variant creates a genuine information gap without being clickbait or misleading
- [ ] No variant uses all-caps, excessive punctuation, or emoji unless the publication voice explicitly calls for it
- [ ] Each variant is meaningfully different in approach — not three rewordings of the same sentence
- [ ] Deployment guidance is specific to the input scenario, not generic advice
- [ ] The notification makes sense without any additional context — a reader seeing it cold understands enough to decide whether to tap

## Example

### Input
**Story:** A new study published in a major medical journal found that adults who sleep fewer than six hours a night are 2.5 times more likely to develop early-onset cognitive decline than those who sleep seven or more hours. The study tracked 14,000 participants over 12 years.

**Platform:** iOS (110-character lock screen limit)

**Tone:** Digital-native news voice — clear, direct, slightly conversational

### Output

**Variant A — Breaking/Urgent** [98 chars]
Sleep under 6 hours? Study of 14,000 people links it to 2.5x higher risk of early cognitive decline.

**Variant B — Informational** [108 chars]
A 12-year study of 14,000 adults found sleeping under 6 hours a night raises early cognitive decline risk 2.5x.

**Variant C — Curiosity-Driven** [103 chars]
The sleep threshold that changes your cognitive risk — and most people are already below it. New study.

---
*Deployment: Use Variant A for health and science subscribers who expect data-forward alerts. Use Variant C for the general push list to drive tap-through on a feature package.*

## Known Limitations
- Claude cannot predict tap-through rates. The three-variant structure supports A/B testing, but actual performance depends on send time, audience segment, and device context — factors outside the skill's scope.
- Push notifications for legally sensitive stories (court rulings, ongoing investigations, unconfirmed reports) require editorial and legal review before sending. This skill optimizes for clarity and engagement, not legal caution.
- Character counts are based on standard Unicode characters. Emoji, special characters, or non-Latin scripts may display differently across devices and could affect visible length.

## Related Skills
- [caption-writer](caption-writer.md) — write social media captions to accompany the same story
- [seo-meta-description-writer](seo-meta-description-writer.md) — write the meta description for the article the notification links to
- [ab-social-post-tester](../strategy/ab-social-post-tester.md) — generate A/B test variants for the social promotion of the same story

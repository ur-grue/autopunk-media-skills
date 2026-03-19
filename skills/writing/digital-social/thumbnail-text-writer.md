---
name: thumbnail-text-writer
status: beta
category: writing
subcategory: digital-social
version: 1.0
eval_score: null
tags: [thumbnail, youtube, social-media, visual, text-overlay, video]
---

# Thumbnail Text Writer

## What This Skill Does
Generates short, bold text overlays — five words or fewer — for YouTube and social media video thumbnails that are readable at small sizes and convey the video's core hook at a glance.

## When To Use This Skill
- You are designing a YouTube thumbnail and need text that works alongside a strong visual
- You need to communicate the video's key promise in the space of a stamp-sized preview
- You are A/B testing thumbnail copy and need multiple strong candidates fast
- Your current thumbnail text is either too long, too generic, or too similar to competitors

## What You Need To Provide
**Required:** The video title or topic, and the central promise or finding of the video — what the viewer will get from watching.
**Optional:** The visual already planned for the thumbnail (face, graphic, scene); the channel's established tone (dramatic, informative, conversational, authoritative); any words or phrases to avoid; whether you need text for the main overlay, a secondary label, or both.

## How Claude Approaches This
1. Strips the story to its single most provocative or valuable element — the one thing that makes a viewer think "I need to know that."
2. Compresses that element to the fewest possible words without becoming vague. Five words is the ceiling; three is usually better.
3. Prioritises noun-verb clarity and concrete specificity over cleverness. Thumbnail text must be understood in under a second.
4. Delivers five variants using different angles — a number, a direct address, a stark claim, a single-word intensifier, and a question — so you can match the text to the visual without compromising either.

## Output Format
Five numbered text options, each five words or fewer. Each option is on its own line with no punctuation beyond what is necessary for clarity. A one-line note follows each option explaining why it works and any visual pairing advice (e.g., "works best with a surprised face" or "pairs with a bold graphic, not a talking-head shot"). Labels indicate the approach: **Number**, **Address**, **Claim**, **Intensifier**, **Question**.

## Quality Criteria
- [ ] Every option is five words or fewer — no exceptions
- [ ] Each option is immediately readable without context: a stranger could understand it in one second
- [ ] No option uses vague superlatives ("amazing," "incredible," "best ever") that mean nothing without the video
- [ ] The five options represent genuinely distinct angles, not the same phrase rearranged
- [ ] At least one option works as a standalone label with no supporting visual

## Example

### Input
Video topic: A deep-dive video showing how cities have quietly changed zoning laws to allow more housing construction over the past three years, and why most people haven't noticed. The central finding is that housing supply in these cities has already started to increase, though rents haven't caught up yet. Channel tone: calm, analytical, grown-up. Thumbnail visual planned: an aerial shot of a dense residential street.

### Output
**Number:** 3 Years of Hidden Change
*Why it works: the number creates specificity; "hidden" creates curiosity without clickbait. Works with any visual.*

**Address:** Your City Built More
*Why it works: direct address makes it feel personally relevant. Strong paired with an aerial shot where viewers might spot a familiar skyline.*

**Claim:** Housing Supply Is Up
*Why it works: states the counterintuitive finding directly. Best for viewers already tracking housing policy — rewards the informed audience.*

**Intensifier:** Quietly, Cities Changed
*Why it works: the adverb "quietly" carries the whole intrigue. Clean enough to sit over a dense visual without competing.*

**Question:** Why Aren't Rents Falling?
*Why it works: names the tension the video resolves. Strongest as a secondary label beneath a main headline, or as a standalone A/B test against the Claim option.*

## Known Limitations
- Thumbnail text operates in service of the visual. This skill generates copy only — it cannot assess whether the text will be legible against a specific background colour or image. Always proof your chosen text over the actual thumbnail at mobile scale before publishing.
- Five-word compression occasionally sacrifices nuance for punch. If your video's value is genuinely complex, a slightly longer title card in the video itself can carry what the thumbnail cannot.
- This skill does not generate thumbnail concepts or image direction. For the full visual brief, use the thumbnail-concept-brief skill.

## Related Skills
- [thumbnail-concept-brief](../../youtube/pre-production/thumbnail-concept-brief.md)
- [seo-title-optimizer](../../youtube/pre-production/seo-title-optimizer.md)
- [teaser-line-writer](teaser-line-writer.md)

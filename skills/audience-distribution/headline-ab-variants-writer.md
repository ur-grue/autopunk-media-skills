---
name: headline-ab-variants-writer
status: beta
category: audience-distribution
subcategory: audience-distribution
version: 1.0
eval_score: null
tags: [headlines, a/b-testing, click-through, SEO, digital-publishing]
---

# Headline A/B Variants Writer

## What This Skill Does
Takes one original headline and produces five distinct tested variants, each using a different proven approach to drive clicks, shares, or engagement — ready to load directly into a CMS or A/B testing tool.

## When To Use This Skill
- Before publishing a digital article when you want to test which headline drives the highest click-through rate
- When a homepage editor needs multiple options to choose from quickly
- When a newsletter editor needs a subject line that performs better than the default article title
- When an original headline tested poorly in a previous send and you need alternatives fast
- When a story has multiple strong angles and you are unsure which leads

## What You Need To Provide
**Required:** The original headline. A one-sentence description of the article's main finding or argument. The intended platform (website homepage, newsletter subject line, social media post, push notification).
**Optional:** Target audience (e.g. general public, finance professionals, parents of young children). Any constraints — character limits, house style rules, words to avoid. The current click-through rate or open rate if the original headline has already been tested.

## How Claude Approaches This
1. Analyses the original headline to identify what it does well and where it may be leaving value on the table — for example, it may be accurate but lack urgency, or it may be clever but unclear.
2. Writes five variants, each deliberately built on a different technique: direct benefit, curiosity gap, news-forward, question format, and specificity/number-led. Labels each variant with the technique so editors can see what they are testing.
3. Adds a one-line note per variant explaining the hypothesis — why this version might outperform the original — so the editor can make an informed choice rather than picking at random.

## Output Format
A structured list of five numbered variants, each presented as:
- The headline text (bold)
- Technique label in brackets
- One-line hypothesis (italics)

Total length: 300–400 words including the brief preamble and notes. Plain language throughout — no marketing jargon. Character count included for any variant over 70 characters, so the editor can assess fit for platform constraints.

## Quality Criteria
- [ ] All five variants are substantively different from each other and from the original — not minor word swaps
- [ ] Each technique label matches what the variant is actually doing
- [ ] Every variant accurately represents the article — no variant makes a claim the article does not support
- [ ] Variants respect any stated character limits or style constraints
- [ ] The hypothesis note is specific enough to be testable — not "may perform better" but "likely to perform better with readers who don't already know the story"

## Example

### Input
Original headline: "The government's new housing plan explained"

Article summary: A new national housing strategy proposes building 400,000 homes over five years, primarily on publicly owned brownfield land, funded by a new development levy on large developers. Critics argue the targets are unrealistic given current construction workforce shortages.

Platform: Website homepage and newsletter subject line

Target audience: General public, homeowners and renters

Character limit: 80 characters for newsletter subject line

### Output

Here are five headline variants for A/B testing, each using a different approach. Character counts are noted where relevant for your 80-character subject line limit.

---

**1. "400,000 homes in five years: the government's housing plan, explained"** [Specificity/number-led]
*Hypothesis: Leading with the concrete number gives readers an immediate sense of scale and makes the story feel more concrete than the original. Likely to outperform with readers who scan rather than read.* — 70 characters

**2. "The housing plan sounds big. Experts say the maths doesn't add up"** [Curiosity gap / tension]
*Hypothesis: Introduces conflict between the government's claim and expert scepticism, which creates a reason to click even for readers who think they already know the story.* — 66 characters

**3. "Can Britain build 400,000 homes when it doesn't have enough builders?"** [Question format]
*Hypothesis: Frames the central tension as a question readers may not have considered. Works well for audiences who are engaged on housing but haven't followed the workforce angle.* — 69 characters

**4. "What the new housing plan actually means if you're renting or trying to buy"** [Direct benefit]
*Hypothesis: Speaks directly to readers' self-interest. Renters and would-be buyers are a large share of the audience and this variant tells them immediately why the story is relevant to them.* — 76 characters ✓ within limit

**5. "Government unveils five-year plan to build 400,000 homes on public land"** [News-forward]
*Hypothesis: Leads with the news event rather than the analysis, which may perform better as a push notification or for readers arriving via search who want the factual summary first.* — 71 characters

---

**Recommended starting point for the newsletter subject line:** Variant 4. It is within your character limit and directly addresses the self-interest of renters and buyers, who are likely to be a high proportion of your subscriber base.

## Known Limitations
- This skill writes variants based on the article summary you provide, not the full article text. If the summary is vague or incomplete, some variants may not accurately reflect what the article actually delivers.
- A/B testing requires traffic volume to produce statistically meaningful results — typically at least 1,000 impressions per variant. For low-traffic pages or small newsletters, the results of testing these variants may not be conclusive.
- The skill does not have access to your publication's historical click-through data, so hypotheses are based on general content performance principles rather than what has worked specifically for your audience.
- Question-format headlines perform inconsistently across audiences and platforms — what works in a newsletter subject line may depress clicks on a homepage.

## Related Skills
- [audience-feedback-summariser](./audience-feedback-summariser.md)
- [ab-title-test-brief](../youtube/analytics/ab-title-test-brief.md)
- [newsletter-audience-segmenter](./newsletter-audience-segmenter.md)
- [seo-title-optimizer](../youtube/pre-production/seo-title-optimizer.md)

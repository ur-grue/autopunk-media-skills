---
name: social-post-ab-variants-writer
status: beta
category: audience-distribution
subcategory: audience-distribution
version: 1.0
eval_score: null
tags: [social-media, a/b-testing, engagement, distribution, copywriting]
---

# Social Post A/B Variants Writer

## What This Skill Does
Generates two or three distinct social media post variants for the same article or piece of content, each testing a different angle, hook, or emotional register, so you can run a controlled comparison and learn what resonates with your audience.

## When To Use This Skill
- You are publishing a new article, video, or episode and want to promote it across social media without committing to a single framing before you know what works
- Your publication has enough followers to generate meaningful engagement data and wants to make distribution decisions based on evidence rather than instinct
- You need copy for a scheduled social media test — two posts going out at similar times to different audience segments, or sequentially over several days
- A previous post underperformed and you want to relaunch the same content with different framings

## What You Need To Provide
**Required:** The headline or title of the piece, a one-paragraph summary of what the article covers, and the platform you are posting to (LinkedIn, X/Twitter, Instagram, Facebook, or Bluesky).

**Optional:** The primary audience segment (general public, specialists, decision-makers); any constraints on length or tone set by your publication's style guide; the specific hypothesis you want to test (e.g., "curiosity-gap hook vs. direct statement of fact"); any call-to-action wording you want to keep consistent across variants.

## How Claude Approaches This
1. Identifies three proven copywriting angles for the piece — typically: a direct news statement, a curiosity or question hook, and an emotional or human-interest angle — and selects the two or three that are most plausible given the content.
2. Drafts each variant independently, keeping the article link and any fixed call-to-action identical across variants but varying the opening sentence, emotional register, and framing strategy. Each variant is genuinely different — not the same post with one word swapped.
3. Labels each variant with its hypothesis (what it is testing), so the social media team can interpret results without needing to decode the copy themselves. Notes any platform-specific formatting (character limits, hashtag conventions, emoji norms).

## Output Format
Two or three labelled variants, each 40–280 characters depending on the platform, preceded by a one-line label identifying the hook strategy. Each variant is self-contained — ready to paste into a scheduling tool. A brief note at the end explains what outcome would indicate which variant is performing better. No need for the editor to interpret the test themselves.

## Quality Criteria
- [ ] Each variant opens with a genuinely different hook — not the same sentence reworded slightly
- [ ] Variants test one variable at a time (hook type, not hook type and length and emoji use simultaneously)
- [ ] Copy is within platform character limits and matches the platform's conventions (e.g., no hashtag stuffing on LinkedIn)
- [ ] The hypothesis for each variant is stated explicitly in the label, not left implicit
- [ ] Every variant is complete and ready to post — no placeholders, no "insert link here"

## Example

### Input
**Article headline:** Rising rents are pushing key workers out of the cities that need them most

**Summary:** A data-led feature showing that nurses, teachers, and paramedics in major metropolitan areas spend an average of 42 percent of their take-home pay on rent, with one in five reporting they have already moved or are planning to move more than 45 minutes from their workplace. Draws on housing cost data from eight cities over five years.

**Platform:** X (Twitter)

**Audience:** General public

**Hypothesis to test:** Does a human-interest framing outperform a data-led framing?

### Output

---

**Variant A — Data-led hook**
Nurses. Teachers. Paramedics. They spend 42% of their salary on rent — and 1 in 5 are already planning to leave. New data from 8 cities shows who's being priced out of the places that need them most. [link]

*Testing: Does citing the specific statistic upfront drive more clicks?*

---

**Variant B — Human-interest hook**
"I love my job. I just can't afford to live near it anymore." Key workers are being priced out of the cities they keep running. [link]

*Testing: Does a first-person voice and emotional framing outperform a data-led opening?*

---

**How to read the results:** If Variant A gets more link clicks but fewer likes and replies, the data framing is driving readers to the article but not sparking conversation. If Variant B gets more replies and shares, the human framing is generating emotional resonance. Run for 48 hours before drawing conclusions.

## Known Limitations
- A/B testing on social media requires a sufficiently large following to produce statistically meaningful results. Publications with fewer than 5,000 engaged followers will see noise, not signal — results may reflect timing or algorithm changes rather than copy quality.
- This skill generates copy variants; it cannot run the test, report results, or make decisions about which variant to scale. A human must interpret the engagement data.
- For platforms where the algorithm heavily controls distribution (Instagram Reels, TikTok), copy differences matter less than visual content. This skill is most effective for text-forward platforms.

## Related Skills
- [headline-ab-variants-writer](headline-ab-variants-writer.md)
- [platform-distribution-advisor](platform-distribution-advisor.md)
- [audience-feedback-summariser](audience-feedback-summariser.md)

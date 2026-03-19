---
name: newsletter-subject-line-writer
status: beta
category: writing
subcategory: digital-social
version: 1.0
eval_score: null
tags: [newsletter, email, subject-line, open-rate, distribution, copywriting]
---

# Newsletter Subject Line Writer

## What This Skill Does
Writes five subject line options for a newsletter edition — each using a different opening strategy — so you can choose the one that fits your audience, tone, and what the edition actually delivers.

## When To Use This Skill
- You have finalized a newsletter edition and need a subject line that will earn an open in a crowded inbox
- Your current subject lines are generic ("This week's stories", "Issue #47") and you want to test something more compelling
- You want multiple options to A/B test against each other or across different audience segments
- You are writing for a new publication and have not yet found a signature subject line style

## What You Need To Provide
**Required:** The lead story or main theme of the edition · One sentence describing what readers will get if they open it · Your newsletter's name (used for the preview text context, not the subject line itself unless relevant)

**Optional:** Tone of the newsletter (e.g., serious investigative, warm editorial, dry analytical, playful) · Audience (e.g., general public, policy professionals, media industry) · Any words or formats to avoid (e.g., no questions, no emoji, no ALL CAPS) · Approximate word or character limit if your email platform enforces one · Preview text (the sentence that appears after the subject line in most email clients) — if provided, Claude will write the subject lines to complement it rather than repeat it

## How Claude Approaches This
1. Reads the edition's lead story and core promise to the reader, and identifies the strongest single angle — the finding, tension, question, or detail that an inbox-scanning reader would pause for
2. Generates five subject lines, each using a distinct approach: a declarative statement, a specific data point or fact, an implied question or tension, an unexpected or counterintuitive framing, and a direct reader-benefit frame ("What you need to know about X")
3. Labels each option with its approach so you know what you are choosing between, not just which words you prefer
4. Where preview text has been provided, ensures no option duplicates it — subject line and preview text should work as a pair, not a repetition

## Output Format
Five numbered subject line options, each followed by a one-line label explaining the approach (e.g., "Declarative statement — leads with the finding"). Subject lines: 40–60 characters preferred for mobile readability, maximum 70 characters. No quotation marks around the subject lines. If a subject line is outside the recommended length, a brief note is added. No explanation beyond the label — the options speak for themselves.

## Quality Criteria
- [ ] All five options are meaningfully different from each other in structure and strategy — not just synonym substitutions
- [ ] At least one option is specific enough that it could only apply to this edition, not recycled for any newsletter
- [ ] No option uses manipulative or sensationalist language (false urgency, clickbait superlatives, misleading implications)
- [ ] Options are honest about what the edition contains — a reader who opens based on the subject line gets what was promised
- [ ] Each option is labelled clearly so the editor understands what they are choosing, not just what sounds good

## Example

### Input
**Lead story / main theme:** A reported investigation into how a national broadband infrastructure programme has left rural households paying for upgraded connections they cannot actually use — because the physical installation was signed off as complete before it was functional
**What readers get if they open:** A data-backed investigation with testimony from affected households, contractor interviews, and internal government performance data
**Newsletter name:** The Infrastructure Brief
**Tone:** Serious, analytical — readers are policy professionals, engineers, and civil servants
**Avoid:** Questions, emoji
**Preview text (already written):** "Thousands of households are paying for broadband speeds they cannot access. Here is how that happened."

### Output
1. **Paid for, but not delivered**
   *Declarative statement — leads with the core injustice; short and factual*

2. **The broadband programme that passed inspection — then failed to work**
   *Narrative tension — frames the story as a system failure with a clear sequence; 68 characters, slightly above preferred length*

3. **Rural broadband: the gap between signed-off and switched on**
   *Specific framing — uses the precise bureaucratic distinction at the heart of the investigation*

4. **What "complete" means on paper vs. in practice**
   *Counterintuitive framing — draws on the investigation's central irony without overstating it*

5. **Inside the infrastructure sign-off gap**
   *Reader-positioning frame — positions the edition as an explainer of a systemic problem, appeals to policy and oversight audiences*

## Known Limitations
- Subject line performance depends heavily on list size, sender reputation, send time, and audience habits — this skill writes strong options but cannot predict which will perform best for your specific list; A/B testing two options is the only reliable way to find out
- For newsletters with a long-established signature style (e.g., always a single short phrase, always a pun, always a date), Claude will approximate that style if you describe it, but may not match it exactly without seeing historical examples
- This skill does not write preview text; if you need both subject line and preview text written together as a pair, request that explicitly
- Character counts are estimates — verify in your email platform, as some clients measure by pixel width, not character count

## Related Skills
- [newsletter-blurb-writer](./newsletter-blurb-writer.md)
- [newsletter-teaser-writer](../../magazine-journalism/distribution/newsletter-teaser-writer.md)
- [ab-title-tester](../../youtube/analytics/ab-title-tester.md)

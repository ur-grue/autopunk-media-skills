---
name: competitor-engagement-analyzer
status: beta
category: research
subcategory: media-competitive
version: 1.0
eval_score: null
tags: [competitive-research, audience-analysis, editorial-strategy]
---

# Competitor Engagement Analyzer

## What This Skill Does
Interprets audience engagement signals from a competitor's published piece — comments, shares, reader responses, social traction — to identify what resonated with the audience and why.

## When To Use This Skill
- When a competitor's piece has performed noticeably well (high share count, comment volume, visible social spread) and you want to understand what drove that response before planning your own coverage
- When your editor asks why a competitor is "winning" on a particular story and you need a structured answer, not a hunch
- Before commissioning a piece on a topic where a similar story already exists, to learn from what the audience has already signalled it wants
- When reviewing your own underperforming content against a competitor's successful piece on the same subject

## What You Need To Provide
**Required:** The competitor's article, script, or episode (paste the full text, or a detailed summary). Any engagement data you have access to — comment samples, share counts, social posts quoting or reacting to the piece, reader letters, or a description of how the story spread.
**Optional:** The platform or format the piece appeared on (affects what engagement signals mean). Your outlet's audience profile, so Claude can flag whether the engagement signals are relevant to your readers or represent a different demographic.

## How Claude Approaches This
1. Reads the content and identifies the structural and editorial choices the piece makes: the lede type, the central claim, the sources used, the emotional register, and the point at which the piece peaks or shifts.
2. Reads the engagement data and categorises the audience responses — what readers are agreeing with, pushing back on, sharing as a quote, turning into a further question, or emotionally reacting to.
3. Maps the editorial choices in step one against the engagement patterns in step two, identifying which specific elements appear to have driven the strongest responses, and why — connecting craft decisions to audience reactions.

## Output Format
A structured report of 350–500 words in three sections:
- **What the piece did editorially** (3–5 bullets): the notable craft or editorial choices that shaped how the piece landed.
- **How the audience responded** (3–5 bullets): the dominant engagement patterns, each described with a specific example from the data you provided.
- **What the engagement signals suggest** (3–5 bullets): actionable editorial inferences — what this audience appears to want, what question the piece left open, what format or tone produced the strongest response.

Tone is analytical and editorial — the language of a senior editor's debrief, not a marketing report. No jargon from digital analytics unless you have provided platform-specific metrics.

## Quality Criteria
- [ ] Every claim in the "How the audience responded" section traces back to a specific signal from the data provided — no inferences presented as observations
- [ ] The "What the piece did editorially" section names specific craft choices (structure, source type, lede approach, emotional register), not vague praise
- [ ] The "What the engagement signals suggest" section produces at least one recommendation concrete enough to influence a commissioning decision
- [ ] The output does not conflate volume of engagement with quality of engagement — a high comment count driven by disagreement is treated differently from one driven by recognition
- [ ] Output stays within the 350–500 word range

## Example

### Input
**Competitor piece:** A 1,800-word reported feature on why remote workers are leaving major cities and settling in smaller regional towns. Structured around three individual profiles, with a policy section at the end citing housing cost data and a quote from a city planning academic.

**Engagement data:**
- 4,200 shares on social media, concentrated in the first 48 hours after publication
- Top shared quote (appearing in over 300 posts): "We stopped asking whether we could afford to stay. We started asking whether we even wanted to."
- Comment section: 140 comments. Dominant themes — readers sharing their own relocation stories (approx. 60%), readers expressing they are considering leaving but haven't (approx. 25%), a small cluster of pushback from urban advocates (approx. 10%), miscellaneous (5%).
- Three readers emailed the publication asking for a follow-up on how to find remote-work-friendly towns.

**Platform:** National digital news magazine.

**Our audience:** Professionals aged 28–45, urban-based, primarily employed in knowledge-economy roles.

### Output

**What the Piece Did Editorially**

- Led with an individual story rather than a statistic, establishing an emotional point of identification before introducing data.
- Used three profiles representing different life stages (early career, family with children, approaching retirement) — broad enough that most readers could find a version of themselves.
- Held the policy and data material until the final third, using it to validate the emotional case built earlier rather than to open it.
- The most-shared line was not a data point — it was a moment of psychological clarity from a subject, written in first person and structured as a pivot sentence.
- The piece ended open, with the subjects settled but the broader question unresolved, implicitly inviting readers to continue the conversation.

**How the Audience Responded**

- The dominant response (60% of comments) was autobiographical: readers did not debate the piece, they used it as permission to share their own experiences. The piece functioned as a prompt, not an argument.
- The most-shared quote signals that the emotional core — not the data — drove sharing behaviour. Readers shared the line that named a feeling, not the paragraph that proved a trend.
- The 25% of comments from readers "considering leaving" represent a pre-decision audience: people at a moment of tension the piece accurately identified. This group is likely to seek follow-up content.
- Three follow-up email requests for practical guidance indicate the piece created an information need it did not meet — a common pattern when reported features do not include a service-journalism component.
- Pushback was contained and did not suppress sharing, suggesting the piece framed its premise carefully enough to avoid triggering defensive responses from its core audience.

**What the Engagement Signals Suggest**

- Your audience will respond more strongly to psychological and financial recognition than to policy argument. Lead with the feeling; use data to confirm it.
- A companion service piece — "How to evaluate whether a regional town works for your career" — addresses the demonstrated follow-up demand and keeps the audience in your ecosystem rather than sending them to search.
- The three-profile structure worked because of its demographic range, not simply its human interest. If you cover the same topic, profile selection should be deliberate across life stage, not just geography.
- Engagement peaked in the first 48 hours, driven by social shares rather than search. This piece was successful as a social object, not an evergreen reference — plan your publishing and promotion window accordingly.

## Known Limitations
- This skill interprets engagement data you provide — it cannot retrieve live metrics, crawl comment sections, or access social media directly. The quality of the analysis depends entirely on the quality and completeness of the data you supply.
- Engagement data from social platforms is often partial and unrepresentative. High share counts on one platform may not reflect the views of a publication's core readership. Claude will flag this where relevant but cannot correct for platform bias on your behalf.
- For paywalled content where comment sections are small or absent, engagement signals are inherently limited. The skill works best with pieces that generated visible, quotable public responses.
- This skill identifies correlations between editorial choices and audience responses — it cannot establish causation. Other factors (timing, algorithm behaviour, the news cycle) may explain engagement as much as the editorial decisions themselves.

## Related Skills
- [competitor-coverage-brief](./competitor-coverage-brief.md)
- [competitor-framing-analyzer](./competitor-framing-analyzer.md)
- [audience-persona-builder](../../youtube/channel-strategy/audience-persona-builder.md)

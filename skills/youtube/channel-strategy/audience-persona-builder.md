---
name: audience-persona-builder
status: stable
category: youtube
subcategory: channel-strategy
version: 1.0
eval_score: 4.4
tags: [youtube, strategy, audience, persona, demographics, channel-growth]
---

# Audience Persona Builder

## What This Skill Does
Generates a detailed, practical audience persona profile for a YouTube channel — covering who the viewer is, what they need, why they watch, and what content decisions follow from understanding them.

## When To Use This Skill
- You're starting a channel and want to define who you're making content for before you start publishing
- Your channel has been growing but you've never formalized who your audience is, and you're making inconsistent content decisions
- You're preparing a sponsorship pitch or media kit and need a structured audience description for brands
- You're evaluating whether a new video idea fits your channel's core audience

## What You Need To Provide
**Required:** Channel niche and content style; your own description of who you think watches your channel (even if rough); any data you have about your audience — YouTube Analytics demographics, common comments or questions, subscriber feedback.
**Optional:** Your channel's top 3 performing videos; geographic focus; what problem your channel solves for viewers; any brands or products your audience already uses and talks about.

## How Claude Approaches This
1. Synthesizes the input to build a coherent primary viewer profile — not a generic demographic bucket but a specific person with specific needs, habits, and motivations for watching this kind of content.
2. Develops the persona across five dimensions: who they are (life stage, context, relationship to the topic), what they're trying to do (goals and problems), how they watch (consumption habits, discovery behavior, what makes them subscribe vs. bounce), what they trust (content cues that signal credibility), and what they avoid (content styles or tones that repel this viewer).
3. Concludes with three direct content strategy implications — specific decisions about tone, format, or topic depth that follow from the persona rather than generic advice.

## Output Format
Named persona with a one-sentence summary, followed by five sections covering the dimensions above. Ends with three numbered content implications. Length: 500–700 words. Written in plain prose — no bullet-point overload. The persona should read like a description of a real person, not a marketing worksheet.

## Quality Criteria
- [ ] Persona is specific enough that you could describe them to a collaborator without the document — not "adults interested in cooking"
- [ ] Five dimensions are all distinct — no overlap or repetition between sections
- [ ] Content implications are actionable decisions, not generic advice ("Keep tutorials under 12 minutes — this viewer watches on commute" not "Make good content")
- [ ] Persona is clearly derived from the channel input provided, not a generic archetype pasted in
- [ ] Trust and avoidance sections are realistic — they identify something that would actually affect content decisions
- [ ] No demographic stereotyping — the persona is built from behavioral and motivational data, not assumptions about age or gender

## Example

### Input
**Channel niche:** Mechanical keyboard hobby — reviews, builds, and typing sound comparisons
**My read on the audience:** Mostly people who work at computers all day — developers, writers, office workers — who discovered the hobby through Reddit or a coworker's keyboard. A mix of people who want a better daily driver and people who are fully into the hobby.
**Analytics data:** 68% male, 22–34 most common age bracket, top countries are USA, UK, Germany, Canada, Australia. Average view duration 7.2 minutes (videos average 14 minutes). Comments frequently ask "what switches for everyday typing?" and "is this worth it for an office?"
**Top 3 performers:** Endgame budget build under $150, Cherry MX Red vs Brown comparison, "I typed on this keyboard for 30 days"
**Problem the channel solves:** Cutting through the overwhelming amount of keyboard information to help people make a confident buying decision

### Output

**Persona: Alex, the Deliberate Upgrader**

*Alex came to the keyboard hobby through frustration, not enthusiasm — a cheap office keyboard was making long writing sessions miserable, a coworker had something that sounded better, and a Reddit rabbit hole later, the hobby found them.*

**Who they are**
Alex is in their late 20s or early 30s, works at a computer for most of the day — software development, writing, design, or similar — and thinks carefully before spending money on anything. They're not impulsive buyers. They have a real use case (typing all day) and a genuine tolerance threshold for the keyboard they're currently using. The hobby aspects interest them but don't define them: they want a better tool, not a collection.

**What they're trying to do**
Their primary goal is a confident buying decision. They're not looking to be converted into enthusiasts — they're trying to answer a specific question: "Is this actually better for daily use, and is it worth what it costs?" Secondary to this, they want to understand enough about the options to not feel lost in a community with a lot of jargon. They come to the channel because it explains things without condescension and benchmarks against real-world use rather than hobby metrics.

**How they watch**
Alex watches during a commute, lunch break, or wind-down period — not at a desk. Average session is under 10 minutes. They often have a specific keyboard in mind when they search and are using the video to confirm or disconfirm a decision they're already leaning toward. They subscribe when a video answers a question they didn't know they had — the Cherry vs Brown comparison is a perfect example. They bounce from videos that start with more than 60 seconds of setup before getting to something useful.

**What they trust**
Long-term use is the key credibility signal — "I used this for 30 days" outperforms "I just unboxed this" every time with this viewer. They also trust comparisons that name a specific loser: a fair comparison that doesn't pick a winner feels evasive. Honest budget acknowledgment (this is not worth it at full price, wait for a sale) builds disproportionate trust with this audience.

**What they avoid**
Alex disengages from content that assumes hobby buy-in — "the endgame board" framing, talk of collecting, or extended discussion of aesthetics over typing feel. They also disengage from channels that seem to be pushing affiliate revenue: repeated recommendation of the same products, vague disclaimers, or reviews that never identify a weakness.

---

**Content Strategy Implications**

1. **Keep the decision frame front and center.** Every video should answer a buying or usage question by the end — not "here's what this keyboard does" but "here's who should buy this and who shouldn't." Alex is always one step from a purchasing decision.

2. **Front-load the useful information.** With average view duration at 50% of video length, the most valuable content needs to land in the first 7 minutes. Intros longer than 45 seconds will cost significant watch time with this viewer.

3. **Use long-term use as a format differentiator.** The "30 days" video outperformed because it answered the question this audience cares most about: how does this hold up in real use? Test monthly use updates, revisit videos, or "6 months later" follow-ups — this format is specifically matched to Alex's trust signals.

## Known Limitations
- This skill produces a primary persona based on the most common viewer type suggested by the input. Real channels typically have 2–3 distinct audience segments. If your Analytics show a clear secondary audience (e.g., your mechanical keyboard channel also draws a collector segment), provide that explicitly and ask for a second persona.
- Demographic data helps, but this skill deliberately de-emphasizes it in favor of behavioral and motivational patterns. If a brand requires a demographic-heavy profile for a media kit, supplement with actual Analytics exports.
- The persona is a model, not a measurement. It should be updated when you observe patterns in comments or Analytics that don't match it.

## Related Skills
- [content-calendar-planner](../channel-strategy/content-calendar-planner.md)
- [youtube-media-kit-generator](../business/youtube-media-kit-generator.md)
- [niche-video-idea-generator](../pre-production/niche-video-idea-generator.md)

---
name: thumbnail-concept-brief
status: stable
category: youtube
subcategory: pre-production
version: 1.0
eval_score: 4.4
tags: [youtube, pre-production, thumbnails, visual, design-brief]
---

# Thumbnail Concept Brief

## What This Skill Does
Produces a detailed, production-ready thumbnail concept brief that a designer or self-producing creator can execute without further instruction.

## When To Use This Skill
- You are about to publish a video and need a thumbnail direction before opening a design tool
- You work with a freelance designer and need to communicate exactly what you want without back-and-forth
- You are testing multiple thumbnail concepts and want structured options to compare
- You have a channel visual style and want consistent thumbnail concepts that match it

## What You Need To Provide
**Required:** Video title or topic; target audience; the core emotion or reaction you want the viewer to feel when they see the thumbnail
**Optional:** Channel color palette or existing visual style; whether a face/presenter should appear; platform context (desktop vs. mobile primary); competitor thumbnails you want to differentiate from; text overlay preferences

## How Claude Approaches This
1. Identifies the single visual idea that most powerfully communicates the video's value — the "one-frame promise" that makes a viewer stop scrolling
2. Develops 2–3 distinct concept directions, each with a different emotional or compositional approach (e.g., one curiosity-driven, one results-focused, one identity-based)
3. For each concept, specifies: background treatment, foreground subject(s), text overlay (copy, position, size hierarchy), color mood, and any facial expression or gesture if a presenter is shown
4. Adds production notes: what to shoot or source, what to avoid, and which concept to prioritize for the first publish

## Output Format
Structured brief with a top-line summary, then 2–3 numbered concept blocks. Each concept block contains: Concept Name, Emotional Hook, Background, Foreground/Subject, Text Overlay, Color Mood, and Production Notes. Total length: 350–500 words. Written in plain English — no design jargon that would confuse a non-designer.

## Quality Criteria
- [ ] Each concept has a distinct emotional approach — not just visual variations of the same idea
- [ ] Text overlay copy is written out in full, not described generically ("bold text" is not acceptable; "NEVER DO THIS" in red is)
- [ ] Every concept includes specific color or mood direction, not just "bright" or "dark"
- [ ] Production notes flag anything that would require special equipment or permissions
- [ ] At least one concept is optimized for mobile viewing (high contrast, minimal text)

## Example

### Input
Video title: "Why Your Savings Account Is Losing You Money"
Target audience: Adults 28–45, employed, financially aware but not expert
Core emotion: Shock/urgency — I want them to feel like they're losing something right now
Channel style: Clean, dark background, host appears on right side of frame
Text preference: Short, punchy overlay on left side

### Output
**Thumbnail Brief — "Why Your Savings Account Is Losing You Money"**

**One-Frame Promise:** The viewer should feel they are already losing money and need to watch immediately.

---

**Concept 1: The Disappearing Money**
- *Emotional Hook:* Loss aversion — the feeling something is being taken from you
- *Background:* Deep charcoal (#1a1a1a), slightly vigneted edges
- *Foreground/Subject:* Host on right side of frame, expression: concerned but knowing (slight frown, direct eye contact with camera). Left side: a stack of coins or a wallet with coins visibly falling/disappearing (composite or real prop)
- *Text Overlay:* Left-aligned, two lines — "YOUR SAVINGS" (white, large) / "ARE SHRINKING" (red, slightly smaller). No punctuation.
- *Color Mood:* Dark with red accent — conveys danger without feeling cheap
- *Production Notes:* Shoot host against dark backdrop. Coin prop or Photoshop composite for the falling money element. Avoid stock-image hands holding money (overused in finance thumbnails).

---

**Concept 2: The Number Reveal**
- *Emotional Hook:* Curiosity + specificity — a real number creates urgency
- *Background:* Clean dark gradient, left to right dark blue to black
- *Foreground/Subject:* Host, right side, slightly surprised expression, gesturing toward the text element
- *Text Overlay:* Large central number "-2.3%" in red, with smaller text below: "what your bank won't say"
- *Color Mood:* High contrast — white and red on dark blue
- *Production Notes:* The percentage figure should look like a financial terminal readout. Use a monospace font for the number. Host expression must read as genuine alarm, not theatrical shock.

---

**Concept 3: Text-Only (Mobile-First)**
- *Emotional Hook:* Direct challenge — works without a face
- *Background:* Solid dark red (#8b0000) to black gradient
- *Foreground/Subject:* No host. Text dominates.
- *Text Overlay:* Three lines — "YOUR SAVINGS" / "ARE A" / "TRAP" — stacked, white on dark, massive type
- *Color Mood:* Alarming red — communicates urgency at thumbnail size on a phone
- *Production Notes:* Use a heavy sans-serif (e.g., Impact, Black weight). Test at 120×68px to ensure readability. Recommended as mobile A/B test against Concept 1.

**Recommended for primary publish:** Concept 1. Test Concept 3 as mobile variant after initial publish.

## Known Limitations
- Claude cannot view or analyze actual images; if you have reference thumbnails you want to match or differentiate from, describe them in text rather than attaching files
- Color hex values are suggested based on described mood — verify against your actual brand palette before use
- Thumbnail effectiveness is impossible to predict without A/B testing; treat all concepts as hypotheses, not guarantees
- For animated or motion thumbnails (used in some channels), this skill produces static concepts only

## Related Skills
- [seo-title-optimizer](seo-title-optimizer.md)
- [hook-generator](hook-generator.md)
- [niche-video-idea-generator](niche-video-idea-generator.md)

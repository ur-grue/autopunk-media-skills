---
name: layout-placement-advisor
status: beta
category: production-support
subcategory: publishing
version: 1.0
eval_score: null
tags: [layout, design, images, pull quotes, infographics, editorial, production]
---

# Layout Placement Advisor

## What This Skill Does
Recommends where to place visual elements — images, pull quotes, infographics, and sidebars — within a specific article, based on the article's structure, pacing, and editorial logic.

## When To Use This Skill
- You are laying out a long-form article and are unsure where to break up the text with visuals
- You have more images or pull quotes than you can use and need to prioritise which ones to place and where
- A designer or sub-editor is asking you which section of the piece warrants a visual break
- You are adapting a short-form print layout to a longer web scroll and need to redistribute visual elements

## What You Need To Provide
**Required:** A summary or full text of the article (or at minimum a paragraph-by-paragraph outline), plus a list of the visual assets available — describe each asset briefly (e.g., "portrait photo of the main subject," "bar chart showing five-year cost increases," "pull quote: 'We had three days to get out'").

**Optional:** The publication medium (print spread, single-column web, mobile-first web). Word count and approximate number of pages or scroll sections. Any house rules about visual placement (e.g., no image in the first paragraph, pull quotes must appear in the second half only).

## How Claude Approaches This
1. Reads the article structure and identifies its natural narrative beats — the opening hook, background/context section, key evidence or testimony passages, turning points, and conclusion — then notes where reader attention typically dips in long-form pieces.
2. Matches each available visual asset to the section it serves best: data visuals go near the passage that references the data, portrait images go near the subject's first substantive quote, pull quotes are drawn from emotionally or rhetorically strong moments.
3. Produces a placement plan that staggers visuals evenly through the piece, avoids clustering them at the top, and flags any section that runs long without a visual break — with a note on whether that section needs one or whether the narrative momentum justifies the text-only run.

## Output Format
A numbered placement plan, one entry per visual asset. Each entry states: the asset (described briefly), the recommended placement (before which paragraph or section, or at what approximate word count), and a one-sentence rationale. Ends with an optional "spacing check" noting whether the overall visual rhythm feels balanced and flagging any dead zones longer than approximately 600 words. Plain editorial language — no design jargon.

## Quality Criteria
- [ ] Every available visual asset receives a specific placement recommendation, not a vague suggestion
- [ ] Each recommendation includes a rationale tied to the article's content, not just generic spacing logic
- [ ] The placement plan produces visual breaks at intervals appropriate to the medium (print vs. web)
- [ ] Pull quote selections are drawn from lines that reward re-reading out of context
- [ ] Any section longer than 600 words without a visual is explicitly flagged

## Example

### Input
Article: "The Last Bus Route" — a 1,800-word reported feature about rural transport cuts in a mountainous region. Structure:

1. Opening scene: elderly woman walks 6km to collect her pension after her local bus route is cancelled. (~200 words)
2. Background: nationwide pattern of rural route cuts over five years; government cost-saving rationale. (~300 words)
3. Data section: references a chart showing the 34% reduction in rural routes since 2019. (~200 words)
4. Testimony: three residents describe daily life without the bus — medical appointments missed, social isolation, one family forced to sell a car they cannot afford to maintain. (~400 words)
5. Counter-argument: transport ministry spokesperson says demand did not justify the routes; regional operator says fuel costs made them unviable. (~200 words)
6. Closing: return to the woman from the opening; she has moved to a care facility in the city. (~200 words) — No more visual assets needed here per editor.

Visual assets available:
A. Portrait photo of the elderly woman (main subject)
B. Bar chart: rural route reductions by year, 2019–2024
C. Wide landscape photo: the empty rural road where the bus used to run
D. Pull quote: "My doctor is forty kilometres away. I haven't been in eight months." (from testimony section)
E. Pull quote: "The numbers didn't add up. They never did for these communities." (from a resident, testimony section)

Medium: single-column web article, mobile-first. No house rules specified.

### Output

## Layout Placement Plan: "The Last Bus Route"

**Medium:** Single-column web, mobile-first
**Word count:** ~1,800 words
**Visual assets:** 5

---

**1. Asset A — Portrait photo of the elderly woman**
**Place:** At the top of the article, before paragraph 1 (as the hero/lead image).
**Rationale:** The opening scene centres entirely on this woman — her photo establishes the human anchor of the piece before the reader processes a single word. On mobile, a strong portrait immediately above the headline drives scroll-through.

**2. Asset C — Wide landscape photo: the empty road**
**Place:** After paragraph 2 (end of the background section, before the data section).
**Rationale:** The background section describes a nationwide pattern; the landscape photo gives that abstraction a physical reality. It also provides a visual break after ~500 words of text, which is the first risk point for scroll abandonment on mobile.

**3. Asset B — Bar chart: rural route reductions 2019–2024**
**Place:** Within paragraph 3 (the data section), immediately after the sentence that references the 34% reduction figure.
**Rationale:** Data visuals work best when placed at the exact moment the text references them — readers scan the chart then return to the sentence, reinforcing rather than interrupting comprehension. Do not place this chart before the statistic is mentioned in the text.

**4. Asset D — Pull quote: "My doctor is forty kilometres away..."**
**Place:** Mid-way through paragraph 4 (the testimony section), after the first resident's account and before the second.
**Rationale:** This is the strongest single line in the testimony section — concrete, emotional, and immediately understandable. Placing it mid-testimony breaks the section visually at its most impactful moment and rewards readers who are skimming by giving them the emotional core of the piece at a glance.

**5. Asset E — Pull quote: "The numbers didn't add up..."**
**Place:** Hold — do not use.
**Rationale:** With Asset D already in the testimony section, placing a second pull quote in the same section creates visual clutter and dilutes the impact of both. Asset E is also less vivid than Asset D. If a visual is needed in paragraph 5 (the counter-argument section), consider a short sidebar fact box instead. Otherwise, leave that section as clean text — at ~200 words, it does not require a break.

---

### Spacing Check

- Opening (0–200 words): hero image ✓
- Background (200–500 words): landscape photo ✓
- Data (500–700 words): bar chart ✓
- Testimony (700–1,100 words): pull quote at ~900 words ✓
- Counter-argument (1,100–1,300 words): no visual — flagged, but acceptable at 200 words
- Closing (1,300–1,500 words): no visual — intentional; the return to the opening subject should land without distraction

**Overall rhythm:** Balanced. No section exceeds 400 words without a visual or a natural structural break. The closing text-only run is editorially justified.

## Known Limitations
- This skill works from text descriptions of visual assets, not the images themselves. Placement logic assumes the described assets actually deliver what is described — a landscape photo described as "evocative" but that is in fact generic stock photography will not carry the weight this plan assigns it.
- For print layouts with precise column grids and bleed areas, placement logic will be approximate. A designer should adjust based on actual image dimensions and column structure.
- This skill does not evaluate image quality, rights status, or whether a photo is suitable for publication — only where to place it if you choose to use it.

## Related Skills
- [format-converter-brief](./format-converter-brief.md)
- [print-web-reformatter](./print-web-reformatter.md)

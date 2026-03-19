---
name: data-viz-narrative-writer
status: beta
category: writing
subcategory: articles
version: 1.0
eval_score: null
tags: [data, visualization, narrative, charts, explainer]
---

# Data Viz Narrative Writer

## What This Skill Does
Writes the explanatory text that accompanies a data visualization — the headline, the introductory sentence, and the annotation or caption that tells readers what to look for and why it matters.

## When To Use This Skill
- You have a finished chart, graph, or table and need text that guides the reader to the key finding rather than leaving them to interpret the data alone
- Your data visualization will appear in a digital article, a print spread, or a broadcast graphic, and you need concise, plain-English framing
- The chart is complex (multiple data series, long time range, unfamiliar units) and you need annotation text to prevent misreading
- You are working on a data journalism piece and need the narrative layer to connect the visual to the broader story argument

## What You Need To Provide
**Required:**
- A description of the chart or table (what type it is, what it shows, what the axes or columns represent)
- The key finding — the single most important thing the data shows
- The data source and time period covered

**Optional:**
- The audience (general public, specialist readers, policymakers)
- Any important caveats about the data (methodology limits, missing data, definitional changes over time)
- The tone of the surrounding article (investigative, explanatory, neutral news, opinion)
- Word count target for the narrative text

## How Claude Approaches This
1. Identifies the single most significant finding in the data as described — the peak, the gap, the trend reversal, the unexpected comparison — and treats that as the headline finding
2. Drafts a chart headline (also called a "active headline" or "tells headline") that states the finding rather than just labeling the chart topic
3. Writes an introductory sentence of one to two lines that contextualizes the finding for a reader who may not examine the chart closely
4. Produces annotation text or a caption that directs attention to the specific element of the chart that carries the main finding, and notes any caveats the reader needs to interpret the data accurately

## Output Format
Three distinct text elements, clearly labeled:

**Chart headline:** One sentence, active voice, states the finding (e.g., "Rental costs in mid-sized cities outpaced wage growth every year from 2018 to 2025"). Maximum 12 words.

**Introductory sentence:** One to two sentences placed above or beside the chart. Tells the reader what to look for and why it matters. Plain English, no jargon, no hedge language unless the data genuinely requires it.

**Caption / annotation:** One to three sentences below or beside the chart. Notes the data source, the time period, any methodological caveats, and — if space allows — a secondary observation from the data.

## Quality Criteria
- [ ] The chart headline states a finding, not just a topic ("Unemployment rises" not "Unemployment rates by region")
- [ ] The introductory sentence does not simply repeat the headline — it adds context
- [ ] Any data caveats mentioned in the input are reflected in the caption
- [ ] No jargon that a general reader would need to look up
- [ ] All three text elements are short enough to be read before the reader decides whether to engage with the chart

## Example

### Input
Chart type: Line chart
What it shows: Annual average rent for a two-bedroom apartment in twelve mid-sized cities, compared to median annual wage growth, from 2016 to 2025
Key finding: From 2020 onwards, rent increases outpaced wage growth in ten of the twelve cities, with the gap widest in 2023
Data source: National Housing Survey, Office of Labor Statistics (both public datasets)
Time period: 2016–2025
Audience: General news readers
Caveats: Data covers formal rental market only; short-term rentals excluded
Tone: Neutral news

### Output
**Chart headline:** Rents raced ahead of wages in most mid-sized cities after 2020

**Introductory sentence:** In ten of twelve cities tracked, the cost of renting a two-bedroom apartment grew faster than the typical worker's annual pay rise every year from 2020 to 2025 — with 2023 marking the widest gap on record.

**Caption:** Source: National Housing Survey and Office of Labor Statistics, 2016–2025. Figures cover the formal rental market; short-term and informal rentals are not included. Wage growth figures reflect median annual change across all full-time workers in each city.

## Known Limitations
- This skill works from your description of the chart — it cannot read an image or a data file directly. The quality of the output depends on how precisely you describe the key finding and what the axes represent.
- For charts with multiple competing findings (e.g., some metrics up, some down), you must specify which finding is primary; otherwise Claude will choose, and it may not be the one your story argument requires.
- Annotation text for highly technical data (epidemiological rates, financial derivatives, scientific measurements) should be reviewed by a subject-matter expert before publication.

## Related Skills
- [chart-type-advisor](../../data-journalism/visualization/chart-type-advisor.md)
- [dataset-summary-writer](../../data-journalism/analysis/dataset-summary-writer.md)
- [data-corrections-writer](../../data-journalism/publishing/data-corrections-writer.md)

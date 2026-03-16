---
name: chart-description-writer
status: stable
category: data-journalism
subcategory: visualization
version: 1.0
eval_score: 4.5
tags: [charts, accessibility, alt-text, data visualization, publication]
---

# Chart Description Writer

## What This Skill Does
Writes a precise, accessible text description of a data visualization — covering the chart type, what it shows, the key finding, and the data range — suitable for publication as a caption, alt-text, or standfirst alongside the chart.

## When To Use This Skill
- You are publishing a chart and need a caption or alt-text that accurately describes it for readers who cannot see or fully interpret the visual
- You want a short, punchy caption that highlights the most important finding rather than just describing the axes
- You need to write an accessible description to meet publication or platform accessibility standards
- You are writing up a chart for a print layout where the graphic may not reproduce clearly at small sizes

## What You Need To Provide
**Required:** A description of the chart — chart type (bar, line, scatter, etc.), what the x and y axes show, the time period if applicable, the data source, and the key finding or pattern you want the reader to take away.
**Optional:** The exact headline figure or data point you want emphasised; the publication register (news article, magazine feature, annual report); whether an alt-text version (screen reader) is also needed.

## How Claude Approaches This
1. Identifies the chart type and the primary story the data tells — not a neutral description of all data points, but the finding a journalist would lead with.
2. Writes a headline-first description: the key finding in plain language, followed by the supporting context (time period, comparison, magnitude).
3. If alt-text is requested, produces a separate, more complete description including chart type, axis labels, data range, and a full plain-language summary — formatted to accessibility standards.

## Output Format
Primary output: a caption of two to four sentences (60–120 words) that leads with the finding and includes the data source. If alt-text is requested, a second block: a single descriptive paragraph of 60–100 words formatted as alt-text, beginning with the chart type. Tone: clear, direct, publication-quality. No jargon.

## Quality Criteria
- [ ] Caption leads with the key finding, not "this chart shows..."
- [ ] Exact figures are included where they strengthen the caption
- [ ] The data source is named in or directly after the caption
- [ ] Alt-text version (if requested) includes chart type, both axes, data range, and key finding
- [ ] No misleading framing — the description does not overstate what the chart shows

## Example

### Input
Chart type: Line chart with two lines
X axis: Years, 2015–2025
Y axis: Average house price (thousands, local currency)
Line 1: National average
Line 2: Capital city average
Key finding: The gap between capital city prices and the national average has widened sharply since 2020, with capital city prices now running 85% above the national average, up from 52% in 2019.
Data source: National Land Registry, 2026
Publication: National broadsheet, property section
Alt-text also needed: Yes

### Output
**Caption:**

The gap between capital city house prices and the national average has nearly doubled since 2019. Capital prices now sit 85% above the national average — up from a 52% premium five years ago. The divergence accelerated sharply after 2020 and has not reversed. Source: National Land Registry, 2026.

---

**Alt-text:**

Line chart showing average house prices from 2015 to 2025. Two lines are plotted: the national average and the capital city average. Both lines rise across the period. The capital city line rises more steeply from 2020 onward, reaching approximately 85% above the national average by 2025, compared to a 52% premium in 2019. The gap between the two lines widens markedly after 2020. Source: National Land Registry, 2026.

## Known Limitations
- This skill writes from a description of the chart, not the chart itself. If the description omits data points or mischaracterises the trend, the caption will reflect that error. Always verify the description against the actual chart before publishing.
- For charts with multiple series, multiple trend lines, or complex interactions (e.g. bubble charts, choropleth maps), a single caption cannot convey all meaningful findings. The skill will prioritise the most newsworthy finding — a full data table may also be needed for accessibility compliance.
- The skill does not assess whether the chart design itself accurately represents the data (e.g. truncated axes, area distortions). Caption accuracy depends on the chart being honestly constructed.

## Related Skills
- [infographic-brief](./infographic-brief.md)
- [data-table-formatter](./data-table-formatter.md)
- [statistics-explainer](../analysis/statistics-explainer.md)

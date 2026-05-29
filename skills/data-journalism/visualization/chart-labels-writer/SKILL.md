---
name: chart-labels-writer
description: "Writes clear, precise axis labels, legends, annotations, and source lines for a chart — the text layer that makes a graphic publishable."
status: stable
category: data-journalism
subcategory: visualization
version: 1.0
eval_score: 4.2
tags: [data-journalism, visualization, charts, labels, annotations]
---
# Chart labels writer

## What this skill does
Writes clear, precise axis labels, legends, annotations, and source lines for a chart — the text layer that makes a graphic publishable.

## When to use this skill
- You have a working chart but the labels are placeholder text or auto-generated
- Your graphics desk needs final copy for a chart and you want to get it right the first time
- You are reviewing a chart before publication and the labels are vague, misleading, or missing units
- You need to write an accessible alt-text description of a chart for web publication

## What you need to provide
**Required:**
- What the chart shows (data, time period, geographic scope)
- Chart type (bar, line, scatter, map, etc.)
- What the axes or dimensions represent

**Optional:**
- The editorial point the chart is making (helps prioritize annotations)
- Source of the data
- Publication context (print, web, social) — affects label length
- Whether alt-text is needed for accessibility

## How the Assistant Approaches This
1. Writes a headline for the chart — a short sentence that states the finding, not just the topic
2. Writes axis labels with correct units and formatting conventions
3. Writes a legend if multiple series are present
4. Suggests 1–2 annotations that highlight the editorial point (e.g., "2020: pandemic lockdown begins")
5. Writes a source line and methodology note if relevant
6. Writes alt-text if requested — a factual description of what the chart shows, for screen readers

## Output format
Structured text blocks, each labeled by position on the chart:
- **Headline** (chart title)
- **Subtitle** (if needed — adds context the headline can't carry)
- **X-axis label**
- **Y-axis label**
- **Legend entries**
- **Annotations** (with suggested placement)
- **Source line**
- **Alt-text** (if requested)

All text is final copy — ready to paste into the chart tool.

## Quality criteria
- [ ] The headline states a finding, not just a topic ("Rent in Munich doubled since 2015" not "Rent prices in German cities")
- [ ] Axis labels include units (€, %, thousands, per 100,000 population)
- [ ] Annotations add context the reader cannot derive from the data alone
- [ ] Source line credits the data origin, not the chart tool
- [ ] Alt-text (if included) describes the pattern, not the visual decoration

## Example

### Input
Chart type: Horizontal bar chart. Shows voter turnout (%) in the 2024 European Parliament elections for 10 EU member states. Data from the European Parliament. For a web article arguing that turnout varied dramatically across member states.

### Output

**Headline:** Turnout ranged from 21% to 89% across EU member states in the 2024 European Parliament elections

**Subtitle:** Belgium and Luxembourg — where voting is compulsory — led; Croatia and Lithuania trailed

**X-axis label:** Voter turnout (% of eligible voters)

**Y-axis label:** (none — country names serve as category labels on the y-axis)

**Annotations:**
- At Belgium's bar: "Compulsory voting" (right-aligned, smaller text)
- At Luxembourg's bar: "Compulsory voting"
- At the EU average line (if included): "EU average: 51%"

**Source line:** Source: European Parliament, official results (July 2024)

**Alt-text:** Horizontal bar chart showing voter turnout in the 2024 European Parliament elections for 10 EU member states. Belgium had the highest turnout at 89%, followed by Luxembourg at 82%. Both countries have compulsory voting. The EU average was 51%. Croatia had the lowest turnout at 21%, followed by Lithuania at 28%. The remaining six countries ranged between 30% and 65%.

## Known limitations
- Cannot see your actual chart. Recommendations are based on your description of the data and chart type. If the visual layout differs from what's described, the label placement suggestions may not apply.
- Headline recommendations follow data journalism conventions (finding-first). Some publications prefer neutral, descriptive headlines for graphics. Adjust to your house style.
- Alt-text follows WCAG guidelines but may need adjustment depending on your CMS and accessibility requirements.

## Related skills
- [chart-type-advisor](../chart-type-advisor/SKILL.md)
- [chart-description-writer](../chart-description-writer/SKILL.md)
- [data-table-formatter](../data-table-formatter/SKILL.md)

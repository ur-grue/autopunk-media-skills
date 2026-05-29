---
name: chart-type-advisor
description: "Recommends the most effective chart type for your data and editorial goal, explains why it works, and warns you about common misrepresentations."
status: stable
category: data-journalism
subcategory: visualization
version: 1.0
eval_score: 4.2
tags: [data-journalism, visualization, charts, data, graphics]
---
# Chart type advisor

## What this skill does
Recommends the most effective chart type for your data and editorial goal, explains why it works, and warns you about common misrepresentations.

## When to use this skill
- You have data and a story but aren't sure how to visualize it
- Your editor asks "what's the best way to show this?" and you need a quick, defensible answer
- You want to avoid the default bar chart when something more precise exists
- You are reviewing a graphic before publication and want to check if the chart type matches the claim

## What you need to provide
**Required:**
- What the data measures (e.g., "unemployment rates across EU countries over 10 years")
- What point you want the reader to take away (e.g., "Germany's rate recovered faster than France's")

**Optional:**
- Number of data points or categories
- Whether the data is time-series, categorical, geographic, or relational
- Publication format (print, web, social — affects complexity)
- Any house style constraints (e.g., "we never use pie charts")

## How the Assistant Approaches This
1. Identifies the data type (time-series, comparison, distribution, composition, relationship, geographic)
2. Maps the editorial goal to the chart types that serve it best
3. Recommends a primary chart type with a brief explanation of why it works
4. Offers one alternative if the primary has trade-offs
5. Flags misrepresentation risks — cases where the recommended chart could mislead if axes, baselines, or scales are handled carelessly

## Output format
A short recommendation (under 300 words) structured as:
- **Recommended chart type** with one-sentence rationale
- **Why this works** (2–3 sentences linking the data structure to the visual encoding)
- **Alternative** if the primary has limitations
- **Watch out for** — one or two specific misrepresentation risks for this chart type and data combination

No code. No tool recommendations. Just the editorial decision.

## Quality criteria
- [ ] The recommended chart type matches the data structure and editorial goal
- [ ] The rationale explains WHY this type works, not just WHAT it is
- [ ] At least one misrepresentation risk is identified and explained
- [ ] The recommendation is specific enough to brief a graphics desk or tool operator
- [ ] Alternatives are genuine options, not padding

## Example

### Input
Data: Monthly average rent prices (€/sqm) in Berlin, Munich, Hamburg, and Frankfurt from 2015 to 2024. 4 cities, 10 years, monthly data points. I want to show that Munich has pulled away from the other three cities since 2020. For a web article.

### Output

**Recommended: Multi-line chart (one line per city)**

Four cities over ten years is a textbook case for a multi-line chart. Each line traces a city's trajectory, and the reader's eye naturally compares slopes and gaps. The "pulling away" story shows up as diverging lines — Munich's line separating visibly from the cluster after 2020.

**Why this works.** Time-series data with a small number of categories (4) is the sweet spot for line charts. The reader can track each city independently and compare them simultaneously. The divergence you want to highlight is encoded as increasing vertical distance between lines — the most intuitive visual signal for "growing apart."

**Alternative: Small multiples (one panel per city).** If the four lines overlap too much before 2020 and create spaghetti, split them into four aligned panels with a shared y-axis. The reader loses direct overlap comparison but gains clarity on each city's individual trend. Add a light reference line (e.g., Munich's line in grey) to each panel to preserve the comparison.

**Watch out for:**
- **Truncated y-axis.** If the y-axis starts at €8/sqm instead of €0, a modest divergence will look dramatic. Start at zero unless you have a strong editorial reason not to — and if you don't start at zero, label the axis break clearly.
- **Monthly noise.** 120 data points per city will produce jagged lines. Consider a 3-month rolling average to smooth the signal without hiding the trend. State this in the chart methodology note.

## Known limitations
- Recommendations are based on data journalism best practices and common editorial standards. They may not match every publication's house style.
- Cannot evaluate whether your actual data is clean, complete, or statistically meaningful — only advises on the visual form.
- Does not recommend specific tools (Datawrapper, Flourish, D3, etc.). The advice is chart-type level, not implementation level.

## Related skills
- [chart-labels-writer](../chart-labels-writer/SKILL.md)
- [chart-description-writer](../chart-description-writer/SKILL.md)
- [infographic-brief](../infographic-brief/SKILL.md)

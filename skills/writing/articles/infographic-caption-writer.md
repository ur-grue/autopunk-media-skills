---
name: infographic-caption-writer
status: beta
category: writing
subcategory: articles
version: 1.0
eval_score: null
tags: [caption, infographic, data visualization, visual journalism, articles]
---

# Infographic Caption Writer

## What This Skill Does
Writes a concise, informative caption for a published infographic that tells readers what the visual shows, highlights the most important finding, and cites the data source — without simply repeating what is already visible on the graphic itself.

## When To Use This Skill
- An infographic is ready for publication and needs an explanatory caption for print or digital layout
- A data visualization will appear on social media, where many readers will see the caption before (or instead of) the graphic
- An editor or art director has handed you a finished graphic and needs copy to accompany it
- The infographic is dense or complex and the editorial team wants to guide readers to the key takeaway
- A caption is needed for accessibility purposes so the graphic's meaning is communicated in text

## What You Need To Provide
**Required:**
- A description of what the infographic shows (its topic, chart type or visual form, and the data it displays)
- The main finding or most important number the reader should take away
- The data source (organization, dataset name, and year if known)

**Optional:**
- The article or story the infographic accompanies, so the caption can reinforce rather than repeat the surrounding text
- Any secondary finding worth flagging
- Preferred caption length (short: one sentence; standard: two sentences; extended: up to four sentences for complex graphics)
- House style preferences (e.g., source format, whether to include a note line)

## How Claude Approaches This
1. Reviews the description of the graphic and identifies the single most important insight a reader should take from it — this becomes the lead sentence of the caption, not a description of what the chart type is
2. Adds supporting context if needed (a comparison, a trend direction, a geographic scope) in a second sentence, only if it adds meaning not visible in the graphic itself
3. Appends the source line in a standard format ("Source: [Organization], [Year]") and, if needed, a brief note on methodology or data limitations

## Output Format
Two sentences plus a source line, totalling 30–60 words for standard captions. Lead sentence states the key finding as a declarative fact. Second sentence adds context or scale. Source line on a new line, beginning with "Source:". No headline above the caption. Active voice, present or past tense consistent with the article. No exclamation points. No marketing language.

## Quality Criteria
- [ ] The lead sentence states a finding, not a description of the chart type ("Bar chart showing...")
- [ ] The most important number or trend is named explicitly
- [ ] The source is cited with organization name and year
- [ ] The caption does not repeat text already visible as labels or titles on the graphic
- [ ] The caption makes sense to a reader who cannot see the graphic (accessibility standard)
- [ ] Length is appropriate: no padding, no unnecessary qualifiers

## Example

### Input
What the infographic shows: A stacked bar chart comparing household energy costs by fuel type (electricity, gas, oil) across five income brackets, from lowest-income to highest-income households. Data covers the most recent full calendar year.
Main finding: The lowest-income households spend 11% of their annual income on energy, compared to 3% for the highest-income group.
Data source: National Energy Affordability Survey, 2025
Article context: Investigation into energy poverty and utility disconnection rates

### Output
Low-income households spend nearly four times as large a share of their income on energy as the wealthiest households — 11% compared to 3% — a gap that advocacy groups say drives high rates of utility disconnection in winter months. The disparity holds across all three fuel types tracked, with electricity accounting for the largest share of costs in every income bracket.

Source: National Energy Affordability Survey, 2025

## Known Limitations
- This skill cannot read or interpret a graphic file directly — you must describe what the graphic shows; the quality of the caption depends on the accuracy of that description
- For graphics with multiple equally important findings, the skill will pick one lead finding; if that choice is wrong for your editorial context, specify the finding you want foregrounded in your input
- Does not write alt-text for web accessibility in the technical HTML sense, though the output can be adapted for that purpose
- Very simple graphics (e.g., a single-number stat card) may produce captions that feel over-written; specify "short: one sentence" in those cases

## Related Skills
- [map-caption-writer](map-caption-writer.md)
- [sidebar-fact-box-writer](../../magazine-journalism/writing/sidebar-fact-box-writer.md)
- [chart-type-advisor](../../data-journalism/visualization/chart-type-advisor.md)

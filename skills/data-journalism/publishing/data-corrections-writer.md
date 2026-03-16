---
name: data-corrections-writer
status: stable
category: data-journalism
subcategory: publishing
version: 1.0
eval_score: 4.4
tags: [corrections, accuracy, editorial standards, data journalism]
---

# Data Corrections Writer

## What This Skill Does
Writes a precise, publication-standard corrections notice for a data error published in an article — stating clearly what was wrong, what the correct figure is, and how the error affected the reported story.

## When To Use This Skill
- A data error has been identified in a published article and needs a formal correction notice
- You need to word a correction that is honest about the scope of the error without overstating its impact on the story's conclusions
- A reader or subject has disputed a figure and you have confirmed the error
- An editor or legal team needs a corrections draft to review before publication

## What You Need To Provide
**Required:** The original published figure (as it appeared in print or online). The correct figure. The article headline or title and publication date. A brief explanation of how the error occurred (if known — this can be "we do not know how this error occurred").
**Optional:** Whether the error affects the story's main conclusion (yes / no / partially); whether a related chart, table, or infographic also needs correction; the publication's standard corrections format or style.

## How Claude Approaches This
1. Drafts a correction that states the error precisely — the original figure, the correct figure, and where in the article it appeared — without defensive language or over-explanation.
2. Assesses whether the correction should include a note on whether the story's core finding is affected, and drafts appropriate language: affirming the conclusion stands, or acknowledging that it changes.
3. Produces the correction in the standard form: present tense, direct, no passive constructions that obscure responsibility.

## Output Format
A corrections notice of two to five sentences. Standard structure: (1) The article title and date, (2) what was wrong and where it appeared, (3) what the correct figure is, (4) whether the error affects the article's conclusions. Optionally: a note on what caused the error if this is known and disclosable. Tone: direct, factual, no hedging. Plain language.

## Quality Criteria
- [ ] The original wrong figure is stated exactly as published
- [ ] The correct figure is stated exactly
- [ ] The location of the error in the article is specified (e.g. "in the second paragraph," "in the chart caption")
- [ ] The correction states whether the story's central conclusion is affected
- [ ] No defensive or minimising language (e.g. "a small error," "slight discrepancy")
- [ ] No vague language (e.g. "some figures were incorrectly stated")

## Example

### Input
Original published figure: "North Coastal Authority had a year-on-year increase in orthopaedic waiting times of 32%"
Correct figure: 22%
Article: "Waiting time crisis: the regions left behind" published 14 March 2026
Where in article: Second paragraph and repeated in chart caption
How error occurred: A data processing error in the original spreadsheet transposed two digits in the percentage change column
Does it affect the conclusion? No — the finding that North Coastal had the highest rate of increase among all authorities remains correct even with the corrected figure

### Output
**Correction**

In our article "Waiting time crisis: the regions left behind" (14 March 2026), we stated that North Coastal Authority recorded a year-on-year increase in orthopaedic waiting times of 32%. The correct figure is 22%. This error appeared in the second paragraph of the article and in the caption of the accompanying chart; both have been updated. The error resulted from a data processing mistake in which two digits in the percentage change calculation were transposed. The correction does not affect the article's central finding: North Coastal Authority recorded the highest rate of increase among all 47 health authorities analysed, and that finding holds with the corrected figure.

*Corrected: 16 March 2026*

## Known Limitations
- This skill drafts the correction based on the information provided. If the scope of the error is larger than described (e.g. if the same source error also affected other figures in the article), the correction draft will not reflect that. A full audit of all figures derived from the same source is recommended before the correction is published.
- Some publications have specific house style requirements for corrections (placement, format, wording conventions). The draft should be reviewed against those standards before publishing.
- This skill does not assess legal exposure. For errors involving living individuals, financial claims, or allegations, the correction should be reviewed by the publication's legal team before publishing.

## Related Skills
- [methodology-explainer](./methodology-explainer.md)
- [data-footnote-writer](./data-footnote-writer.md)
- [statistics-explainer](../analysis/statistics-explainer.md)

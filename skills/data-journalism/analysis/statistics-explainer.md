---
name: statistics-explainer
status: stable
category: data-journalism
subcategory: analysis
version: 1.0
eval_score: 4.6
tags: [statistics, plain language, accuracy, numeracy]
---

# Statistics Explainer

## What This Skill Does
Rewrites a complex statistic — including percentage changes, relative risk, confidence intervals, medians, and index numbers — in plain language that a general audience can understand without sacrificing factual accuracy.

## When To Use This Skill
- A statistic in your draft is accurate but you suspect a general reader will misread or misunderstand it
- You have received data containing terms like "relative risk," "odds ratio," "confidence interval," or "standard deviation" and need to explain them in copy
- An editor or sub-editor has flagged a statistic as confusing
- You want to check your own plain-language rewrite against a more rigorous version

## What You Need To Provide
**Required:** The statistic as it appears in the source (exact wording or data point). The context — what the statistic is measuring and from what study, report, or dataset.
**Optional:** The audience (general public, specialist readers, etc.); the publication register (tabloid, broadsheet, academic journal); any related comparison figure that might help contextualise it.

## How Claude Approaches This
1. Identifies the statistical concept being used and checks for common misinterpretation traps (e.g. relative vs absolute risk, percentage point vs percentage change).
2. Rewrites the statistic using plain numbers and concrete comparisons — avoiding jargon, passive constructions, and ambiguous framing.
3. Flags any cases where the plain-language version risks oversimplification, and suggests a brief accuracy note if needed.

## Output Format
Two to three rewrite options, each one to three sentences. A brief note explaining the key misinterpretation risk in the original. Where relevant, a suggested accuracy caveat (one sentence) to include alongside the plain-language version. No tables or bullet lists in the output — the rewrites should read as they would appear in an article.

## Quality Criteria
- [ ] Every rewrite is factually equivalent to the original — no inflating or deflating the finding
- [ ] No jargon introduced in the plain-language version
- [ ] At least one concrete comparison or real-world anchor (e.g. "1 in 5," "the equivalent of filling Wembley Stadium twice")
- [ ] The misinterpretation risk is named specifically, not generically
- [ ] Accuracy note is included where genuine oversimplification risk exists

## Example

### Input
Statistic: "The intervention group showed a relative risk reduction of 40% compared to the control group, with a confidence interval of 0.55–0.65 (p < 0.01)."
Context: A clinical trial testing a new medication for reducing the recurrence of a common respiratory illness. The trial involved 2,400 participants. Baseline recurrence rate in the control group was 20% over 12 months.
Audience: General news readers. Publication: national broadsheet health section.

### Output
**Rewrite options:**

Option 1: "In the trial, people who took the medication were significantly less likely to fall ill again within a year. Of every 100 people on the medication, about 12 had a recurrence — compared to 20 out of 100 who received no treatment."

Option 2: "The medication reduced the chance of falling ill again within a year from 20 in 100 people down to about 12 in 100. Researchers said the result was statistically robust and unlikely to be a chance finding."

Option 3 (most conservative): "Among trial participants, recurrence dropped from roughly 1 in 5 people in the untreated group to around 1 in 8 in the treated group over a 12-month period."

---

**Key misinterpretation risk:** The original states a "40% relative risk reduction." Most readers — and many journalists — interpret this as "40% of people were helped," which is wrong. The actual reduction is 8 percentage points (from 20% to 12%). The relative figure (40%) is mathematically correct but routinely misleads. All three rewrites use absolute numbers to avoid this.

**Suggested accuracy caveat (include if editorial space allows):** "The trial was conducted over 12 months; whether protection persists beyond that period has not been established."

## Known Limitations
- This skill cannot verify the underlying statistic — if the original figure is wrong, the rewrite will be a precise plain-language version of a wrong figure. Always verify the source data before rewriting.
- For highly technical statistical outputs (regression coefficients, hazard ratios, Bayesian credible intervals), the skill will explain the concept but the rewrite may require review by a specialist before publication.
- Concrete comparisons ("1 in 5") can feel more certain than the data warrants when confidence intervals are wide. The skill flags this when relevant but cannot guarantee the rewrite conveys appropriate uncertainty in all cases.

## Related Skills
- [data-story-finder](./data-story-finder.md)
- [polling-analysis-writer](./polling-analysis-writer.md)
- [methodology-explainer](../publishing/methodology-explainer.md)

---
name: statistics-fact-checker
description: "Analyzes statistics used in a draft article and flags any that are misrepresented, lack context, use misleading framing, or require additional sourcing before publication."
status: stable
category: magazine-journalism
subcategory: fact-checking
version: 1.1
eval_score: 4.60
tags: [journalism, fact-checking, statistics, data, numeracy]
---
# Statistics Fact Checker

## What This Skill Does
Analyzes statistics used in a draft article and flags any that are misrepresented, lack context, use misleading framing, or require additional sourcing before publication.

## When To Use This Skill
- Your draft includes statistics from external reports, studies, or databases and you want a systematic check before publication
- A data point feels significant but you're not confident the framing is accurate or contextually honest
- You are an editor reviewing a data-heavy piece and want a fast assessment of numerical risk areas
- You want to catch common statistical errors — conflating correlation with causation, percentage vs. percentage-point confusion, cherry-picked baselines

## What You Need To Provide
**Required:** The specific statistics used in the article (quoted verbatim from the draft) along with their attributed sources; the story context
**Optional:** The full draft text; any known methodological notes about the data sources; the publication audience (general vs. technically literate)

## How Claude Approaches This
1. Reads each statistic and assesses whether the attributed source plausibly produces this type of data, and whether the statistic has been reproduced accurately (correct figure, correct unit, correct year)
2. Checks for common misrepresentation patterns: reversed causality presented as fact, relative vs. absolute risk conflation, percentage vs. percentage-point errors, non-representative sample presented as universal, outdated data, and inappropriate comparisons across different measurement methodologies
3. Flags missing context that would change how a reader interprets the statistic — base rate, sample size, margin of error, comparison period
4. For each flagged item, specifies the type of issue and the minimum correction or clarification needed
5. Closes with a "Next Step" note: which statistic to verify first (typically the highest-risk item or the one the story's argument depends on most), and whether claim-verification-checklist should be run on the full draft after statistical issues are resolved

## Output Format
Numbered list, one item per statistic. Each item: Statistic (exact quote) | Issue Type | Description of Problem | Recommended Fix (drawn from the Remediation Steps below). Issue Types: Likely Accurate (no action needed), Context Missing, Methodology Concern, Possible Misquote, Misleading Framing, or High Risk (do not publish without legal/editorial review). Followed by a brief Summary of overall statistical quality. Output ends with a "Next Step" note: which statistic to verify first and whether to run claim-verification-checklist on the full draft after statistics are cleared.

## Remediation Steps By Issue Type
The Recommended Fix for each statistic must be drawn from the following standard remediation pattern for its Issue Type. Each pattern is a short ordered list a reporter can follow without further interpretation.

**Likely Accurate**
1. Identify the most authoritative public-record source document (e.g., Surgeon General report, peer-reviewed journal article, federal agency dataset) and add the year and page or table reference to the citation.
2. Confirm the figure has not been superseded by a more recent edition of the same source.
3. No editorial change to the sentence required; only the citation tightens.

**Context Missing**
1. Name the missing context element (base rate, sample size, comparison period, denominator, or unit of measurement).
2. Add a clause or footnote that supplies that element in the same sentence or the sentence immediately following.
3. If the missing context would change the reader's interpretation materially (e.g., a percentage-point vs. percentage-change distinction), rewrite the sentence to make the comparison explicit.
4. Confirm the most recent data year covered by the source and add it to the sentence.

**Methodology Concern**
1. Identify the specific methodological weakness (self-report vs. objective measurement, undisclosed sample frame, retrospective vs. longitudinal design, varying inclusion criteria across reports).
2. Replace the figure with one from a stronger primary source if available (e.g., FTC annual reports for industry marketing spend instead of advocacy-group estimates).
3. If no stronger source exists, qualify the figure in-text: name the source, the year, and the methodological scope (e.g., "based on a 2024 industry watchdog estimate that excludes point-of-sale spending").
4. Add the source's full name and report year to the citation.

**Possible Misquote**
1. Pull the original source document and reproduce the exact figure, unit, and time frame.
2. If the article's figure differs from the original, correct the article to match.
3. If the original cannot be obtained before deadline, replace the specific figure with a sourced characterization ("approximately one in ten") or remove the claim.

**Misleading Framing**
1. Rewrite the sentence so that the framing matches the underlying measurement: relative risk → "X times more likely" with the absolute risk in the same sentence; correlation → "associated with" not "causes"; selected baseline → state the baseline year and explain why.
2. Remove rhetorical intensifiers ("skyrocketed," "exploded," "doubled") unless the underlying figure supports them after relative-vs.-absolute correction.
3. Add a one-clause caveat naming the limitation the original framing concealed.

**High Risk**
1. Do not publish without naming the specific study or document, year of publication, and sample size.
2. Replace causal language ("leads to," "causes") with associative language ("is associated with," "correlated with") unless the cited study is a randomized trial.
3. Send the passage to legal/editorial review before publication regardless of how strong the verification becomes.
4. If the original source cannot be named or verified, remove the figure entirely — do not retain a vague version.

## Quality Criteria
- [ ] Every statistic in the provided draft is assessed — no omissions
- [ ] Issue types are correctly applied — not everything is flagged as high-risk
- [ ] Recommended fixes are specific and actionable, not generic ("needs more context" is insufficient; "needs the sample size and confidence interval" is correct)
- [ ] The skill correctly distinguishes between statistics that are wrong vs. statistics that are accurate but misleadingly framed
- [ ] Summary gives an accurate proportional picture of the draft's statistical quality
- [ ] Output includes at least one concrete next action the user can take immediately (verify the highest-risk statistic, apply the recommended fix, or run claim-verification-checklist)

## Example

### Input
Article: An investigation into e-cigarette marketing practices targeting teenagers. Statistics used:

1. "E-cigarette use among teenagers has skyrocketed, with use rates up 78 percent since 2018." (Source: CDC Youth Tobacco Survey)
2. "Teens who vape are 3.5 times more likely to begin smoking traditional cigarettes." (Source: "a recent study")
3. "The e-cigarette industry spends $1 billion annually on marketing." (Source: attributed to an industry watchdog report)
4. "Nine out of ten adult smokers began smoking before the age of 18." (Source: CDC)
5. "Flavored e-cigarettes account for the majority of teen vaping." (Source: not attributed)

### Output

**Statistics Fact Check — E-Cigarette Investigation**

---

**1. "E-cigarette use among teenagers has skyrocketed, with use rates up 78 percent since 2018"**
**Issue Type:** Context Missing
CDC YTHS data does track teen vaping. However, confirm whether "78 percent" is a percentage-point increase (e.g., from 20% to 35.6% of teens) or a percentage change in prevalence (e.g., from 20% to a new figure). These are very different claims. Also note that teen vaping rates peaked in 2019 and declined during 2020–2022 before partial recovery — a "since 2018" comparison may obscure this non-linear trend. Add a note on the most recent data year the CDC survey covers.
**Recommended Fix:** Specify exact years being compared, confirm percentage vs. percentage-point, and note the 2019 peak in a clause or footnote.

---

**2. "Teens who vape are 3.5 times more likely to begin smoking traditional cigarettes"**
**Issue Type:** High Risk
"3.5 times more likely" is a relative risk figure. The underlying study's design matters enormously — a longitudinal cohort study carries much more weight than a cross-sectional survey. The attribution "a recent study" is insufficient for a claim this specific and consequential. The claim also implies a directional causal relationship (vaping leads to smoking) but longitudinal studies in this area generally establish correlation, not causation. The 3.5x figure has appeared in the literature, but some meta-analyses show considerably lower estimates.
**Recommended Fix:** Name the specific study, year, and publication; state that the study found an association, not a proven causal link; include the study's sample size and confidence interval. If the full study cannot be cited, remove the figure or source it more generally.

---

**3. "The e-cigarette industry spends $1 billion annually on marketing"**
**Issue Type:** Methodology Concern
Industry watchdog reports on marketing spend vary significantly in methodology — some include point-of-sale displays, some do not; some include digital spending, some do not. The $1 billion figure appears in at least one prominent watchdog report, but the year and scope need confirmation. The Federal Trade Commission publishes annual tobacco marketing expenditure reports that cover e-cigarettes as of recent years — the FTC report is a primary government source and would be stronger than a watchdog estimate.
**Recommended Fix:** Name the specific watchdog organization and report year; consider replacing or corroborating with the relevant FTC annual report figure for the same year.

---

**4. "Nine out of ten adult smokers began smoking before the age of 18"**
**Issue Type:** Likely Accurate
This figure is well-established and appears consistently in CDC data and Surgeon General reports. Verify the current CDC source document (the figure appears in multiple publications — the most citable is the Surgeon General's Report on Preventing Tobacco Use Among Youth). No action required beyond confirming the source document.
**Recommended Fix:** Add specific Surgeon General report year to citation.

---

**5. "Flavored e-cigarettes account for the majority of teen vaping"**
**Issue Type:** Context Missing / No Attribution
This claim has no source. It is directionally consistent with available data, but "majority" requires a number. FDA enforcement data and CDC YTHS both include data on flavor preference — pull the specific figure. "Majority" also needs a denominator: majority of teen vapers, or majority of teen vaping occasions?
**Recommended Fix:** Add source and replace "majority" with a specific percentage with attribution.

---

**Summary**
5 statistics assessed: 1 Likely Accurate, 2 Context Missing, 1 Methodology Concern, 1 High Risk. The high-risk item (the 3.5x relative risk claim) should not be published without a named study citation and causal language correction. The unattributed flavored vaping claim must be sourced before publication.

**Next Step:** Resolve statistic 2 first (the High Risk relative-risk claim) — name the specific study, year, and sample size, and rewrite causal language as associative. Then run claim-verification-checklist on the full draft once all statistical fixes are in place.

## Known Limitations
- This skill assesses statistics based on general knowledge of common data sources and statistical methodology. It cannot access the specific study or database cited to verify the exact number — that verification requires the reporter to pull the original source.
- For statistics from highly specialized or proprietary datasets (industry market research, internal company data), Claude may not be familiar with the specific methodology and will flag for verification rather than providing a confident assessment.
- This skill identifies statistical misrepresentation patterns but cannot resolve empirical disputes in contested scientific fields — where multiple peer-reviewed studies disagree, the brief will note the disagreement but cannot adjudicate it.
- Margin of error and confidence interval checks require the original study data; the skill flags when these should be added but cannot supply them.

## Related Skills
- [claim-verification-checklist](../claim-verification-checklist/SKILL.md)
- [source-credibility-brief](../source-credibility-brief/SKILL.md)
- [libel-check-brief](../../legal/libel-check-brief/SKILL.md)

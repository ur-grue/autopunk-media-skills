---
name: statistics-fact-checker
status: stable
category: magazine-journalism
subcategory: fact-checking
version: 1.0
eval_score: 4.4
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
Numbered list, one item per statistic. Each item: Statistic (exact quote) | Issue Type | Description of Problem | Recommended Fix. Issue Types: Likely Accurate (no action needed), Context Missing, Methodology Concern, Possible Misquote, Misleading Framing, or High Risk (do not publish without legal/editorial review). Followed by a brief Summary of overall statistical quality. Output ends with a "Next Step" note: which statistic to verify first and whether to run claim-verification-checklist on the full draft after statistics are cleared.

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

## Known Limitations
- This skill assesses statistics based on general knowledge of common data sources and statistical methodology. It cannot access the specific study or database cited to verify the exact number — that verification requires the reporter to pull the original source.
- For statistics from highly specialized or proprietary datasets (industry market research, internal company data), Claude may not be familiar with the specific methodology and will flag for verification rather than providing a confident assessment.
- This skill identifies statistical misrepresentation patterns but cannot resolve empirical disputes in contested scientific fields — where multiple peer-reviewed studies disagree, the brief will note the disagreement but cannot adjudicate it.
- Margin of error and confidence interval checks require the original study data; the skill flags when these should be added but cannot supply them.

## Related Skills
- [claim-verification-checklist](./claim-verification-checklist.md)
- [source-credibility-brief](./source-credibility-brief.md)
- [libel-check-brief](../legal/libel-check-brief.md)

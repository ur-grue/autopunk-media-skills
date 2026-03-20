---
name: study-methodology-evaluator
status: stable
category: research
subcategory: academic
version: 1.0
eval_score: 4.5
tags: [research, science, methodology, evaluation, critical-analysis, academic]
---

# Study Methodology Evaluator

## What This Skill Does
Evaluates the methodology of a published study in plain language — identifying its strengths, weaknesses, and the specific claims the study design can and cannot support — so a journalist can report on the research without overstating or understating its significance.

## When To Use This Skill
- You have a study relevant to a story and need to assess how much weight to give its findings before reporting on them
- A press release makes strong claims about a study and you need to check whether the methodology actually supports those claims
- You are comparing multiple studies on the same topic and need to understand which are methodologically stronger
- You are preparing to interview a researcher and want to ask informed questions about their study design

## What You Need To Provide
**Required:** The study's methodology section (or a detailed description of the study design, sample size, population, measures, and analytical approach). The more methodological detail you provide, the more specific the evaluation.

**Optional:** The claims being made about the study in media coverage or press releases (helps evaluate whether the methodology supports those specific claims); the specific methodological concerns you have; the field or discipline (statistical conventions vary between fields); whether you need a quick assessment or a detailed evaluation.

## How Claude Approaches This
1. **Classifies the study design.** Identifies the study type — randomised controlled trial, cohort study, case-control study, cross-sectional survey, meta-analysis, qualitative study, case study — and explains in plain language what this design can and cannot demonstrate (particularly regarding causation vs. correlation).

2. **Evaluates the sample.** Assesses sample size (adequate for the effect being measured?), selection method (random, convenience, self-selected?), population characteristics (who was studied and who was excluded), and representativeness (can findings be generalised beyond the study population?).

3. **Assesses the measures.** Evaluates what was actually measured (the operationalisation of the key concepts), whether the measures are validated and reliable, and whether what was measured matches the claims being made. A study measuring "self-reported happiness" is not measuring "wellbeing" in the same way a study measuring cortisol levels is.

4. **Examines the analytical approach.** Evaluates whether the statistical or analytical methods are appropriate for the study design and data type. Flags specific concerns: multiple comparisons without correction, subgroup analyses presented as primary findings, p-hacking indicators, and inappropriate use of causal language for observational data.

5. **Delivers a plain-language verdict.** Provides a clear, jargon-free assessment of what the study can legitimately claim and where the methodology limits the conclusions. Rates the overall methodological strength as strong, moderate, or weak — with specific justification.

## Output Format
500–800 words. Five labelled sections: **Study Design** (classification and what it can demonstrate), **Sample Assessment** (size, selection, representativeness), **Measurement Assessment** (what was measured and how well), **Analytical Concerns** (statistical or methodological issues), and **Bottom Line** (plain-language verdict on what the study can and cannot claim). Tone: fair, precise, educational. Does not dismiss weak studies as worthless or praise strong studies uncritically — every study has strengths and limitations.

## Quality Criteria
- [ ] Study design is correctly classified and the implications for causal inference are clearly stated
- [ ] Sample assessment addresses size, selection, and representativeness — not just one of these
- [ ] Measurement assessment distinguishes between what was measured and what is claimed
- [ ] Analytical concerns are specific and justified — not a generic list of possible problems
- [ ] Bottom line verdict is clear, honest, and usable by a journalist making editorial decisions
- [ ] Evaluation is fair — acknowledges strengths as well as weaknesses
- [ ] No unsupported statistical claims (e.g., "the sample size is too small" without explaining what would be adequate)

## Example

### Input
**Study description:** A cross-sectional online survey of 1,200 adults in a single country, examining the relationship between social media use (measured as self-reported daily hours) and anxiety symptoms (measured using the GAD-7 validated scale). The researchers found that participants reporting more than 3 hours of daily social media use had significantly higher anxiety scores (mean GAD-7 score 9.8 vs. 6.2, p<0.001). They controlled for age, gender, and income. The study was published in a peer-reviewed psychology journal.

**Claims being made:** A press release from the university states: "Heavy social media use causes anxiety, study finds." Several news articles have picked up this framing.

### Output

**Study Design**

This is a **cross-sectional survey** — it collected data from participants at a single point in time. This design can identify associations (people who use more social media also report more anxiety) but **cannot establish causation**. The press release claim that social media "causes" anxiety is not supported by this study design.

Why not? A cross-sectional study cannot determine the direction of the relationship. Three explanations are equally consistent with the data:
- Social media use causes anxiety (the claimed interpretation)
- Anxiety causes increased social media use (anxious people may seek distraction or social connection online)
- A third factor causes both (e.g., loneliness, insomnia, or unemployment might drive both social media use and anxiety)

To establish causation, you would need a longitudinal study (tracking the same people over time to see which comes first) or an experimental study (randomly assigning people to different levels of social media use).

**Sample Assessment**

- **Size: adequate.** 1,200 participants is a reasonable sample for detecting the effect size reported (a 3.6-point difference on a 21-point scale). This is not a concern.
- **Selection: problematic.** An online survey recruits participants who are already active internet users — this is a self-selected, non-random sample that likely overrepresents heavy technology users and underrepresents people with limited internet access. The sample may not represent the general adult population.
- **Representativeness: limited.** Single-country sample. Results cannot be generalised to other countries or cultures without replication. The press release does not mention this limitation.

**Measurement Assessment**

- **Anxiety (GAD-7): strong.** The GAD-7 is a well-validated, widely used screening tool for generalised anxiety symptoms. This is an appropriate and credible measure.
- **Social media use (self-reported hours): weak.** Self-reported screen time is notoriously inaccurate. Multiple studies have shown that people significantly overestimate or underestimate their actual social media usage compared to objective tracking data. A study using actual usage data (screen time logs, app tracking) would be considerably more reliable.
- **Mismatch between measures and claims.** The study measured anxiety symptoms (a continuum), not anxiety disorders (a clinical diagnosis). Reporting this as evidence that social media "causes anxiety" conflates a symptom score with a clinical condition.

**Analytical Concerns**

- **Controlling for confounders.** The researchers controlled for age, gender, and income — this is a reasonable start but far from comprehensive. Major potential confounders not controlled for include: pre-existing mental health conditions, loneliness, employment status, sleep quality, physical activity, and major life events. Any of these could explain the observed association.
- **Threshold analysis.** The 3-hour threshold for "heavy use" appears to be researcher-defined rather than clinically established. Different thresholds might produce different results. Was this threshold chosen after looking at the data (which would inflate the apparent significance) or specified in advance?
- **Effect size in context.** The difference of 3.6 points on the GAD-7 crosses the boundary from "mild" to "moderate" anxiety in clinical interpretation. This is not trivial — but it is important to note that both groups' mean scores fall within the range of mild-to-moderate symptoms, not clinical disorder.

**Bottom Line**

This is a **methodologically moderate** study. It has a reasonable sample size and uses a validated anxiety measure, which are genuine strengths. However, its cross-sectional design means it **cannot support causal claims**, and the self-reported social media use measure is a significant weakness.

The press release claim that "heavy social media use causes anxiety" is **not supported by this study design**. Accurate framing: "Adults who report spending more than three hours daily on social media also report higher levels of anxiety symptoms, according to a survey of 1,200 people — but the study could not determine whether social media use drives anxiety, anxiety drives social media use, or both are driven by other factors."

If an editor asks "should we cover this?" — the study is publishable as a finding about association, but only if the article avoids causal language and includes the design limitations. It is not strong enough to anchor a "social media causes anxiety" headline.

## Known Limitations
- Claude evaluates methodology based on the information provided. If key methodological details are omitted from the description (e.g., how participants were randomised, how missing data was handled), the evaluation will be incomplete. Providing the full methods section produces a much more accurate assessment.
- Statistical evaluation is limited to widely applicable concerns (sample size adequacy, multiple comparisons, confounding). Claude cannot re-run statistical analyses or verify that computations were performed correctly.
- Standards of methodological rigor vary between disciplines. What is considered a strong sample size in psychology may be inadequate in epidemiology. The evaluation accounts for disciplinary conventions where the field is specified, but edge cases may require expert consultation.

## Related Skills
- [scientific-paper-summarizer](./scientific-paper-summarizer.md) — summarise the full paper, not just the methodology
- [scientific-consensus-brief](./scientific-consensus-brief.md) — assess where this study fits in the broader evidence base
- [jargon-translator](./jargon-translator.md) — translate statistical and methodological terminology
- [claim-origin-tracer](../fact-checking/claim-origin-tracer.md) — trace whether the press release claims match the paper's actual findings

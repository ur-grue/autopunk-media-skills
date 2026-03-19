---
name: study-methodology-evaluator
status: beta
category: research
subcategory: scientific-academic
version: 1.0
eval_score: null
tags: [research, science, methodology, fact-checking, critical-thinking, journalism]
---

# Study Methodology Evaluator

## What This Skill Does
Takes the details of a scientific study and returns a structured set of methodological questions a journalist should ask before reporting on it — identifying weaknesses in study design, sample quality, funding, and claimed conclusions.

## When To Use This Skill
- A press release or wire story cites a study and you need to decide how much weight to give it before reporting
- You are interviewing the lead researcher and want to ask informed, specific methodological questions
- A source is citing a study as definitive evidence and you suspect it may not support the claim being made
- You are writing a fact-check and need to assess whether a study actually proves what its authors or advocates say it proves

## What You Need To Provide
**Required:** The key details of the study. Provide as many of the following as you have:
- What the study claims to show
- Study design (e.g. randomised controlled trial, observational cohort, survey, lab experiment, meta-analysis)
- Sample size and how participants were selected
- Duration of the study
- Who funded it
- Where it was published (peer-reviewed journal, pre-print, conference paper, press release only)
- Any statistics cited (relative risk, absolute risk, p-values, confidence intervals)

**Optional:**
- The specific claim you are being asked to report (e.g. "Sugar causes hyperactivity in children")
- Who is citing the study and in what context (e.g. "a government report", "a company press release", "an advocacy group")
- Any red flags you have already noticed

## How Claude Approaches This
1. **Assesses study design** — Identifies what type of study this is and explains what that design can and cannot prove. Flags if the design is inherently limited for the claim being made (e.g. a survey being used to imply causation).
2. **Evaluates the sample** — Examines size, selection method, and representativeness. Notes if the sample is too small, too narrow, or self-selected in ways that limit generalisability.
3. **Scrutinises the statistics** — Checks whether headline figures (e.g. "50% increased risk") are presented in a way that could mislead, and whether the statistical significance or effect size actually supports the conclusions drawn.
4. **Examines funding and publication context** — Notes potential conflicts of interest, whether the study has been peer-reviewed, and whether the journal is appropriate to the field.
5. **Tests the claimed conclusion** — Compares what the study actually measured against what is being claimed, identifying any gap between data and conclusion.
6. **Generates reporter's questions** — Produces a numbered list of specific questions to ask the researcher, a press officer, or an independent expert.

## Output Format
Two sections. First: **Methodology Assessment** (400–600 words) — a structured plain-language critique covering study design, sample, statistics, funding, and publication context. Second: **Questions To Ask** — a numbered list of 6–10 specific, direct questions written as you would ask them in an interview or by email. Tone throughout is rigorous but fair — the goal is informed scrutiny, not reflexive scepticism. No jargon without explanation.

## Quality Criteria
- [ ] Correctly identifies what type of study this is and explains what that design can and cannot establish
- [ ] Distinguishes between relative and absolute risk figures where statistics are present
- [ ] Questions are specific enough to ask verbatim — not generic ("Did you consider confounders?") but targeted ("The study excluded participants over 65 — how does that affect the conclusion for older adults?")
- [ ] Does not dismiss the study outright; notes both strengths and limitations
- [ ] Flags if a claimed conclusion goes beyond what the study design can support

## Example

### Input
**Claim being reported:** "Eating red meat three times a week doubles the risk of developing type 2 diabetes."

**Study details:**
- Design: Observational cohort study — participants filled out food frequency questionnaires at the start and were followed for 12 years
- Sample: 11,000 adults, recruited through a workplace wellness programme at a single employer
- Duration: 12 years
- Funding: A grant from a plant-based food company
- Publication: Published in a peer-reviewed nutrition journal (mid-tier)
- Statistics cited: Hazard ratio of 2.1 (95% CI: 1.3–3.4) for participants in the highest red meat consumption quartile vs. the lowest
- Additional context: Press release headline says "Red meat doubles diabetes risk." The lead researcher is quoted saying "People should eliminate red meat from their diet immediately."

---

### Output

**Methodology Assessment**

**Study Design**

This is an observational cohort study — participants were not randomly assigned to eat red meat or avoid it. Researchers simply tracked what people reported eating and what health outcomes followed. This design is useful for spotting patterns across large populations over time, but it cannot prove that red meat caused the diabetes cases observed. People who eat more red meat may differ from those who eat less in dozens of other ways — exercise habits, income, overall diet quality, stress levels — and any of those differences could be driving the outcome. This is the central limitation every observational nutrition study carries, and the headline claim that red meat "causes" or "doubles the risk" of diabetes goes further than this design can support.

**Sample Quality**

11,000 participants is a reasonable size for an observational study, but the recruitment method raises questions. Drawing entirely from a single employer's wellness programme creates a sample that may skew toward a specific demographic — likely employed adults, probably urban, probably health-aware enough to join a wellness scheme. This limits how confidently you can generalise the finding to the broader population, particularly to lower-income groups, rural populations, or older adults who may have very different baseline health profiles. The study should be asked directly how representative the sample is.

**Statistics**

The hazard ratio of 2.1 means that the highest red meat consumers had approximately twice the observed rate of type 2 diabetes diagnosis compared to the lowest consumers. However, this is a relative risk figure. Without the absolute rates — how many people in each group actually developed diabetes — it is impossible to know whether "twice the risk" represents a large or trivially small real-world difference. If 1% of low consumers developed diabetes and 2.1% of high consumers did, the absolute increase is just over one percentage point. That is a meaningfully different story than the headline implies. The confidence interval (1.3–3.4) is statistically significant but wide, suggesting uncertainty in the estimate.

**Funding and Publication**

Funding from a plant-based food company is a direct conflict of interest that must be disclosed in any reporting. This does not mean the study is wrong, but it is a relevant fact for readers evaluating the claim. The study was peer-reviewed and published in a recognised journal, which provides a baseline quality check — but peer review does not guarantee that conclusions are correctly stated or that the press release accurately reflects the findings.

**Claimed Conclusion vs. Actual Finding**

The researcher's call for people to "eliminate red meat immediately" is not supported by a single observational study, however large. Evidence-based dietary recommendations are built from multiple converging study types over many years. A journalist reporting this story accurately should not relay the researcher's recommendation as though it follows automatically from the data.

---

**Questions To Ask**

1. The study design is observational — participants reported their own diet rather than being randomly assigned. What steps did you take to rule out other factors (exercise, overall diet quality, socioeconomic status) that might explain the difference in diabetes rates between the two groups?

2. All participants were recruited from a single workplace wellness programme. How do you account for the likelihood that this group does not represent the general population — and does that affect how broadly this finding can be applied?

3. Can you give me the absolute diabetes rates in the highest and lowest red meat consumption groups, not just the relative risk figure?

4. Food frequency questionnaires rely on participants accurately remembering what they ate. What is the typical margin of error for this method, and how might misreporting affect the results?

5. The study was funded by a plant-based food company. Can you walk me through the funding arrangement — did the funder have any role in study design, data analysis, or review of the manuscript?

6. Your press release says red meat "doubles the risk" of type 2 diabetes. Does the study design allow you to make a causal claim, or does it establish an association?

7. You recommend people eliminate red meat immediately. Is that recommendation based on this study alone, or on a broader body of evidence? Can you point me to independent reviews that support that conclusion?

8. The confidence interval on the hazard ratio runs from 1.3 to 3.4 — a fairly wide range. What does that uncertainty mean for how definitive this finding should be treated?

9. Were there any subgroups — by age, sex, BMI, or baseline health — where the association was weaker or absent?

10. Has any independent research group attempted to replicate this finding in a different population?

---

## Known Limitations
- This skill critiques methodology based on the details you provide — it cannot read the actual study. If important methodological details are not in the press release or abstract, the assessment will be incomplete. Always request the full paper and supplementary methods section.
- The skill does not have access to databases of retracted studies or ongoing editorial investigations. A study can pass this methodology check and still later be found to have data integrity problems.
- For highly specialised study designs (genomic studies, advanced epidemiological models, clinical trial phases), the questions generated may not be technically precise enough for the most specialised beat reporters. In those cases, use the questions as a starting framework and refine with a subject-matter expert.

## Related Skills
- [scientific-literature-brief](scientific-literature-brief.md)
- [claim-verification-checklist](../../magazine-journalism/fact-checking/claim-verification-checklist.md)
- [source-credibility-scorer](../../magazine-journalism/fact-checking/source-credibility-scorer.md)

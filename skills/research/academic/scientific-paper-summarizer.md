---
name: scientific-paper-summarizer
status: stable
category: research
subcategory: academic
version: 1.0
eval_score: 4.56
tags: [research, science, academic, papers, plain-language, summary]
---

# Scientific Paper Summarizer

## What This Skill Does
Summarises a scientific paper in plain language — covering the research question, methodology, key findings, limitations, and implications — so a journalist can accurately report on the study without misrepresenting it or overstating its conclusions.

## When To Use This Skill
- You have a scientific paper relevant to a story and need to understand what it actually found (not just what the press release says)
- You are writing about a study for a general audience and need to translate technical findings into accessible language without distortion
- You need to brief an editor or producer on a study's significance and limitations before deciding whether to cover it
- You are preparing to interview a researcher and need to understand their paper well enough to ask informed questions

## What You Need To Provide
**Required:** The text of the paper (or the abstract, introduction, methods, results, and discussion sections — the more you provide, the more accurate the summary). Alternatively, a detailed description of the study's content if you cannot paste the full text.

**Optional:** The story angle you are considering (helps prioritise which findings to emphasise); the audience (general reader, health/science section, specialist publication); specific aspects you need explained (methodology, statistical significance, limitations); any claims being made about the study in media coverage that you want to verify against the actual paper.

## How Claude Approaches This
1. **Identifies the research question.** States in one sentence what the researchers set out to investigate — stripped of jargon, framed as a question a general reader would understand.

2. **Summarises the methodology in plain language.** Describes what the researchers actually did — the study design (experiment, observational study, meta-analysis, survey), the population studied (who, how many, how selected), and the key measures used. Flags whether the design can support causal claims or only associations.

3. **Reports the key findings accurately.** States what the study found — including effect sizes, confidence intervals, and statistical significance where provided — translated into language a non-specialist can understand. Clearly distinguishes between primary findings and secondary or exploratory findings.

4. **Lists the limitations the authors acknowledge.** Reproduces the study's own stated limitations and adds any significant methodological concerns that the authors did not mention but that a journalist should be aware of (small sample size, self-selection bias, short follow-up period, industry funding).

5. **Assesses the implications honestly.** States what the study contributes to the field and what it does not prove. Explicitly flags the gap between what the paper says and what media coverage may claim it says. Ends with a plain-language "bottom line" statement: what this study tells us, what it does not tell us, and what questions remain.

## Output Format
400–700 words. Five labelled sections: **Research Question**, **What They Did** (methodology), **What They Found** (findings), **Limitations**, and **Bottom Line** (implications and what the study does and does not prove). Tone: clear, accurate, cautious where the evidence warrants caution. No hype, no minimising. Technical terms are used where necessary but defined on first use. The summary should be accurate enough that the original researcher would agree it is a fair representation of their work.

## Quality Criteria
- [ ] Research question is stated as a clear, jargon-free question
- [ ] Methodology summary distinguishes between study designs that can and cannot support causal claims
- [ ] Key findings include effect sizes or specific numbers — not just "the researchers found a link"
- [ ] Limitations include both the authors' stated limitations and any unstated concerns
- [ ] Bottom line does not overstate or understate the findings — it reflects what the paper actually demonstrates
- [ ] The summary is accurate enough that the original researcher would recognise their work
- [ ] No unsupported language ("breakthrough," "proves," "game-changing") unless the paper itself makes such claims

## Example

### Input
**Paper provided (summary of content):** A randomised controlled trial examining whether a 12-week mindfulness-based stress reduction (MBSR) programme reduces burnout symptoms in hospital nurses. 180 nurses at three urban hospitals were randomly assigned to MBSR (n=92) or a wait-list control group (n=88). The primary outcome was the Maslach Burnout Inventory (MBI) emotional exhaustion subscale, measured at baseline, 12 weeks, and 6 months. Secondary outcomes included job satisfaction and sick leave days. Results: the MBSR group showed a statistically significant reduction in emotional exhaustion scores compared to the control group at 12 weeks (mean difference -4.2 points, 95% CI -6.1 to -2.3, p<0.001). The effect was still present but smaller at 6 months (mean difference -2.8 points, 95% CI -4.9 to -0.7, p=0.01). No significant differences in job satisfaction or sick leave days. The study was funded by a government health research council. Attrition: 15% of the MBSR group and 8% of the control group dropped out before the 12-week assessment.

**Story angle:** A feature on whether mindfulness programmes actually work for healthcare worker burnout, or whether they are a distraction from fixing systemic problems like understaffing
**Audience:** General readership of a national newspaper

### Output

**Research Question**

Does a 12-week mindfulness programme reduce burnout in hospital nurses compared to receiving no programme?

**What They Did**

The researchers conducted a randomised controlled trial — the strongest study design for testing whether an intervention works. They recruited 180 nurses from three urban hospitals and randomly assigned them to one of two groups: 92 nurses received a 12-week mindfulness-based stress reduction (MBSR) programme, and 88 nurses were placed on a waiting list as a comparison group. Burnout was measured using a standard, validated questionnaire (the Maslach Burnout Inventory) at the start of the study, at 12 weeks when the programme ended, and at 6 months to see whether any benefits lasted. The researchers also tracked whether the programme affected job satisfaction or sick leave.

**What They Found**

At 12 weeks, nurses who completed the mindfulness programme reported significantly lower emotional exhaustion — the core symptom of burnout — compared to the control group. The difference was 4.2 points on the burnout scale (on a scale where clinically meaningful change is generally considered to be 5+ points). This difference was statistically significant (p<0.001), meaning it is very unlikely to be due to chance.

At 6 months — three months after the programme ended — the benefit had shrunk. The difference between groups was still measurable (2.8 points) and still statistically significant, but it was smaller, suggesting the effect fades over time without ongoing practice or support.

The programme did not improve job satisfaction or reduce sick leave days. The burnout reduction was real but narrow — limited to one dimension of burnout (emotional exhaustion) and not translating into broader workplace outcomes within the study period.

**Limitations**

*Stated by the authors:*
- Wait-list control groups are a weak comparator. The MBSR group knew they were receiving an intervention; the control group knew they were not. Some of the benefit may be due to expectation effects (placebo), social support from group sessions, or simply having protected time away from work — not mindfulness specifically.
- The sample was drawn from three urban hospitals, which limits generalisability to other settings (rural hospitals, other healthcare roles).

*Additional concerns:*
- Differential attrition is a concern. 15% of the mindfulness group dropped out vs. 8% of the control group. If the nurses who dropped out of the programme were those finding it unhelpful, the remaining group may overestimate the programme's effectiveness.
- The study does not address systemic causes of burnout (staffing levels, workload, pay). A mindfulness programme could theoretically reduce burnout scores while the underlying working conditions remain harmful — the study was not designed to test this distinction.
- The fading effect at 6 months raises questions about long-term value.

**Bottom Line**

This study provides moderate evidence that a 12-week mindfulness programme can reduce one component of burnout (emotional exhaustion) in hospital nurses in the short term. The effect is statistically real but modest, and it fades after the programme ends. It does not prove that mindfulness "solves" burnout, and it found no impact on job satisfaction or sick leave — the outcomes that matter most to employers and policymakers. For the journalist's story angle: this paper supports the claim that mindfulness programmes have a measurable effect, but it also supports the counter-argument — that the effect is limited, temporary, and does not address the structural causes of burnout.

## Known Limitations
- Claude's summary quality depends entirely on the completeness and accuracy of the paper content provided. If only the abstract is supplied, the summary will be shallower and may miss important methodological details. Providing the full methods, results, and discussion sections produces a much stronger summary.
- Claude cannot verify whether the data in the paper is accurate or whether the statistical analyses were performed correctly. The summary takes the paper's reported results at face value while flagging methodological concerns visible from the text.
- For papers in rapidly evolving fields, subsequent research may have confirmed, refined, or contradicted the findings. This skill summarises the individual paper — use the scientific-consensus-brief skill to assess where the paper fits in the broader evidence base.

## Related Skills
- [study-methodology-evaluator](./study-methodology-evaluator.md) — deeper evaluation of the paper's methodology and statistical approach
- [jargon-translator](./jargon-translator.md) — translate specific technical terms from the paper into plain language
- [scientific-consensus-brief](./scientific-consensus-brief.md) — assess where this paper's findings sit within the broader scientific consensus
- [claim-origin-tracer](../fact-checking/claim-origin-tracer.md) — trace whether media coverage accurately represents the paper's findings

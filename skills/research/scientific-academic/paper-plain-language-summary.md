---
name: paper-plain-language-summary
status: beta
category: research
subcategory: scientific-academic
version: 1.0
eval_score: null
tags: [science, research, plain-language, explainer, journalism]
---

# Paper Plain Language Summary

## What This Skill Does
Translates the key findings of a scientific paper — abstract, methods, and conclusions — into clear, accurate plain English that any reader can understand without specialist knowledge.

## When To Use This Skill
- You have found a relevant study and need to understand it quickly before an interview or deadline
- You are writing a science or health story and need to explain the research to a general audience
- A researcher has sent you a paper and you need to confirm you have understood it correctly before quoting them
- You are fact-checking a claim made by a public figure who cites a specific study

## What You Need To Provide
**Required:** The full abstract of the paper, or as much of the paper text as you can paste (methods, results, and conclusions sections are most useful).
**Optional:** The topic of your story, your intended audience (general public, policymakers, specialist readers), any specific aspect of the paper you most need explained, and any claims you have seen made about this research that you want verified.

## How Claude Approaches This
1. Reads the abstract and any additional text to identify the core research question, the method used, what was measured, and what the authors concluded.
2. Replaces technical vocabulary with plain-language equivalents — retaining precision where it matters (for example, "statistically significant" is explained rather than dropped).
3. Flags anything the paper itself limits or qualifies — sample size caveats, funding disclosures, the difference between correlation and causation — so the journalist does not overstate the findings.

## Output Format
Three short sections, each under 100 words:
- **What the researchers wanted to find out** — the question the study was designed to answer
- **What they did and found** — method and key result in plain English
- **What this means (and what it does not mean)** — practical significance and the authors' own stated limitations

Tone: clear and factual, written for an intelligent non-specialist. No bullet points inside sections — flowing prose only. Total length: 200–350 words.

## Quality Criteria
- [ ] Every technical term that appears in the input is either replaced or explained in the output
- [ ] The summary does not claim more than the paper's own conclusions claim
- [ ] At least one limitation or caveat from the paper is stated explicitly
- [ ] The output would make sense to a reader who has never seen the original paper
- [ ] No speculative language not present in the source ("this will change…", "this proves…")

## Example

### Input
**Paper abstract:**

> Background: Chronic sleep restriction (CSR) is associated with impaired cognitive performance, yet the dose-response relationship between nightly sleep duration and executive function decline remains poorly characterised in working-age adults. Methods: 214 adults aged 28–55 (mean age 41.3; 52% female) completed a six-week randomised controlled trial. Participants were assigned to one of three conditions: 5 hours, 7 hours, or 9 hours of monitored nightly sleep, achieved via actigraphy-confirmed sleep scheduling. Executive function was assessed at baseline, week three, and week six using the Trail Making Test (TMT-B) and a sustained attention task (SART). Results: Participants in the 5-hour condition showed a statistically significant decline in TMT-B performance relative to baseline by week three (mean increase of 14.2 seconds; p < 0.001; 95% CI: 11.8–16.6). No significant difference was observed between the 7-hour and 9-hour conditions. Effect sizes were moderate (Cohen's d = 0.61). Conclusions: These findings suggest that sustained sleep restriction to five hours per night degrades executive function in working-age adults within three weeks. The study was conducted in a controlled laboratory environment, which may limit generalisability to real-world sleep conditions. Funded by a national public health research council. No conflicts of interest declared.

**Story topic:** Health section piece on sleep and workplace productivity.
**Audience:** General readers.

### Output

**What the researchers wanted to find out**

The study asked a practical question: does sleeping less than you should actually make you worse at demanding mental tasks, and if so, how quickly? Researchers focused specifically on working-age adults — the group most likely to cut sleep because of work pressures.

**What they did and found**

Over six weeks, 214 adults were randomly assigned to sleep five, seven, or nine hours a night, with monitoring equipment to confirm they stuck to their schedule. The researchers then tested participants' ability to plan, switch between tasks, and sustain attention. Adults restricted to five hours of sleep became measurably slower at a standard planning task within three weeks. Those sleeping seven or nine hours performed at comparable levels throughout — suggesting that seven hours was enough, but five was not.

**What this means — and what it does not mean**

The study adds solid evidence that five hours of sleep is harmful to mental performance within a relatively short period, not just after months of sleep deprivation. However, the researchers themselves note that the controlled lab setting may not reflect how people actually sleep at home, where noise, stress, and inconsistent schedules all play a role. The study does not tell us whether the effects are permanent or recover after normal sleep resumes. It also does not address what happens at six hours — a common real-world figure that this research does not test.

## Known Limitations
- Claude cannot access the full paper from a DOI or URL — you must paste the text. Abstracts alone sometimes omit key methodological details that change how findings should be interpreted.
- Highly mathematical or statistical content (Bayesian models, complex meta-analytic methods) will be simplified accurately in plain terms but the nuance of the method may be lost for specialist readers.
- Claude cannot assess whether a paper has been peer-reviewed, retracted, or disputed — use the retracted-papers-checker skill for that step.

## Related Skills
- [retracted-papers-checker](retracted-papers-checker.md)
- [literature-brief-creator](literature-brief-creator.md)
- [methodology-explainer](methodology-explainer.md)

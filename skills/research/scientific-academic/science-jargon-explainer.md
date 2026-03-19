---
name: science-jargon-explainer
status: beta
category: research
subcategory: scientific-academic
version: 1.0
eval_score: null
tags: [science, jargon, translation, explainer, accessibility, journalism]
---

# Science Jargon Explainer

## What This Skill Does
Translates dense scientific terminology and technical language from academic papers, press releases, or expert interviews into plain English that a general-audience journalist can quote, paraphrase, or explain in a news story.

## When To Use This Skill
- You have a passage from a journal abstract or study methodology and need to understand what it actually says
- A scientist used technical terms in an interview and you want to rephrase them accurately for a lay audience
- You are writing a news story or feature and need plain-English glosses for key terms without losing scientific accuracy
- An editor has flagged a paragraph as "too technical" and you need to rewrite it without distorting the meaning
- You are preparing questions for a scientist and want to understand the terminology before the interview

## What You Need To Provide
**Required:** The technical text, passage, or list of terms you need explained — copied verbatim, not paraphrased.
**Optional:** The outlet or format you are writing for (broadsheet, TV package, podcast, social post); the assumed knowledge level of your audience (general public, interested layperson, science-literate reader); any context about the study or topic that may help Claude interpret ambiguous terms correctly.

## How Claude Approaches This
1. Reads the technical passage and identifies every term or phrase that would be opaque to a non-specialist reader, flagging each one explicitly.
2. For each flagged term, produces a plain-English explanation using analogy, everyday comparison, or concrete example — choosing the method that preserves the most scientific accuracy without introducing misleading simplifications.
3. Delivers the full passage rewritten in plain English, followed by a glossary of individual terms so the journalist can pick the phrasing that fits their word count and register.

## Output Format
Two sections, clearly labelled:

**Plain-English Version** — the full passage rewritten at approximately a 10th-grade reading level. Same logical structure as the original. No jargon left unexplained. Length matches the original passage.

**Term Glossary** — a bullet list of each technical term with a one- or two-sentence plain-English definition and, where useful, a note on what the term does NOT mean (to prevent a common misreading). If the term has a direct everyday equivalent, it is given.

Tone: precise and confident, not dumbed-down. The language should be something a journalist would be comfortable quoting or adapting.

## Quality Criteria
- [ ] Every technical term in the original passage is either replaced in the plain-English version or appears in the glossary
- [ ] No plain-English substitution changes the scientific meaning of the original
- [ ] Analogies and comparisons are accurate — they illuminate, not distort
- [ ] The rewritten passage reads naturally and could appear in a broadsheet news story without further editing
- [ ] The glossary entries are concise (under 40 words each) and free of jargon themselves
- [ ] Where a term is genuinely ambiguous or context-dependent, this is flagged rather than glossed over

## Example

### Input
**Passage (from a study press release):**
"The intervention produced a statistically significant reduction in systolic blood pressure (mean reduction 8.4 mmHg, 95% CI 5.1–11.7, p<0.001) in the treatment cohort compared to placebo. Effect sizes were moderate (Cohen's d = 0.52). Secondary endpoints including diastolic pressure and endothelial function showed non-significant trends."

**Format:** Daily newspaper health story. Audience: general public, no assumed science background.

### Output

**Plain-English Version**

People who received the treatment saw their blood pressure drop by a meaningful amount — on average about 8 points on the top number, the one most doctors focus on when assessing heart risk. Researchers are confident this result is real and not a fluke: the statistical tests put the odds of it happening by chance at less than one in a thousand. The effect was moderate in size — noticeable, but not dramatic. The bottom number of the blood pressure reading and the health of blood vessel walls also showed improvement, though those results were not strong enough to be considered definitive.

---

**Term Glossary**

- **Statistically significant** — The result is unlikely to have occurred by random chance. It does not mean "large" or "important" — it means "probably real." A result can be statistically significant but still be a small effect.
- **Systolic blood pressure** — The top number in a blood pressure reading (e.g., the "120" in "120/80"). It measures the pressure in your arteries when your heart beats. Most cardiovascular risk assessments focus on this number.
- **mmHg** — Millimetres of mercury. The unit used to measure blood pressure, inherited from old mercury-column gauges. A drop of 8 mmHg systolic is generally considered clinically meaningful.
- **95% CI (confidence interval)** — A range of values the researchers are 95% confident contains the true effect. Here, the true average reduction is likely somewhere between 5.1 and 11.7 mmHg. The narrower the range, the more precise the estimate.
- **p<0.001** — The probability that this result occurred by chance is less than 0.1%. Standard threshold for publishing is usually p<0.05. This result clears that bar easily.
- **Cohen's d = 0.52** — A measure of effect size. By convention: 0.2 is small, 0.5 is moderate, 0.8 is large. 0.52 means the effect is real but not dramatic — worth reporting, not worth overstating.
- **Treatment cohort** — The group of participants who received the actual treatment (as opposed to the placebo group, who received a dummy treatment with no active ingredient).
- **Secondary endpoints** — The study was primarily designed to test blood pressure. Secondary endpoints are additional things researchers measured while they were at it. Results on secondary endpoints are considered less reliable than the primary finding.
- **Non-significant trends** — These results moved in the right direction but were not strong enough to rule out chance. Do not report these as "also effective." Report them as "suggesting possible benefits that need further study."

## Known Limitations
- Claude cannot verify that its plain-English explanation matches the authors' intended meaning — always confirm key interpretations with the study's corresponding author or an independent expert before publication.
- Highly specialised subfields (e.g., quantum chromodynamics, CRISPR base-editing mechanisms) may require domain-expert review even after explanation, as analogies can introduce subtle inaccuracies.
- This skill explains terminology — it does not assess whether the study's methods or conclusions are sound. For methodological critique, use the scientific-paper-brief or peer-review-summary skills.
- Statistical concepts in particular carry nuanced meanings that plain-English glosses can only approximate; flag these passages to a statistician if precision is critical.

## Related Skills
- [scientific-consensus-brief](./scientific-consensus-brief.md)
- [statistics-explainer](../../data-journalism/analysis/statistics-explainer.md)

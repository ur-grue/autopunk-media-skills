---
name: debate-summary-writer
status: beta
category: research
subcategory: facts-context
version: 1.0
eval_score: null
tags: [controversy, debate, balance, background, explainer]
---

# Debate Summary Writer

## What This Skill Does
Produces a structured, neutral summary of an ongoing public debate or controversy — mapping the major positions, the evidence each side draws on, and the key points of genuine disagreement — so a journalist can cover the story without inadvertently taking a side.

## When To Use This Skill
- You are new to a running controversy and need to get up to speed before interviews
- Your editor asks for a "state of play" briefing on a contested policy, scientific, or social question
- You want to identify the strongest arguments on each side before deciding your story's angle
- You are writing an explainer, a Q&A, or a "what you need to know" piece and need a balanced scaffold
- You suspect you already have a view on a debate and want a tool to stress-test your assumptions before reporting

## What You Need To Provide
**Required:** The topic or controversy you are covering; a brief description of what prompted your story (new development, anniversary, policy change, viral moment).
**Optional:** The publication and audience; any specific aspect of the debate you are most focused on; names of key advocates or institutions already in your notes (for Claude to map against the broader debate without endorsing them); the geographic or jurisdictional scope if the debate is local or national rather than global.

## How Claude Approaches This
1. Identifies the core contested question — the one claim or proposal that, if resolved, would dissolve the disagreement — and states it plainly in one sentence
2. Maps the main positions (typically two to four; rarely more) and names the types of actors who hold each position, without endorsing any
3. For each position, summarises the strongest evidence or arguments its proponents advance, distinguishing between empirical claims (which can in principle be checked) and value claims (which cannot)
4. Identifies the crux points: the specific factual, methodological, or ethical disagreements that explain why the debate has not resolved, rather than describing each side as simply disagreeing
5. Notes the current state of play — whether consensus has shifted recently, whether a key institution has changed its position, whether new evidence has entered the debate — and flags any areas where Claude's knowledge may be incomplete or dated

## Output Format
700–1000 words. Structure: The Core Question (1 short paragraph) → Main Positions (one subsection per position, 100–150 words each) → Key Crux Points (bulleted list of 4–6 genuine disagreements) → Current State of Play (1 paragraph). Tone: briefing-document neutral. No rhetorical framing that advantages one side. Contested empirical claims are flagged as contested; settled empirical claims are stated as fact. First person is not used.

## Quality Criteria
- [ ] The core contested question is stated in one sentence and is genuinely the right question (not a strawman of either side)
- [ ] Each position is described in terms its proponents would recognise as fair
- [ ] Empirical disagreements are distinguished from value disagreements
- [ ] The crux points section identifies why the debate persists, not just what each side says
- [ ] No position is given more word count, more favourable framing, or stronger evidence than the others without explicit justification
- [ ] The output is usable as a journalist's internal briefing note without triggering accusations of bias from either side

## Example

### Input
I'm writing a piece for a science and society magazine about the controversy over using algorithmic tools to set bail and sentencing recommendations in criminal courts. A new report from a civil liberties group is the news hook. My audience is educated general readers, not legal specialists. I need a state-of-play summary before I start interviews.

### Output

**Debate Summary: Algorithmic Risk Assessment Tools in Criminal Sentencing**
*Prepared for: science and society magazine feature · Audience: educated general readers · Hook: civil liberties group report*

---

**The Core Question**

Should courts be permitted to use algorithmic risk-assessment tools — software that scores defendants on the statistical likelihood of reoffending — when making decisions about bail, sentencing, and parole, and if so, under what conditions?

---

**Main Positions**

**Position A: Algorithmic tools make fairer decisions than unaided human judges**
Proponents — including some court administrators, criminal justice reform advocates, and tool developers — argue that human judges are subject to unconscious bias, inconsistency, and fatigue. Studies have shown that sentencing outcomes vary depending on factors irrelevant to the case, including the time of day and the judge's caseload. Algorithmic tools, this argument holds, apply consistent criteria to every defendant and can be audited in ways that individual judicial reasoning cannot. Some advocates argue that when tools are trained on data that over-represents certain demographic groups in the prison population, the resulting disparities reflect real social patterns rather than tool error.

**Position B: Algorithmic tools embed and automate historical discrimination**
Critics — including civil liberties organisations, academic researchers in law and computer science, and some defendants' rights groups — argue that because risk-assessment tools are trained on historical criminal justice data, they inherit the racial and socioeconomic biases embedded in that data. A score that predicts reoffending based partly on neighbourhood, employment history, or family criminal records effectively penalises defendants for structural inequalities rather than individual culpability. Several published audits of widely-used tools have found that they systematically score Black defendants as higher risk than white defendants with comparable criminal histories.

**Position C: The tools can be used fairly with appropriate transparency and oversight**
A middle-ground position, held by some legal scholars and reform-minded court administrators, accepts that risk-assessment tools have a role but argues the current generation is deployed without adequate safeguards. This position calls for mandatory disclosure of the tool's methodology to defendants and their lawyers, independent auditing of outcomes by race and income, and limits on which decisions the tools can inform (bail recommendations, for instance, rather than sentencing length).

---

**Key Crux Points**

- **What counts as fairness?** Statisticians and legal scholars disagree on whether a tool is fair if it produces equally accurate predictions across demographic groups, or only if it produces equally low false-positive rates. These are mathematically incompatible goals when base rates differ between groups. This is not a political disagreement — it is a genuine technical constraint.
- **Who bears the burden of proof?** Advocates for the tools argue critics must show that human judges would do better; critics argue the burden lies with those seeking to introduce new systems into high-stakes decisions.
- **Transparency vs. proprietary protection:** Several major tools are sold by private companies that have resisted disclosing their full methodology as a trade secret. Courts and defendants therefore cannot fully scrutinise what they are being judged by.
- **Does "statistical accuracy" translate to individual justice?** Even a tool that predicts group-level reoffending rates accurately may be wrong for any individual defendant. Courts have not reached consensus on whether group-level statistics are appropriate inputs for individual sentencing decisions.
- **Are the relevant comparators the right ones?** Debate over whether to compare algorithmic tools to the best possible human decision-making or to typical human decision-making as it actually occurs. The comparison changes the policy conclusion significantly.

---

**Current State of Play**

Several jurisdictions that adopted algorithmic tools in the 2010s are now reviewing or restricting their use following independent audits and legal challenges. The debate has intensified with the growth of AI-generated risk scores in adjacent contexts (child welfare, immigration). Academic literature on the topic is voluminous but contested: studies reach opposing conclusions depending on which dataset they use and which definition of fairness they apply. The civil liberties sector has shifted from scepticism to active opposition in most jurisdictions. Tool developers and some court systems continue to maintain that with proper oversight the tools are net positive. There is no settled consensus.

*Note: Claude's knowledge of specific legislative changes, court rulings, and published audits has a cutoff date. Verify the status of any specific tool or jurisdiction before publication.*

## Known Limitations
- For highly technical debates (statistical methodology, scientific measurement disputes), Claude can map the positions but may not be able to adjudicate between competing empirical claims. The output will accurately represent that these are contested; it will not resolve the technical disagreement.
- In debates where one side has a significantly stronger evidentiary basis, this skill's commitment to neutral framing may give the impression of false equivalence. Use the "Current State of Play" section to note where scientific or legal consensus exists, and supplement with expert sourcing.
- Claude's training data reflects the English-language debate most heavily. Debates with a strong non-English dimension may be less fully represented.

## Related Skills
- [claim-fact-checker](claim-fact-checker.md)
- [claim-origin-tracer](claim-origin-tracer.md)
- [topic-background-brief](topic-background-brief.md)
- [political-landscape-brief](political-landscape-brief.md)
- [source-cross-referencer](source-cross-referencer.md)

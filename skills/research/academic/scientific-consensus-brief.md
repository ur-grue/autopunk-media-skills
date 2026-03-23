---
name: scientific-consensus-brief
status: stable
category: research
subcategory: academic
version: 1.0
eval_score: 4.44
tags: [research, science, consensus, evidence, analysis, academic]
---

# Scientific Consensus Brief

## What This Skill Does
Produces a structured assessment of the current scientific consensus on a specific topic — distinguishing between what is well-established, what is actively debated, and what is fringe — so a journalist can report on the science accurately without false balance or overstatement.

## When To Use This Skill
- You are covering a scientific topic and need to understand whether a claim represents mainstream science, an active debate, or a minority position
- You need to avoid "false balance" — presenting a fringe view as equally credible to established science — and want a clear framework for the evidence hierarchy
- You are writing an explainer or backgrounder on a scientific issue and need to convey the state of knowledge accurately
- A source or interviewee has made a scientific claim and you need to assess whether it reflects the consensus or contradicts it

## What You Need To Provide
**Required:** The specific scientific question or claim you need assessed (be as precise as possible — "Is [specific substance] linked to increased cancer risk?" rather than "Is [substance] dangerous?").

**Optional:** The context of your story; any specific studies or claims you have encountered that you want evaluated against the consensus; your audience (general reader, health section, science section); whether you are looking for the consensus position only or also the dissenting views and their credibility.

## How Claude Approaches This
1. **Frames the question precisely.** Restates the question in the specific, testable form that scientists would recognise. Many journalistic questions are broader than the actual scientific question — narrowing the question is essential for an accurate consensus assessment.

2. **Assesses the evidence hierarchy.** Identifies the highest-quality evidence available on the topic — systematic reviews, meta-analyses, large randomised trials, and statements from authoritative scientific bodies. Explains where the evidence sits in the standard hierarchy (from strongest to weakest: systematic reviews > RCTs > cohort studies > case-control studies > expert opinion).

3. **Classifies the consensus state.** Places the scientific position on a clear spectrum:
   - **Established consensus** — supported by multiple lines of high-quality evidence, endorsed by major scientific bodies, no serious scientific debate about the core finding.
   - **Emerging consensus** — the evidence increasingly points in one direction, but significant studies are still being conducted and the picture could change.
   - **Active scientific debate** — credible scientists disagree based on legitimate interpretation of mixed evidence.
   - **Fringe position** — contradicts the weight of evidence and is held by few credible researchers. May be amplified by non-scientific interests.

4. **Identifies the key evidence.** Names the most important studies, reviews, or institutional statements that define the consensus — with enough detail for the journalist to locate and reference them.

5. **Flags the reporting pitfalls.** Identifies the specific ways this topic is commonly misreported — false balance, overstating a single study, confusing association with causation, or misrepresenting the uncertainty.

## Output Format
500–800 words. Four sections: **Precise Question**, **Consensus Assessment** (classification and explanation), **Key Evidence** (the most important studies and institutional positions), and **Reporting Pitfalls** (2–3 specific errors to avoid). Tone: authoritative, measured, precise. Does not hedge unnecessarily on established science or overstate certainty on genuinely uncertain questions. Written so an editor could use it as a reference document for the newsroom.

## Quality Criteria
- [ ] The question is framed precisely enough for a meaningful consensus assessment
- [ ] Consensus classification is honest — established science is called established, genuine debate is acknowledged
- [ ] Key evidence citations are specific enough to locate (author names, institutional bodies, approximate dates)
- [ ] The assessment does not create false balance — fringe views are identified as fringe, not presented as "the other side"
- [ ] Reporting pitfalls are specific to this topic, not generic warnings about science journalism
- [ ] The brief distinguishes between scientific uncertainty (legitimate) and manufactured doubt (strategic)
- [ ] Output is usable as a newsroom reference document without further research

## Example

### Input
**Question:** Do microplastics in drinking water pose a health risk to humans?
**Context:** Writing a feature for a general newspaper about a city council decision to invest in advanced water filtration specifically to remove microplastics
**Specific claim to evaluate:** A council member stated that "science has shown microplastics cause cancer and hormonal disruption"
**Audience:** General readership

### Output

**Precise Question**

Does current scientific evidence establish that the levels of microplastics typically found in drinking water cause adverse health effects — specifically cancer or endocrine (hormonal) disruption — in humans?

**Consensus Assessment: Emerging concern, not established health risk**

The scientific position on microplastics and human health is best classified as an **active area of research with growing concern but no established consensus on specific health effects at current exposure levels.** This is important to convey accurately:

*What is established:*
- Microplastics are present in drinking water, bottled water, food, and air. This is confirmed by multiple detection studies worldwide and is not scientifically disputed.
- Humans ingest microplastics regularly. Estimates vary, but the most-cited range is several thousand particles per week. The WHO acknowledged this exposure in a 2019 report.
- In laboratory studies, microplastics at high concentrations can cause cellular damage, inflammatory responses, and endocrine disruption in animal models and cell cultures.

*What is not established:*
- Whether the concentrations of microplastics that humans are actually exposed to through drinking water are sufficient to cause the effects observed in laboratory studies. Most lab studies use concentrations far higher than real-world exposure.
- Whether microplastics cause cancer in humans. No epidemiological study has demonstrated a causal link between microplastic exposure and cancer in human populations. The council member's claim that "science has shown microplastics cause cancer" is not supported by the current evidence base.
- Whether the chemical additives in plastics (phthalates, bisphenol A, flame retardants) that leach from microplastics are present in sufficient concentrations in drinking water to cause endocrine disruption. These chemicals are known endocrine disruptors at certain doses, but the contribution from drinking water microplastics specifically has not been quantified with confidence.

*What is genuinely debated:*
- Whether the precautionary principle justifies action (like advanced filtration) before definitive evidence of harm. Reasonable scientists disagree on this.
- Whether long-term, low-level exposure poses cumulative risks that short-term studies cannot detect. This is a legitimate gap in the evidence.

**Key Evidence**

- **WHO (2019), "Microplastics in Drinking-water."** The most authoritative institutional assessment. Concluded that microplastics in drinking water do not appear to pose a health risk at current levels, but acknowledged significant data gaps and called for more research. This remains the baseline reference.
- **EFSA (European Food Safety Authority) scientific opinions on microplastics** — reviewed the evidence on dietary exposure and reached similar conclusions to the WHO: concern warranted, definitive risk not established.
- **Systematic reviews on microplastics and health effects** — search PubMed for recent systematic reviews (post-2022). The field is evolving rapidly, and newer reviews may update the picture. As of the most recent major reviews, the conclusion remains: evidence of harm in lab conditions, insufficient evidence of harm at real-world exposure levels.
- **Key laboratory studies** showing cellular effects are frequently cited by campaigners but are typically conducted at concentrations 100–1,000 times higher than environmental exposure levels. The extrapolation from lab to real-world risk is the central scientific uncertainty.

**Reporting Pitfalls**

- **Do not say "science has shown microplastics cause cancer."** The council member's claim conflates laboratory findings (cellular damage at high concentrations) with human health outcomes (cancer). No epidemiological study has demonstrated this. Report the council member's claim and note that it goes beyond what the evidence currently supports.
- **Do not create false equivalence between "no proven risk" and "proven safe."** The absence of definitive evidence of harm is not the same as proof of safety. The WHO report explicitly noted data gaps. Accurate framing: "Current evidence does not establish a health risk at typical exposure levels, but significant gaps in knowledge remain."
- **Be careful with the word "toxin."** Microplastics are physical particles, not toxins. The chemicals associated with them (phthalates, BPA) are potential toxicants, but calling microplastics "toxic" is imprecise and more alarming than the evidence warrants.

## Known Limitations
- Claude's knowledge of scientific consensus is based on training data and may not reflect the very latest publications or institutional statements. In rapidly evolving fields like microplastics research, the consensus may have shifted. The journalist should check for institutional updates published after Claude's training cutoff.
- Consensus assessments are inherently judgments, not facts. Reasonable scientists may classify the same body of evidence differently. This skill provides a structured framework for the assessment, but the journalist should verify the classification against the most recent institutional positions.
- For highly politicised scientific topics (climate change, vaccine safety, GMO risks), the distinction between scientific consensus and public debate is particularly important. This skill assesses the scientific evidence, not the political or social controversy.

## Related Skills
- [scientific-paper-summarizer](./scientific-paper-summarizer.md) — summarise individual papers cited in the consensus assessment
- [study-methodology-evaluator](./study-methodology-evaluator.md) — evaluate the methodology of key studies
- [jargon-translator](./jargon-translator.md) — translate technical terms from the scientific literature
- [claim-origin-tracer](../fact-checking/claim-origin-tracer.md) — trace the origin of specific claims made about the science

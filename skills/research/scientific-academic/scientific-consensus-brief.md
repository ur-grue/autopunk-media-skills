---
name: scientific-consensus-brief
status: beta
category: research
subcategory: scientific-academic
version: 1.0
eval_score: null
tags: [science, consensus, research, background, fact-checking, journalism]
---

# Scientific Consensus Brief

## What This Skill Does
Produces a structured, journalist-ready summary of where the mainstream scientific community currently stands on a specific question — distinguishing settled consensus from active debate, and flagging where minority or fringe positions exist.

## When To Use This Skill
- You are assigned a story on a scientific topic and need a reliable starting-point brief before interviewing experts
- A source is making a claim about a scientific topic and you need to know whether it is in line with mainstream science or contested
- You need a "state of the science" paragraph to anchor a feature, explainer, or fact-check
- You are preparing for an interview with a scientist and want to understand the current state of evidence before you walk in
- An editor asks you to check whether a claim is "scientific consensus" or just "one study"

## What You Need To Provide
**Required:** The specific scientific question or claim you need a consensus brief on — as precisely as you can state it (e.g., "Does regular moderate alcohol consumption reduce cardiovascular risk?" rather than just "alcohol and health").
**Optional:** The angle of your story, so Claude can tailor emphasis; any specific claims a source has made that you want cross-referenced; the deadline or format (quick paragraph vs. full briefing note); any scientific fields you already know are relevant.

## How Claude Approaches This
1. Identifies the precise scientific question being asked and, where needed, breaks it into sub-questions that the evidence addresses separately (e.g., "X causes Y" may be settled while "X causes Y at dose Z" remains debated).
2. Summarises the weight of mainstream scientific and medical consensus — what the dominant position is, how strong the evidence base is, and which major scientific or public-health bodies have stated positions.
3. Identifies where genuine scientific debate exists, what the main points of disagreement are, and whether dissenting views are minority-within-mainstream or fringe positions outside accepted scientific discourse — making this distinction explicit so the journalist can represent it fairly.

## Output Format
A structured briefing note with four labelled sections:

**The Question** — restates the specific question being answered, so the journalist can verify alignment.

**Current Consensus** — two to four sentences on what the weight of mainstream scientific evidence says. Includes the strength of the consensus (e.g., "strongly established," "emerging," "subject to ongoing revision") and names the types of evidence it rests on (randomised trials, epidemiological studies, meta-analyses, etc.) without going into technical detail.

**Where Debate Exists** — honest account of what is genuinely contested among credentialed researchers, and why. Written so a journalist can fairly represent both the consensus and the genuine disagreements. If there is no meaningful debate among experts, this section says so explicitly.

**What This Means for Your Story** — two to three sentences of practical guidance: what the journalist can state confidently, what requires qualification, and what should prompt them to seek additional expert comment before publishing.

Length: 250–400 words. Tone: authoritative, neutral, non-alarmist — the voice of a trusted science editor briefing a colleague.

## Quality Criteria
- [ ] The consensus position is accurately described and not overstated or understated
- [ ] Genuine scientific debate is distinguished from fringe or industry-funded dissent
- [ ] The brief does not take a political or advocacy position — it reports the state of evidence
- [ ] Strength-of-evidence language is used precisely (e.g., "the evidence strongly supports" vs. "early research suggests")
- [ ] The journalist-facing guidance section gives actionable, specific advice rather than generic cautions
- [ ] The brief acknowledges the limits of Claude's knowledge, particularly on rapidly evolving topics

## Example

### Input
**Question:** Does long-term exposure to particulate air pollution (PM2.5) cause cardiovascular disease, or is the relationship only correlational?

**Context:** Writing a feature on urban air quality policy. A city official quoted in my draft says the link between air pollution and heart disease is "not proven." I need to know if this is accurate.

### Output

**The Question**
Does long-term exposure to fine particulate matter (PM2.5) cause cardiovascular disease, or is the observed association merely correlational?

**Current Consensus**
The mainstream scientific and public-health consensus is that long-term exposure to PM2.5 causes cardiovascular disease — this is not a correlational finding still awaiting proof. The evidence base includes large-scale epidemiological studies across multiple continents, biological research identifying the mechanisms by which particles enter the bloodstream and trigger inflammation, and natural experiments (such as changes in air quality following factory closures or policy interventions) that show cardiovascular health improvements when pollution drops. Major bodies including the World Health Organization, the American Heart Association, and the European Environment Agency all describe the causal relationship as established. PM2.5 is estimated to contribute to millions of premature deaths from heart attack and stroke annually. This is one of the more strongly evidenced links in environmental health research.

**Where Debate Exists**
Active scientific debate centres on specifics, not the fundamental causal question. Researchers continue to investigate what concentration thresholds cause measurable harm (and whether a safe level exists), whether some population groups are disproportionately vulnerable, and the relative contributions of different pollution sources. There is also methodological debate about how to isolate the effect of PM2.5 from other co-occurring environmental and socioeconomic factors in epidemiological studies. None of this debate contests the underlying causal relationship.

**What This Means for Your Story**
You can state confidently that the scientific consensus holds PM2.5 exposure to be a cause of cardiovascular disease, not merely a correlate. The city official's framing — "not proven" — does not reflect the current mainstream scientific position and should be challenged or contextualised in your story. It would be accurate to note that researchers continue to refine understanding of dose thresholds and mechanisms, but this nuance should not be used to imply the fundamental causal link is in doubt. Consider seeking comment from an independent cardiologist or environmental health researcher who can speak to the consensus directly.

## Known Limitations
- Claude's training data has a knowledge cutoff, meaning very recent studies, updated guidelines, or newly emerging consensus shifts may not be reflected. Always verify the current position of relevant scientific bodies before publication.
- On politically contested topics (e.g., some nutrition research, emerging environmental health questions), Claude may have been exposed to conflicting or ideologically shaped summaries in its training data. Independent expert review is essential for high-stakes stories.
- This skill describes consensus — it does not evaluate the quality of individual studies. A consensus can exist even when underlying research has methodological limitations.
- Some scientific fields have active, legitimate internal debates where there is genuinely no single consensus position; Claude will flag this, but the journalist should verify with multiple domain experts rather than relying on a single brief.
- This skill is a starting point for research, not a substitute for expert interviews or primary source review.

## Related Skills
- [science-jargon-explainer](./science-jargon-explainer.md)
- [claim-verification-checklist](../../magazine-journalism/fact-checking/claim-verification-checklist.md)

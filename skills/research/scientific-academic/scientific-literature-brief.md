---
name: scientific-literature-brief
status: beta
category: research
subcategory: scientific-academic
version: 1.0
eval_score: null
tags: [research, science, literature-review, briefing, journalism]
---

# Scientific Literature Brief

## What This Skill Does
Produces a structured, plain-language briefing on the state of scientific research for a given topic — summarising what is established, what is contested, and what remains unknown.

## When To Use This Skill
- You are assigned a science story and need to understand the research landscape before interviewing experts
- You need to brief an editor or commissioning producer on where the science currently stands
- You want to fact-check a claim against the weight of published evidence
- You are preparing questions for an interview and need to know what the field agrees on vs. what is disputed

## What You Need To Provide
**Required:** The specific topic or question you are researching (e.g. "the health effects of ultra-processed foods", "microplastics in human blood", "long COVID cognitive symptoms").

**Optional:**
- The intended publication angle (e.g. "investigating whether government guidelines reflect the evidence")
- Your target audience (general public, specialist readers, broadcast)
- Any specific claims or findings you have already encountered and want contextualised
- Whether you need the brief to cover a specific time window (e.g. research from the last five years only)

## How Claude Approaches This
1. **Frames the field** — Identifies what branch of science the topic falls under, who the key research communities are, and what the central questions are that researchers are trying to answer.
2. **Establishes the consensus** — Summarises findings that are broadly agreed upon across multiple studies, distinguishing between well-replicated results and single-study claims.
3. **Maps the contested territory** — Identifies areas of genuine scientific disagreement, explains what the competing positions are and why they differ (different methodologies, population groups, funding sources, etc.).
4. **Flags what is unknown** — Notes where evidence is absent, preliminary, or actively being gathered, and explains why gaps exist.
5. **Surfaces reporting caveats** — Highlights where the science is routinely misreported and what nuances a journalist should be careful not to flatten.

## Output Format
600–900 words. Structured with four labelled sections: **What We Know**, **What Is Disputed**, **What We Don't Know Yet**, and **Reporting Watch-outs**. Plain English throughout — no jargon without explanation. Written for an intelligent non-specialist. Formal but accessible register. No citations in the body text; sources described by type (e.g. "a large longitudinal cohort study", "a meta-analysis of 40 trials") rather than by author or institution.

## Quality Criteria
- [ ] Distinguishes clearly between established consensus and contested findings — does not treat all research as equally settled
- [ ] Explains scientific disagreements in terms a journalist can relay to a general audience
- [ ] Flags at least one way the topic is commonly misreported or oversimplified
- [ ] Uses no unexplained jargon
- [ ] "What We Don't Know Yet" section reflects genuine gaps, not vague hedging

## Example

### Input
Topic: the relationship between sleep duration and cardiovascular disease risk.

Angle: investigating whether recent public health advice to "get eight hours" is backed by solid evidence, or whether it is more complicated than the messaging suggests.

Audience: readers of a national health supplement.

---

### Output

**Scientific Literature Brief: Sleep Duration and Cardiovascular Disease Risk**

---

**What We Know**

A substantial body of research links both short sleep (typically defined as fewer than six hours per night) and long sleep (more than nine hours) with elevated risk of cardiovascular disease, including heart attack, stroke, and heart failure. This U-shaped relationship — where both extremes are associated with worse outcomes than the middle — has been replicated across dozens of studies, including large population surveys tracking hundreds of thousands of people over years.

Short sleep, in particular, is associated with measurable biological changes: elevated blood pressure, higher levels of inflammatory markers, and disrupted regulation of blood sugar. These mechanisms are reasonably well-understood and give researchers confidence that the sleep-heart link is not simply a statistical artefact.

The headline figure of "seven to eight hours" as a target for most adults reflects this research and is a reasonable summary of where population-level data points.

---

**What Is Disputed**

The relationship is considerably more complicated than a single number suggests, and researchers actively disagree on several fronts.

*Does sleep duration cause cardiovascular problems, or are both caused by something else?* Many of the studies are observational — they track people's habits over time but cannot prove that short sleep directly causes heart disease. Underlying conditions such as sleep apnoea, chronic stress, depression, or shift work may independently drive both poor sleep and cardiovascular risk, making it difficult to isolate sleep itself as the cause.

*Is eight hours right for everyone?* There is growing evidence that sleep need varies meaningfully by genetics, age, and sex. Some researchers argue that a population-level recommendation papers over genuine individual variation and may lead people with naturally shorter sleep patterns to misinterpret their situation as a health risk.

*What about long sleep?* The association between sleeping nine or more hours and poor cardiovascular outcomes is well-documented, but its interpretation is contested. Many researchers believe long sleep is largely a symptom of underlying illness rather than a cause — people who are already unwell tend to sleep more. This makes it harder to treat long sleep as an independent risk factor in the same way as short sleep.

---

**What We Don't Know Yet**

It remains unclear whether deliberately extending sleep — through behaviour change or intervention — actually reduces cardiovascular risk in people who currently sleep less than six hours. Most studies measure sleep as it naturally occurs; few have tested whether improving sleep quality or duration produces measurable heart health benefits over time.

The role of sleep quality versus sleep quantity is also under-researched. Two people who both report seven hours may have very different biological outcomes depending on how fragmented or restorative that sleep is — but large studies have historically measured duration because it is easy to self-report, not because it is the most meaningful metric.

---

**Reporting Watch-outs**

The "eight hours" figure is widely cited but is a population average, not a prescription. Stories that present it as a universal target risk alarming readers whose natural sleep pattern is shorter, and may give false reassurance to people who hit the number but sleep poorly.

Distinguish between association and causation in any findings you quote. Most cardiovascular sleep research cannot establish direct causation, and headline writers frequently overstate this.

Be alert to studies funded by sleep technology companies or wellness product manufacturers — this sector has commercial interests in amplifying sleep anxiety. Check funding disclosures before citing industry-adjacent research.

---

## Known Limitations
- Claude does not have access to real-time databases such as PubMed and cannot retrieve, verify, or cite specific published papers. The brief reflects general patterns in established research, not a live literature search. For a story involving specific contested findings, consult a medical librarian or subject expert.
- Topics at the frontier of research (very recent findings, pre-print studies, emerging fields) may not be well-represented in Claude's training knowledge. Treat any brief on rapidly evolving topics as a starting point, not a final reference.
- Claude cannot assess the quality of individual studies it has not read. Descriptions of study types are general indicators, not quality guarantees.

## Related Skills
- [study-methodology-evaluator](study-methodology-evaluator.md)
- [paper-summary-writer](paper-summary-writer.md)
- [fact-check-prompt](../../magazine-journalism/fact-checking/fact-check-prompt.md)

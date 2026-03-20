---
name: historical-precedent-finder
status: stable
category: research
subcategory: background
version: 1.0
eval_score: 4.56
tags: [research, history, precedent, context, analysis, background]
---

# Historical Precedent Finder

## What This Skill Does
Identifies historical precedents relevant to a current news event or policy debate, provides a structured comparison showing why each precedent is or is not analogous, and lists the sources a journalist should consult to verify and deepen each comparison.

## When To Use This Skill
- You are covering a current event and want to provide historical context without resorting to lazy or misleading analogies
- An editor or source has cited a historical comparison and you need to evaluate whether it holds up
- You are writing a feature or analysis piece and need to ground the current situation in verified historical parallels
- You want to challenge a dominant narrative by showing that the obvious historical analogy is flawed and a better one exists

## What You Need To Provide
**Required:** A clear description of the current event, policy, or situation you need precedents for — including the specific aspect you want to compare (e.g., "the economic impact of a rapid technology transition," not just "AI").

**Optional:** Any historical precedents already being cited in media coverage (helps Claude assess their accuracy and offer alternatives); the time period or geography you want precedents from; the audience (general reader, specialist, editorial team); whether you want analogies that support or challenge the dominant narrative.

## How Claude Approaches This
1. **Identifies the structural features of the current situation.** Before searching for precedents, defines the 3–5 structural characteristics that any relevant precedent must share — e.g., "a rapid shift in a major industry driven by technology, affecting a large workforce, with government intervention debated." This prevents superficial comparisons based on surface similarity.

2. **Proposes 2–4 historical precedents.** For each, provides a concise description (what happened, when, where) and explains specifically which structural features it shares with the current situation and which it does not. Precedents are selected for analytical value, not just familiarity.

3. **Assesses the strength of each analogy.** Rates each precedent as strong, partial, or weak analogy and explains the reasoning. Highlights the specific ways in which the precedent breaks down — the differences are often more informative than the similarities.

4. **Lists the sources to consult.** For each precedent, names the specific historical sources, academic works, archives, and data sets the journalist should consult to verify the comparison and extract usable details for reporting.

5. **Warns against misleading analogies.** If a commonly cited precedent is a poor fit for the current situation, explains specifically why — and suggests what the popular comparison gets wrong.

## Output Format
700–1,000 words. Two main sections: **Precedents** (2–4 precedents, each with description, shared features, differences, analogy strength, and sources to consult) and **Misleading Analogies** (1–2 commonly cited comparisons that do not hold up, with explanation). Tone: analytical, measured, written for a journalist who wants to use historical context responsibly. No sensationalism or forced dramatic parallels.

## Quality Criteria
- [ ] Structural features of the current situation are defined before precedents are proposed — comparisons are not superficial
- [ ] Each precedent includes both similarities and differences — not just a list of "this is like that"
- [ ] Analogy strength assessments are honest — weak analogies are acknowledged, not inflated
- [ ] Sources for each precedent are specific enough to locate (named books, archives, data sets)
- [ ] Misleading analogies section is included and explains why popular comparisons fail
- [ ] Precedents are selected for analytical insight, not just name recognition
- [ ] Output does not imply that history predicts the future — it clarifies the comparison without overstating it

## Example

### Input
**Current situation:** A national government is considering a large-scale programme to retrain workers displaced by automation in the logistics and warehousing sector. The programme would be funded by a levy on companies deploying automated systems.
**Aspect to compare:** The design and effectiveness of government-funded retraining programmes for workers displaced by technology at scale
**Precedents already in media:** "This is like the coal miners in the 1980s" (frequently cited); "This is like the Luddites" (occasionally cited)
**Audience:** General news readership

### Output

**Structural Features of the Current Situation**

Before identifying precedents, the key structural characteristics are:
- A specific sector (logistics/warehousing) facing rapid automation, not a general economic shift
- A large, geographically dispersed workforce with predominantly non-degree-level qualifications
- Government intervention at the design stage, before mass displacement has occurred
- Funding mechanism linked to the companies causing the displacement (automation levy)
- The retraining must lead to alternative employment in a labour market that is itself changing

**Precedents**

*1. Trade Adjustment Assistance (TAA) programmes — United States, 1962–present*

Description: The US government created TAA to retrain and support workers who lost jobs due to increased foreign trade, particularly after trade liberalisation agreements. The programme has been expanded and reformed multiple times over six decades.

Shared features: Government-funded retraining for workers displaced by an economic structural shift; targeted at specific sectors and communities; intended to ease the political and social costs of a policy the government was simultaneously pursuing.

Differences: TAA was reactive (workers had already lost jobs), not proactive. Funding came from general revenue, not from an industry levy. The displacement was caused by trade, not technology — the retraining challenge is different because trade-displaced workers often had transferable manufacturing skills, while automation-displaced warehouse workers may face a more fundamental skills gap.

Analogy strength: **Partial.** The programme design lessons are highly relevant — decades of evaluation data show what works and what does not in large-scale retraining. But the proactive framing and industry-levy funding mechanism have no direct parallel in TAA.

Sources to consult: Congressional Research Service reports on TAA effectiveness; academic evaluations by Hyman (2018) and Autor, Dorn, and Hanson (2013) on trade-displaced workers; Government Accountability Office audits of TAA outcomes.

*2. Regional development programmes in response to coal industry decline — United Kingdom, 1980s–2000s*

Description: After rapid coal mine closures in the 1980s, the UK government and EU structural funds invested in retraining and regional economic development for affected communities over two decades.

Shared features: A concentrated workforce in a specific sector facing elimination of their primary employment; government-funded retraining and economic diversification; affected communities were geographically concentrated and economically dependent on the industry.

Differences: Coal closures were driven by political decisions and market forces, not automation. The workforce was highly geographically concentrated (mining towns), whereas logistics workers are more geographically dispersed. The government that closed the mines had limited political incentive to fund generous retraining — the current scenario, where the government is designing the programme before displacement, suggests different political dynamics.

Analogy strength: **Partial.** The long-term outcomes are instructive — many former mining communities experienced decades of economic decline despite retraining investment, suggesting that retraining alone is insufficient without broader economic development. But the political context and geographic concentration make this analogy less direct than it appears.

Sources to consult: Beatty and Fothergill (2020) on long-term outcomes in former coalfield communities; National Audit Office reports on coalfield regeneration programmes; local authority data on employment and deprivation indices in former mining areas.

*3. Singapore's SkillsFuture programme — 2015–present*

Description: A national programme providing all adult citizens with credits for skills development, combined with sector-specific training partnerships between government and industry. Designed as a proactive response to anticipated automation and economic restructuring.

Shared features: Proactive government intervention before mass displacement; industry co-funding and co-design; focused on preparing a workforce for a changing economy rather than rescuing workers already displaced.

Differences: SkillsFuture is economy-wide, not sector-specific. Singapore's small geographic size, strong state capacity, and different labour market structure (heavy reliance on foreign workers in some sectors) make direct comparison difficult. The political and institutional context is fundamentally different from a large democratic country.

Analogy strength: **Strong for programme design, weak for political context.** The design principles — proactive timing, industry co-funding, individual training accounts — are directly relevant. But the implementation challenges will be vastly different in a larger, more politically fragmented country.

Sources to consult: Singapore Ministry of Education SkillsFuture evaluations; OECD (2020) reviews of Singapore's adult learning system; academic assessments of SkillsFuture uptake and outcomes by sector.

**Misleading Analogies**

*"This is like the coal miners in the 1980s"*
The surface similarity is compelling — workers in a specific sector losing jobs — but the analogy obscures more than it reveals. Coal closures were the result of political confrontation and market forces, not a gradual automation process. The government of the time had adversarial rather than supportive intentions toward the affected workforce. Most importantly, the current proposal is proactive (before displacement), while the coal response was reactive (after closures). Using the coal analogy risks implying that failure is inevitable, which is not supported by the structural comparison.

*"This is like the Luddites"*
This analogy is essentially useless for serious analysis. The Luddite movement was a labour protest against specific machinery in the early 19th-century textile industry. It tells us nothing about the design of government retraining programmes, the effectiveness of industry levies, or the labour market conditions facing modern warehouse workers. Citing the Luddites is a way of signalling familiarity with the concept of technology displacement, not a way of understanding it.

## Known Limitations
- Claude's historical knowledge is drawn from training data and is not exhaustive. Obscure or recent precedents may be missing. The journalist should verify the factual details of any precedent cited and consult the recommended sources for depth.
- Historical analogies are inherently imperfect. This skill is designed to highlight differences as much as similarities, but the journalist must exercise editorial judgment about which comparisons are illuminating and which are misleading in their specific reporting context.
- The skill cannot access recent academic publications, newly released government reports, or updated programme evaluations. Source recommendations may need supplementation with the most current research.

## Related Skills
- [debate-state-summary](./debate-state-summary.md) — summarise the current state of the debate the precedent informs
- [legislative-history-brief](./legislative-history-brief.md) — trace the legislative history of any policy cited as precedent
- [scientific-consensus-brief](../academic/scientific-consensus-brief.md) — assess the academic consensus on the effectiveness of interventions cited
- [jargon-translator](../academic/jargon-translator.md) — translate academic language in the source materials into plain English

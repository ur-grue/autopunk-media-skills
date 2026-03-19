---
name: meta-analysis-finder
status: beta
category: research
subcategory: scientific-academic
version: 1.0
eval_score: null
tags: [research, science, meta-analysis, systematic-review, evidence, health]
---

# Meta-Analysis Finder

## What This Skill Does
Explains what meta-analyses and systematic reviews are, how to locate them for a given topic, and how to read them critically — giving journalists a reliable route to the strongest available evidence without relying on individual studies.

## When To Use This Skill
- You are covering a health, science, or policy topic and want to know what the weight of evidence says, not just what one recent study found
- A source cites a meta-analysis in support of a claim and you want to understand how much weight to give it
- You need to explain to a reader or editor why a single study does not settle a question
- You are preparing interview questions for a researcher and want to understand the evidence base before you speak

## What You Need To Provide
**Required:** The topic or question you are investigating (e.g., "does intermittent fasting affect cardiovascular risk," "effectiveness of school-based mental health programmes," "air pollution and cognitive decline")
**Optional:** Any time period you want to focus on (e.g., last five years); whether you want population-level or clinical evidence; any specific population group (children, older adults, low-income settings)

## How Claude Approaches This
1. Explains what a meta-analysis and systematic review are in plain terms — the difference between the two, why they are generally considered stronger evidence than individual studies, and where they sit in the evidence hierarchy
2. Identifies the databases and search tools most likely to surface high-quality reviews on the topic (PubMed, Cochrane Library, Campbell Collaboration, or field-specific databases) and explains how to use them without academic library access
3. Describes the key features of a trustworthy meta-analysis — what to look for in the methods section, what heterogeneity means and why it matters, and red flags that suggest a review is low quality
4. Explains how to read the headline findings: what an odds ratio, risk ratio, or effect size means in practical terms, and how to translate statistical language into plain English for a general audience
5. Notes where the evidence on the specified topic is contested, thin, or dominated by industry-funded research — so the journalist can calibrate confidence in the findings

## Output Format
Two-part briefing, 450–650 words total. Part 1 — Orientation (150–200 words): what meta-analyses are and why they matter for this topic. Part 2 — How to find and read them (300–450 words): specific databases to search, search terms to use, what to look for when you open a review, and how to translate the findings. Plain language throughout; all statistical terms explained on first use. Written for a journalist, not a researcher.

## Quality Criteria
- [ ] The distinction between a meta-analysis and a systematic review is explained clearly in plain English
- [ ] At least two specific databases or search tools are named with brief guidance on how to access them without an institutional login
- [ ] At least one statistical concept (effect size, confidence interval, or heterogeneity) is explained in terms of what it means for a real-world story
- [ ] The output flags at least one honest limitation of meta-analyses as a source type — they are not infallible
- [ ] Language requires no prior knowledge of statistics or academic publishing

## Example

### Input
Topic: social media use and adolescent mental health
I keep seeing studies pointing in different directions. Is there a stronger type of evidence I should be looking for? How do I find it and know if it's reliable?

### Output

**Meta-Analysis Finder: Social Media Use and Adolescent Mental Health**

**Part 1 — Why This Matters**

When individual studies contradict each other — which happens constantly in this field — the most useful evidence comes from a meta-analysis or systematic review. Here is the difference:

A **systematic review** collects and summarises every published study on a question, following a documented methodology so others can check the work. A **meta-analysis** goes further: it pools the data from multiple studies and runs a combined statistical analysis, producing a single estimate of the effect.

Think of it this way: one study of 200 teenagers in one country is interesting but limited. A meta-analysis drawing on 40 studies across 12 countries and 80,000 participants is substantially more reliable — not infallible, but much harder to dismiss. For social media and mental health, this matters because the field has been noisy and contested, and meta-analyses help separate the signal from the noise.

**Part 2 — How to Find and Read Them**

**Where to search**

Start with two free resources:

- **PubMed** (pubmed.ncbi.nlm.nih.gov): The main index for biomedical and psychological research. Search your topic plus the words *meta-analysis* or *systematic review* — for example: `social media adolescents depression systematic review`. Filter by publication date to find recent reviews (last five years).
- **Cochrane Library** (cochranelibrary.com): Publishes some of the most rigorously conducted systematic reviews in health. Not all topics are covered, but if a Cochrane review exists on your question, treat it as a primary reference.

For this topic specifically, also try **PsycINFO** through your local library — it indexes psychology journals that PubMed sometimes misses.

**What to look for when you open a review**

Three things tell you quickly whether a meta-analysis is worth relying on:

1. **A registered protocol**: Trustworthy reviews pre-register their methods before they start, usually on PROSPERO (a public registry). If the review mentions a PROSPERO registration number, that is a positive sign.
2. **Heterogeneity reporting**: This is the technical term for how much the individual studies differ from each other. High heterogeneity (often reported as a statistic called I²) means the studies are measuring different things, and the pooled result is less meaningful. If the authors acknowledge high heterogeneity and discuss why, they are being honest. If they ignore it, be cautious.
3. **Funding disclosure**: Note who paid for the research. Industry funding does not automatically invalidate a review, but it is information your readers deserve.

**Translating the findings**

Meta-analyses often report results as an **effect size** — a number that describes how strong a relationship is, not just whether it exists. A small effect size (roughly 0.2 or below in most scales) means the relationship is real but modest; a large effect size (above 0.8) suggests a strong association. For social media and mental health, most meta-analyses to date have found small-to-moderate effect sizes — meaning the association is real but explains only a fraction of variation in mental health outcomes. That is a more honest story than "social media causes depression."

**A word of caution**

Meta-analyses are not the final word. If the underlying studies all have the same design flaw — relying on self-reported screen time, for instance — pooling them amplifies the flaw as well as the signal. Always check what kind of studies went in. A meta-analysis of weak studies is still weak.

---

## Known Limitations
- Claude cannot search live databases on your behalf — this skill explains how to search, not what the current results are. You will need to run the searches yourself.
- Meta-analyses take years to complete; the most current evidence on a fast-moving topic may still exist only in individual studies. Check publication dates carefully.
- For some topics, especially emerging or niche areas, no high-quality meta-analyses exist yet. Claude will flag this, but if the field is genuinely thin, there is no substitute for speaking directly with researchers.

## Related Skills
- [scientific-literature-brief](./scientific-literature-brief.md)
- [study-methodology-evaluator](./study-methodology-evaluator.md)
- [scientific-consensus-brief](./scientific-consensus-brief.md)
- [journal-landscape-guide](./journal-landscape-guide.md)

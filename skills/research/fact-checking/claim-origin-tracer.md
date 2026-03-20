---
name: claim-origin-tracer
status: stable
category: research
subcategory: fact-checking
version: 1.0
eval_score: 4.5
tags: [research, fact-checking, claims, misinformation, sourcing, verification]
---

# Claim Origin Tracer

## What This Skill Does
Produces a structured research plan for tracing a widely circulated claim back to its original source — mapping the citation chain, identifying where distortion may have occurred, and listing the databases and techniques needed to find the primary source and assess its reliability.

## When To Use This Skill
- A statistic, quote, or factual claim is circulating in media or public discourse and you need to verify where it originally came from
- You suspect a claim has been distorted, taken out of context, or fabricated as it passed through multiple sources
- You are fact-checking an article, speech, or press release and need to trace a specific assertion to its primary source
- You are investigating the spread of misinformation on a specific topic and need a systematic method for source-tracing

## What You Need To Provide
**Required:** The specific claim you want to trace (quote it as precisely as possible); where you encountered it (which publication, speech, social media post, or broadcast).

**Optional:** Any attribution already given (e.g., "according to a study by..." or "experts say..."); the topic area (helps identify which databases to search); how widely the claim has spread (one article vs. viral across media); whether you suspect the claim is accurate, distorted, or fabricated.

## How Claude Approaches This
1. **Deconstructs the claim.** Breaks the claim into its verifiable components — the specific figure, the attribution, the date, and the context. Identifies which elements can be independently verified and which are editorial framing.

2. **Maps the citation chain backwards.** Starting from where the journalist encountered the claim, creates a step-by-step process for tracing it back through each layer of citation — from the article citing a report, to the report citing a study, to the study citing primary data. Each step identifies the specific source to locate and the question to answer.

3. **Identifies the likely primary source categories.** Based on the claim type (statistical, scientific, legal, historical, attributed quote), lists the specific databases and archives where the original source is most likely to exist — academic databases, government statistical agencies, court records, parliamentary archives, or press archives.

4. **Provides distortion detection techniques.** Lists the specific ways claims commonly mutate as they pass through the citation chain — rounding of numbers, dropping of caveats, conflation of correlation and causation, decontextualisation of quotes, and attribution drift (where a claim is attributed to progressively more authoritative sources). For each, describes how to detect it.

5. **Recommends verification steps.** Once the primary source is located, lists the steps to verify it — checking the methodology, confirming the data, verifying the quote in full context, and assessing the credibility of the original source.

## Output Format
600–900 words. Four sections: **Claim Deconstruction** (the claim broken into verifiable components), **Citation Chain Trace** (step-by-step process for tracing back to the primary source), **Distortion Detection** (specific mutations to look for at each step), and **Verification Steps** (what to do once the primary source is found). Tone: methodical, forensic, neutral. The plan does not assume the claim is true or false — it provides the method for finding out.

## Quality Criteria
- [ ] Claim is deconstructed into genuinely verifiable components — not just restated
- [ ] Citation chain trace provides a clear, executable sequence of research steps
- [ ] Primary source databases are specific and real — not generic references to "check online"
- [ ] Distortion detection techniques are specific to the claim type, not a generic list of logical fallacies
- [ ] Verification steps are practical and prioritised — the most important check comes first
- [ ] The plan maintains neutrality — does not assume the claim is true or false before investigation
- [ ] Output is usable by a fact-checker or journalist with no additional briefing

## Example

### Input
**Claim:** "Studies show that remote workers are 47% more productive than office-based workers"
**Encountered in:** A LinkedIn post by a business consultant, shared widely and cited in several online articles about workplace policy
**Attribution given:** "According to Stanford research"
**Topic area:** Workplace productivity and remote work
**Spread:** The "47%" figure appears in dozens of articles and social media posts

### Output

**Claim Deconstruction**

| Component | Verifiable? | Key Question |
|-----------|------------|--------------|
| "47%" — specific productivity increase | Yes | Does this exact figure appear in any published study? |
| "more productive" — productivity metric | Partially | What was actually measured — output per hour, revenue, self-reported productivity, manager ratings? |
| "remote workers" — population | Partially | Who was studied — all remote workers, a specific company, a specific sector? |
| "Stanford research" — attribution | Yes | Did Stanford publish a study with this finding? Which researcher, which year, which publication? |
| "studies show" (plural) — implied consensus | Questionable | Does more than one study support this figure, or is this a single study being pluralised? |

**Citation Chain Trace**

1. **Start with the LinkedIn post.** Does the post link to a specific article, study, or report? If so, go to that source. If not, the citation chain may already be broken at the first link.

2. **Search for the "47%" figure in combination with "Stanford" and "remote work."** Use Google Scholar, Google News, and a general web search. The goal is to find the earliest article or publication that cites this specific number with this attribution.

3. **Identify the Stanford study.** The most widely cited Stanford research on remote work productivity is a 2013 study by Nicholas Bloom and colleagues, published in the *Quarterly Journal of Economics*. Locate the actual paper: Bloom, N., Liang, J., Roberts, J., & Ying, Z.J. (2015). "Does Working from Home Work? Evidence from a Chinese Experiment." Search Google Scholar for this title and read the abstract and results section.

4. **Check whether the paper reports a "47%" figure.** Read the study's actual findings. Note the exact metric used, the population studied, the conditions, and the caveats. The Bloom et al. study reported a 13% performance increase among call centre employees at a single Chinese company — not 47% across all remote workers. If the "47%" does not appear in this study, the figure has been fabricated or conflated from another source.

5. **Search for alternative sources of "47%."** If the Bloom study does not contain this figure, search specifically for "47%" + "productivity" + "remote" across academic databases (Google Scholar, SSRN), consulting firm reports (McKinsey, Gallup, BCG), and technology company surveys (which sometimes produce productivity statistics based on their own platform data). The figure may come from a non-peer-reviewed survey, an internal company report, or a misreading of a different metric.

6. **Trace the mutation point.** Once the actual source is identified (or determined to be unfindable), compare the original finding with the claim as circulated. Identify exactly where the distortion occurred — was the number inflated, the population generalised, or the caveats dropped?

**Distortion Detection**

At each step in the citation chain, check for these specific mutations:

- **Number inflation or conflation.** The original study may report one number (e.g., 13%) while the circulating claim cites another (47%). Check whether figures from different studies have been combined, confused, or rounded in the wrong direction.
- **Population generalisation.** The original study may have examined a specific group (call centre workers at one company) while the claim generalises to "remote workers" as a category. This is the most common distortion in productivity research.
- **Metric substitution.** "Productivity" can mean many things — output per hour, revenue per employee, self-reported satisfaction, hours logged. The circulating claim may use "productivity" while the original study measured something different.
- **Caveat stripping.** The original study almost certainly included limitations and conditions. Check whether these were dropped as the claim spread — e.g., the study may have found productivity gains only for certain task types, only in the short term, or only for self-selected participants.
- **Attribution drift.** "A Stanford study" may have become "Stanford research" may have become "Stanford University concluded" — each step adding unearned institutional authority to a single researcher's findings.

**Verification Steps**

1. **Locate and read the actual primary source.** There is no substitute for reading the original paper or report. Check the methodology, sample size, limitations, and exact findings.
2. **Contact the original researcher.** If the claim is widely circulated with their name attached, the researcher likely has a view on whether it is being accurately represented. A brief email to the corresponding author often yields a clear correction.
3. **Check for replication or contradiction.** Search Google Scholar for papers that cite the original study — do subsequent studies support, refine, or contradict the finding? A single study is not "studies show."
4. **Check the study's funding and potential conflicts.** Was the research funded by a company or organisation with a stake in the outcome? This does not invalidate the findings but is essential context.

## Known Limitations
- Claude cannot search databases, access papers, or verify claims in real time. This skill produces the research plan and identifies likely sources — the journalist must execute the searches and read the actual documents. The value is in providing a systematic method rather than ad hoc googling.
- For claims that originated in non-English sources, social media, or ephemeral digital content (deleted posts, expired links), tracing the citation chain may be practically difficult even with the right method. The plan includes archival strategies but cannot guarantee that all sources are still accessible.
- Some claims are genuinely untraceable — they have been repeated so many times with no attribution that the original source is lost. The plan can identify this situation, but it cannot create a source where none exists.

## Related Skills
- [scientific-paper-summarizer](../academic/scientific-paper-summarizer.md) — summarise the primary source once located
- [study-methodology-evaluator](../academic/study-methodology-evaluator.md) — evaluate the methodology of the study behind the claim
- [legal-framework-brief](./legal-framework-brief.md) — understand the legal context if the claim involves legal assertions
- [scientific-consensus-brief](../academic/scientific-consensus-brief.md) — assess whether the claim reflects scientific consensus or a single study

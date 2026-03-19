---
name: claim-origin-tracer
status: beta
category: research
subcategory: facts-context
version: 1.0
eval_score: null
tags: [fact-checking, sourcing, origin-tracing, statistics, misinformation]
---

# Claim Origin Tracer

## What This Skill Does
Maps the likely provenance path of a widely circulated claim or statistic — identifying where it probably originated, how it may have mutated as it passed through media chains, and what questions to ask to locate the primary source.

## When To Use This Skill
- A statistic or claim is circulating widely but every source you find cites another outlet rather than an original study or dataset
- A source quotes a figure and attributes it vaguely ("studies show," "experts say," "it has been reported")
- You suspect a number has been stripped of important context as it was repeated across outlets
- You are writing a corrections piece or an explainer and need to trace how a misleading claim spread
- A press release, political speech, or social media post contains a striking fact you cannot find a primary source for

## What You Need To Provide
**Required:** The claim or statistic as it currently appears — the exact wording matters. Any attribution given, even vague attribution. The topic area.

**Optional:** Names of outlets or sources where you have already seen the claim repeated. The approximate timeframe when the claim began circulating (if known). Any partial sourcing you have already found.

## How Claude Approaches This
1. Identifies the structural type of the claim — is it a statistic, a historical assertion, an attributed quote, or a generalisation? — because each type has a distinct provenance trail.
2. Maps the most common transmission routes for claims of that type: think-tank report cited in a broadsheet, cited in a wire service, cited by everyone else; or academic study → press release → misrepresented in coverage.
3. Recommends a step-by-step search strategy: where to look first, what terms to search for, and how to recognise the primary source when you find it.
4. Flags the ways in which the claim may have changed during transmission — numbers rounded, qualifications removed, timeframes shifted, scope inflated — and suggests specific comparison questions to ask against the original.
5. Produces a provenance map: a structured summary of likely origin point, likely transmission path, and the questions that would confirm or refute the chain.

## Output Format
A structured brief of approximately 400–550 words. Three sections: Claim Type and Transmission Pattern, Search Strategy, and Provenance Questions. Written in plain editorial language. The search strategy uses numbered steps. The provenance questions are a short bulleted list — direct, specific, answerable by reading a primary source. Closes with a one-paragraph note on what a confirmed primary source should contain.

## Quality Criteria
- [ ] The claim type is identified and the typical provenance trail for that type is explained
- [ ] The search strategy recommends at least three specific, realistic steps — not generic advice like "search Google"
- [ ] At least two specific ways the claim may have mutated during transmission are named
- [ ] Provenance questions are answerable by reading the identified source type — not rhetorical
- [ ] Output does not assert a specific origin for the claim — it maps the investigation, not the conclusion

## Example

### Input
Claim: "Eighty percent of communication is non-verbal."
Attribution: Cited in a corporate training document as "research by communication scientists."
Topic: Preparing a media literacy piece on widely repeated but poorly sourced statistics.

### Output

**Claim Type and Transmission Pattern**

This is a percentage statistic attributed to academic research, with no specific study, author, or date given. This pattern is extremely common for claims that originated in academic literature and were subsequently cited in popular psychology books, then in training materials, and eventually lost their sourcing entirely.

The typical transmission chain for this category runs: academic study → popular science interpretation → self-help or management book → corporate training sector → general circulation with attribution removed. At each step, qualifications are usually dropped and the figure becomes more absolute.

In this specific case, the figure has a documented origin point in psychologist Albert Mehrabian's 1967 communication studies. However, Mehrabian's original findings applied only to the communication of feelings and attitudes in specific controlled conditions — not to communication generally. The "80 percent" or "93 percent" versions circulating in training materials represent a significant distortion of a narrowly scoped finding.

---

**Search Strategy**

1. Search Google Scholar for the exact percentage alongside terms like "nonverbal communication," "body language," and "Mehrabian." Look for papers that cite a 1967 or 1971 source.

2. Locate the original Mehrabian papers: "Decoding of Inconsistent Communications" (1967) and "Silent Messages" (1971). University library access or interlibrary loan may be needed. Read the methods section — pay close attention to the sample population and the specific experimental conditions.

3. Search for critical analyses: look for papers or journalism that specifically addresses the "Mehrabian myth." The phrase "Mehrabian misquotation" has been used in academic and media literacy literature and will surface corrective commentary.

4. Contact a university communications or psychology department for expert comment — a faculty member familiar with nonverbal communication research can confirm both the original scope and the nature of the distortion.

---

**Provenance Questions**

To confirm the primary source and assess how far the circulating version deviates from it, ask:

- What was the exact sample in Mehrabian's original study, and what were participants being asked to evaluate?
- Did the original finding apply to all communication contexts, or only to the communication of emotional states?
- At what point in the transmission chain was the "feelings and attitudes" qualifier dropped?
- Does the training document cite Mehrabian directly, or does it cite an intermediary source (a book, a previous training manual)?
- Is the figure 80 percent or 93 percent in the material you are reviewing — and does the variation suggest different intermediary sources?

---

**What a Confirmed Primary Source Should Contain**

The original academic paper should state the experimental conditions explicitly, identify the specific dependent variable being measured, and include confidence intervals or a clear scope limitation. Any circulating version that presents the finding as applying universally to all communication, without those qualifications, has deviated materially from the source. That deviation is the story.

## Known Limitations
- Claude cannot search live databases, archives, or the internet. The provenance map and search strategy are based on Claude's training knowledge, which has a cutoff date. For very recent claims (published in the last year or two), the transmission chain may not be fully captured.
- For claims that originated in grey literature (internal government reports, private research commissioned by corporations), the primary source may be unavailable publicly — this skill can identify that the gap exists but cannot bridge it.
- In some cases there is no single origin — a figure may be an aggregation or estimate constructed by a journalist or advocacy organisation. This skill helps surface that possibility but cannot determine it conclusively.

## Related Skills
- [claim-fact-checker](./claim-fact-checker.md)
- [source-cross-referencer](./source-cross-referencer.md)
- [statistics-verifier](./statistics-verifier.md)
- [document-authenticity-checker](./document-authenticity-checker.md)
- [claim-verification-checklist](../../magazine-journalism/fact-checking/claim-verification-checklist.md)

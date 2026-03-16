---
name: source-credibility-brief
status: stable
category: magazine-journalism
subcategory: fact-checking
version: 1.0
eval_score: 4.3
tags: [journalism, fact-checking, sources, credibility, verification]
---

# Source Credibility Brief

## What This Skill Does
Produces a structured credibility assessment of a source whose claims appear in a draft article, covering expertise, track record, potential conflicts of interest, and what corroboration is needed before publication.

## When To Use This Skill
- A source is making significant claims in a story and you want a systematic assessment before deciding how prominently to feature them
- An editor has questioned the weight given to a source and you need to document why you trust (or should qualify) their testimony
- A source is operating outside their primary area of expertise and you need to assess how much authority to give their statements
- You are deciding whether a claim can stand on a single source or requires corroboration

## What You Need To Provide
**Required:** The source's name, role or title, and the specific claims they are making in the article
**Optional:** The source's employer or institutional affiliation; any known background on the source (publications, testimony, prior interviews); how the claim was communicated (on-record interview, background, leaked document, official statement); the story context

## How Claude Approaches This
1. Assesses the source's expertise relative to the specific claims being made — distinguishing between claimed credentials and demonstrated expertise in the relevant domain
2. Reviews the source's track record for reliability: prior public statements, whether they have been cited accurately in other publications, and any history of retracted or corrected claims
3. Identifies potential conflicts of interest — financial, professional, personal, or ideological — that could affect the source's account
4. Recommends a corroboration threshold: whether the claim can be used on a single source, requires one additional corroboration, requires documentary evidence, or should not be published without independent verification

## Output Format
Structured brief, 350–500 words. Sections: Expertise Assessment, Track Record, Conflicts of Interest, Corroboration Recommendation. Closes with a one-sentence Editorial Verdict summarizing the overall weight the source's testimony should carry. Neutral, analytical register — no editorializing about the source's character.

## Quality Criteria
- [ ] Expertise assessment is specific to the claims being made, not to the source's general reputation
- [ ] Conflicts of interest are documented with factual basis, not assumed
- [ ] Corroboration recommendation is concrete and calibrated to the claim's potential impact
- [ ] Editorial verdict is appropriately nuanced — avoids binary "trust/don't trust" framing
- [ ] Brief distinguishes between what is known and what is unknown about the source

## Example

### Input
Source: Dr. Priya Anand, founding director of the Center for Digital Wellness, a nonprofit focused on reducing screen time in children
Claims in article: "Adolescents who use social media more than three hours per day show measurable cognitive decline in a range of executive function tests" and "Our research shows a 40 percent increase in anxiety diagnoses among heavy social media users compared to non-users"
Story context: Feature on social media regulation targeting minors

### Output

**Source Credibility Brief — Dr. Priya Anand, Center for Digital Wellness**

---

**Expertise Assessment**

Dr. Anand holds a PhD in developmental psychology and has published in peer-reviewed journals on adolescent media consumption. Her expertise is genuine in the domain of child development and screen behavior. However, the specific claims about "measurable cognitive decline" and "executive function tests" are neuropsychological claims — confirm whether her published research uses standardized neuropsychological assessment tools (e.g., NIH Toolbox, CANTAB) or self-report instruments. Self-report studies of screen time and self-report measures of cognitive function are methodologically weaker than objective testing; if Anand's research relies on both, the "measurable" characterization may overstate the certainty of her findings.

**Track Record**

Anand is cited frequently in technology and health reporting. In two prior articles (verify exact sources), her statistics have been reproduced accurately. Her organization's research is primarily funded by foundation grants, not industry, which reduces one common source of track-record concern. Her public commentary has been consistent with her published research, with no identified instances of her claims being corrected or retracted.

**Conflicts of Interest**

The Center for Digital Wellness has an institutional mission that aligns with the story's narrative — the organization was founded to advocate for reducing adolescent screen time. This is an advocacy position, not a neutral research position. Anand may be accurate and her research may be sound, but her institutional stance makes her a motivated expert, not a neutral one. The story should note the Center's advocacy mission. Check whether the Center receives any funding from organizations with commercial interests in digital wellness products (apps, monitoring software, parenting platforms), as that would compound the conflict.

**Corroboration Recommendation**

Both claims require corroboration before publication as standalone assertions.

- The cognitive decline claim should be corroborated by at least one peer-reviewed study from a research institution without an advocacy mission, ideally using objective cognitive testing rather than self-report.
- The 40 percent anxiety diagnosis figure is specific and quantitative. Obtain the original study (request it from Anand or find the publication), verify the sample size and methodology, and confirm whether "diagnosis" means a clinical diagnosis or a self-reported diagnosis on a screening questionnaire — the distinction is significant.

**Editorial Verdict**

Anand is a credible expert within her domain, but she is an advocate first and a researcher second; her specific quantitative claims should be independently verified before being presented as established findings rather than her organization's research conclusions.

## Known Limitations
- This brief assesses credibility based on the information provided by the user. It cannot search live databases, paywalled academic repositories, or non-public financial records.
- A source with no public footprint is not necessarily untrustworthy — the brief will simply note the absence of verifiable public information, which itself is relevant context.
- Credibility is claim-specific. A source who is highly credible on one topic may be outside their expertise on another. This brief is tied to the specific claims provided, not to the source's overall reputation.
- This tool is not a substitute for a media lawyer's assessment of whether a claim is safe to publish.

## Related Skills
- [claim-verification-checklist](./claim-verification-checklist.md)
- [statistics-fact-checker](./statistics-fact-checker.md)
- [source-research-brief](../investigation/source-research-brief.md)

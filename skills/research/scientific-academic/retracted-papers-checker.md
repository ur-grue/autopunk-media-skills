---
name: retracted-papers-checker
status: beta
category: research
subcategory: scientific-academic
version: 1.0
eval_score: null
tags: [fact-checking, retraction, research-integrity, science, verification]
---

# Retracted Papers Checker

## What This Skill Does
Produces a structured verification checklist for any scientific paper or research claim you plan to cite, covering every step a journalist should take to confirm the paper is valid, current, and not disputed or retracted.

## When To Use This Skill
- Before quoting or citing a specific study in a published piece
- When a source, press release, or public figure references a paper to support a claim
- When you are working quickly and need a systematic reminder of what to check so nothing slips through
- When a paper is older than five years and you want to confirm it has not been superseded or challenged

## What You Need To Provide
**Required:** The paper title, author names, and the journal it was published in. A publication year is strongly recommended.
**Optional:** The DOI (digital object identifier — the unique code usually printed at the top of a paper), any specific claims from the paper you plan to cite, and the context in which you encountered the paper (press release, social media, a researcher's recommendation).

## How Claude Approaches This
1. Reviews the paper details you have provided and identifies which aspects carry the highest verification risk — for example, papers in fields with known replication problems, papers that have attracted public controversy, or very old studies in fast-moving fields.
2. Generates a prioritised checklist of checks to run, with the exact database name or resource to use for each step and what you are looking for.
3. Adds a brief editorial note on common red flags specific to the paper's field or the type of claim being made.

**Important:** Claude cannot access live retraction databases, journal websites, or the internet. This skill gives you the right checklist and tells you exactly where to look — you carry out the checks yourself. This is by design: retraction databases update daily, and only a live search reflects the current status of a paper.

## Output Format
A numbered checklist of five to eight steps. Each step includes:
- The name of the specific database or resource to check
- The URL or access method
- Exactly what to search for
- What a passing result looks like versus a warning sign

Followed by a short "Red flags to watch for" section (three to five bullet points) tailored to the paper's subject area.

Total length: 300–500 words. Plain language throughout — no assumption that the journalist has used academic databases before.

## Quality Criteria
- [ ] Every checklist item names a specific, real resource — no vague instructions like "check the journal website"
- [ ] The checklist covers retraction, correction, expression of concern, and contested findings as separate categories
- [ ] At least one field-specific red flag is included based on the paper's subject area
- [ ] The output explains what to do if a step requires institutional access the journalist may not have
- [ ] No implication that Claude has verified the paper itself — the journalist is clearly positioned as the person doing the checking

## Example

### Input
**Paper title:** "Dietary flavonoid intake and risk of type 2 diabetes: a prospective cohort study"
**Authors:** M. Hartley, S. Okonkwo, L. Ferreira
**Journal:** Journal of Nutritional Epidemiology
**Year:** 2019
**Claim I plan to cite:** "Eating flavonoid-rich foods daily reduces the risk of developing type 2 diabetes by 18%."

### Output

**Verification checklist for: "Dietary flavonoid intake and risk of type 2 diabetes" (Hartley et al., 2019)**

1. **Check for retraction — Retraction Watch Database**
   Go to retractionwatch.com and search the paper title or lead author name. This is the most comprehensive public database of retracted papers across all fields. A result here means the paper has been formally retracted; note the stated reason (data fabrication, ethical violation, honest error). If the paper does not appear, that is a good sign — but retraction Watch does not index every journal, so this is not a final clearance.

2. **Check the journal's official record — PubMed or the journal website directly**
   Search PubMed (pubmed.ncbi.nlm.nih.gov) for the paper title. Look at the record for any tags reading "Retracted Publication," "Erratum," or "Expression of Concern." These appear even when the paper is not fully retracted but has known problems. If you cannot access the journal website directly, the PubMed record will show any formal notices the journal has issued.

3. **Check for a correction or erratum**
   A retraction is the most serious outcome, but corrections matter too — especially if the corrected figure changes the claim you plan to cite. On the journal's article page, look for a linked "Correction" or "Erratum" notice. For a 2019 paper, it is worth checking whether the 18% figure appeared in the original or was revised in a subsequent correction.

4. **Check whether the finding has been replicated or challenged**
   Search Google Scholar (scholar.google.com) for papers that cite this study, and look specifically for systematic reviews or meta-analyses on dietary flavonoids and diabetes published after 2019. Nutritional epidemiology is a field with known replication challenges — an isolated cohort study finding that has not been confirmed in subsequent research should be cited with appropriate caution.

5. **Check the authors' conflict of interest declaration**
   Return to the paper's full text (via PubMed or the journal) and locate the conflict of interest or funding disclosure section. Industry funding from food or supplement manufacturers does not invalidate a study, but it should be disclosed in your story if you quote the finding.

6. **If you hit a paywall**
   Try searching the paper title on Unpaywall (unpaywall.org) for a legal open-access version. Your organisation's library may also be able to retrieve it. Do not rely on the abstract alone if you plan to cite a specific figure — the methodology section is where the 18% figure would be explained and qualified.

**Red flags to watch for in nutritional epidemiology studies:**
- Effect sizes claimed as percentage reductions (like 18%) from observational data — these show association, not causation, and should not be reported as proof that eating flavonoids prevents diabetes
- Very large claimed effects in a single cohort study that have not been replicated
- Self-reported dietary intake as the only measurement method (common in this field; limits precision)
- Press releases or news articles that describe the finding more strongly than the paper's own conclusions do

## Known Limitations
- Claude cannot run live database searches — you must perform every step on the checklist yourself. This is non-negotiable: retraction status changes, and only a live check is reliable.
- Not all retractions are indexed in publicly accessible databases. Journals in some regions or smaller publishers may not report retractions consistently. A clean database search does not guarantee the paper is uncontested.
- This skill does not assess the statistical or methodological quality of a paper — it checks publication integrity only. A paper can be technically valid but still be weak evidence for a strong claim. Use the paper-plain-language-summary skill to understand what the paper actually proves.
- Preprints (papers posted online before peer review, common on bioRxiv and medRxiv) have a different status from peer-reviewed publications. This checklist applies primarily to peer-reviewed journal articles — for preprints, step one should always be confirming whether the paper has since been published, revised, or withdrawn.

## Related Skills
- [paper-plain-language-summary](paper-plain-language-summary.md)
- [source-credibility-scorer](../../magazine-journalism/fact-checking/source-credibility-scorer.md)
- [claim-verification-checklist](../../magazine-journalism/fact-checking/claim-verification-checklist.md)

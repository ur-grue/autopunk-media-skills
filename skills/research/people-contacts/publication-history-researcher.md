---
name: publication-history-researcher
status: beta
category: research
subcategory: people-contacts
version: 1.0
eval_score: null
tags: [research, source-research, expert-vetting, academic, journalism, author-profile]
---

# Publication History Researcher

## What This Skill Does
Produces a structured research framework for building a verified publication history for a named author, journalist, scientist, or academic — listing where to look, what to record, and how to assess the significance and credibility of their output.

## When To Use This Skill
- Before quoting or featuring an expert, to establish whether their published record supports the authority you are about to attribute to them
- When profiling a writer, scientist, or commentator and needing to document the arc of their published work
- When a source claims a specific expertise or credential and you need to verify it against an actual publication record
- When investigating conflicts of interest — for example, whether an expert has been published predominantly by industry-funded outlets or journals

## What You Need To Provide
**Required:**
- The person's full name (and any known name variations, maiden names, or pen names)
- Their field or profession (e.g. "environmental toxicologist", "investigative journalist", "science communicator")
- Whether you are looking for academic publications, journalistic bylines, or both

**Optional:**
- Their current or most recent institution or employer, to help narrow searches
- The time period you are most interested in
- Any specific publications, journals, or outlets you have already confirmed they contributed to
- What you need the publication history for (expert vetting, profile piece, conflict-of-interest check) so the output can be prioritised accordingly

## How Claude Approaches This

1. **Separates publication types** — distinguishes between peer-reviewed academic papers, book chapters, trade and industry publications, mainstream journalism bylines, and self-published or grey literature, because each carries different evidentiary weight and requires different search methods.

2. **Maps the right database for each type** — identifies the most productive databases and archives for this person's field (e.g. PubMed for biomedical researchers, SSRN for social scientists, JSTOR for humanities scholars, newspaper archive databases for journalists) and provides specific search queries for each.

3. **Flags signals of credibility and conflict of interest** — explains what to look for beyond the raw list: peer review status, journal impact and independence, patterns of funding acknowledgements, whether the person publishes in their stated specialism or across unrelated fields.

4. **Provides a structured tracking table** — formats a working document the journalist can populate as they search, with fields designed to capture what matters for editorial vetting rather than for academic citation management.

5. **Notes verification steps** — explains how to confirm that a listed publication actually belongs to this person (common name disambiguation problem) and how to check whether any papers have been corrected, retracted, or disputed.

## Output Format
A structured research brief, approximately 600–900 words, divided into four sections:

1. **Publication type breakdown** — what types of publications are likely to exist for this person and why each matters
2. **Database and archive search strategy** — specific platforms, with example search queries tailored to the person's field
3. **Blank tracking table** — a Markdown table the journalist completes as they search (columns: Year | Title | Outlet / Journal | Type | Peer-reviewed? | Notes / flags)
4. **Credibility and conflict-of-interest checks** — specific things to look for when assessing the significance and independence of the record found

Tone: practical and non-technical, written for a journalist rather than a librarian or academic. No fabricated publication titles or outlets — this is a framework, not a factual summary.

## Quality Criteria
- [ ] Search strategy distinguishes between at least three distinct publication types relevant to this person's field
- [ ] At least four specific databases or archives are named, with example search queries for each
- [ ] Tracking table includes a column for flagging potential conflicts of interest or retractions
- [ ] Output is clearly framed as a research framework, not a factual list of the person's publications
- [ ] Conflict-of-interest guidance is specific to the person's field, not generic

## Example

### Input
Person: Dr. James Okafor
Field: Nutritional epidemiologist; also appears regularly in mainstream media as a diet and health commentator
Looking for: Both academic publications and journalistic bylines
Time period: 2015 to present
Purpose: I'm writing a profile for a health magazine. I want to confirm his academic credentials are as strong as his media profile suggests, and check whether any of his research has been funded by the food industry.

### Output

**Publication History Research Brief — Dr. James Okafor / Nutritional Epidemiology & Health Journalism**
Prepared as a research framework. All publications must be verified against primary sources before use.

---

**1. Publication Type Breakdown**

For a researcher who also works as a media commentator, you are looking for two distinct tracks — and the gap (or alignment) between them is itself a story.

*Academic publications (peer-reviewed)*
These are the foundation of his claimed scientific expertise. They will appear in indexed medical and nutrition journals. Peer-reviewed work carries editorial gatekeeping and should be your primary source for assessing the strength of his research credentials.

*Academic grey literature*
Preprints (not yet peer-reviewed), conference abstracts, and working papers. These can show what he is currently working on but should not be cited as established findings.

*Books and book chapters*
Often aimed at a crossover academic-public audience. Check whether books are published by academic presses (Oxford University Press, MIT Press, etc.) or popular publishers — both are legitimate but signal different audiences.

*Mainstream journalism bylines*
Op-eds, columns, and reported features in newspapers, magazines, and digital outlets. These show his public-facing positions and the claims he makes to non-specialist audiences — which may or may not be consistent with his peer-reviewed conclusions.

*Industry and trade publications*
Articles in food industry trade magazines or supplements funded by industry bodies. Significant for conflict-of-interest assessment.

---

**2. Database and Archive Search Strategy**

*For peer-reviewed academic work*

- **PubMed** (free, comprehensive for biomedical and nutrition research): search `Okafor J[Author] AND (nutrition OR diet OR epidemiology)`; then filter by date 2015–present. If "James Okafor" is common, add his institution: `Okafor J[Author] AND [Institution Name][Affiliation]`
- **Google Scholar**: search `"James Okafor" nutrition epidemiology`; sort by date. Check his author profile page if one exists — it lists all papers Google has indexed under his name
- **Scopus or Web of Science** (subscription required; available via most university libraries): run `AU-ID` search if you can find his researcher ID, which eliminates name-disambiguation errors entirely
- **ORCID** (free): search his name at orcid.org — if he has registered, his ORCID profile will list his own verified publication record

*For grey literature and preprints*

- **medRxiv / bioRxiv**: search `"James Okafor"` for any preprints in nutrition or public health
- **ResearchGate**: his profile (if public) often lists both published papers and working papers he has uploaded

*For journalism bylines*

- **LexisNexis or Factiva** (subscription): search `BYLINE(James Okafor)` filtered by source type (newspapers, magazines). Limit by date.
- **Google News archive**: `"James Okafor"` with date filters; follow the "More news" links to surface older results
- **Individual outlet search**: if you know he writes for specific publications, search their own archives directly: `"James Okafor" site:theguardian.com` or equivalent

*For funding and conflict-of-interest signals*

- Read the "Acknowledgements" and "Conflicts of interest" sections of each paper found — these are where industry funding must be disclosed under most journal ethics policies
- Search **TranspariMED** or **PharmedOut** (open databases of industry payments to researchers) if his field overlaps with food supplement or pharmaceutical interests

---

**3. Publication Tracking Table**

| Year | Title (abbreviated) | Outlet / Journal | Type | Peer-reviewed? | Funding disclosed? | Notes / flags |
|---|---|---|---|---|---|---|
| | | | | | | |
| | | | | | | |
| | | | | | | |

*(Copy and complete this table as you find sources. Add rows as needed. In the "Flags" column, note retractions, corrections, or industry funding.)*

---

**4. Credibility and Conflict-of-Interest Checks**

- **Name disambiguation:** "James Okafor" may not be uncommon. Before recording any paper, confirm it is the same person by cross-checking institutional affiliation, co-authors, or subject matter with what you already know about him.
- **Retraction check:** Search his name on **Retraction Watch** (retractionwatch.com). A retraction does not automatically disqualify an expert, but it must be known and disclosed in your reporting.
- **Journal quality signals:** Check whether journals he publishes in are indexed in PubMed and whether they use external peer review. Be alert to predatory open-access journals (searchable via Beall's List archive) which charge authors to publish and conduct minimal review.
- **Media vs. research alignment:** Compare the claims he makes in journalism bylines with the conclusions of his peer-reviewed papers. Significant overstatement in media appearances relative to his own research is a substantive editorial finding.
- **Funding pattern:** If multiple papers acknowledge funding from the same industry body (e.g. a sugar industry association, a dairy board), that pattern is worth noting even if individual disclosures are technically compliant.
- **Publication frequency drop-off:** A sharp decline in peer-reviewed output after a certain date, combined with increased media commentary, may indicate a shift away from active research — relevant context for how you characterise his current expertise.

---

## Known Limitations
- This skill produces a research framework and search strategy only. It does not retrieve or verify actual publications — all database searches must be conducted by the journalist.
- Name disambiguation is a genuine difficulty. Researchers who share a common name, or who have published under more than one name, require additional verification steps beyond what this framework provides.
- Access to Scopus, Web of Science, LexisNexis, and Factiva requires institutional subscriptions. Journalists without library access will need to rely on free alternatives (Google Scholar, PubMed, Google News), which are less comprehensive.
- Conflict-of-interest disclosures in older papers (pre-2010) are often incomplete or absent, as disclosure standards have tightened considerably since then.
- This framework does not assess the scientific quality or conclusions of individual papers — for that, a subject-matter expert review is required.

## Related Skills
- [expert-identifier](./expert-identifier.md)
- [prior-statements-researcher](./prior-statements-researcher.md)
- [source-credibility-scorer](../../magazine-journalism/fact-checking/source-credibility-scorer.md)
- [biography-researcher](./biography-researcher.md)

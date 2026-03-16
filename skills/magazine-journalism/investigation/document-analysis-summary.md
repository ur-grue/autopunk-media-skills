---
name: document-analysis-summary
status: stable
category: magazine-journalism
subcategory: investigation
version: 1.0
eval_score: 4.5
tags: [journalism, investigation, documents, analysis, research]
---

# Document Analysis Summary

## What This Skill Does
Produces a structured summary of a leaked, official, or obtained document, extracting key claims, notable gaps, internal contradictions, and the most newsworthy elements.

## When To Use This Skill
- You have received a document through a FOIA response, a leak, or court discovery and need to triage its contents quickly
- You want to understand what a document does and does not say before briefing an editor
- You need to identify follow-up questions and missing records suggested by the document's content
- You are assessing whether a document corroborates, contradicts, or is irrelevant to a claim already made by a source

## What You Need To Provide
**Required:** The full text or a detailed summary of the document; the document type (internal memo, contract, audit report, email chain, etc.); the story or investigation context
**Optional:** Specific claims or allegations you are trying to verify or challenge; names or entities you want to cross-reference within the document; the document's provenance (how it was obtained)

## How Claude Approaches This
1. Reads the document for factual content: identifies the who, what, when, where, and any stated conclusions or recommendations
2. Identifies what the document does not address — omissions that are significant given its stated purpose, gaps in dates or data, missing signatories, or redacted sections
3. Flags internal contradictions — statements in different sections that conflict, discrepancies between stated figures and attached data, or language that appears to have been revised
4. Ranks newsworthy elements by significance: what is new information, what confirms known facts, and what contradicts official statements

## Output Format
Structured summary, 400–700 words. Sections: Document Overview (type, date, author/origin, stated purpose), Key Findings (bulleted), Notable Omissions (bulleted), Internal Contradictions (bulleted, if any), Newsworthy Elements by Priority (ranked 1–5), Suggested Follow-up Documents or Questions. Neutral, factual register — no editorial framing.

## Quality Criteria
- [ ] Document Overview accurately identifies document type, origin, and stated purpose
- [ ] Key Findings are drawn from the document's actual content — no inference beyond what the text supports
- [ ] Omissions section notes what is absent given the document's own stated scope
- [ ] Newsworthy elements are ranked by journalistic significance, not chronological order
- [ ] Suggested follow-ups are actionable — specific records, questions, or verification steps

## Example

### Input
Document type: Internal audit report
Context: Investigating financial mismanagement at a publicly funded urban transit authority
Document text summary: A 34-page internal audit report from the transit authority's Office of Inspector General, dated 14 months ago, concluding that $4.2 million in vendor payments lacked required competitive bidding documentation. The report recommends corrective action and notes that the procurement director at the time "was aware of the departures from policy." The report was never released publicly. Three of the five contracts flagged are with the same vendor. The recommendations section has a handwritten notation reading "discussed with Board — defer." No evidence that corrective action was taken is included in the document.

### Output

**Document Analysis Summary — Transit Authority OIG Audit Report**

---

**Document Overview**

- *Type:* Internal audit report, Office of Inspector General
- *Date:* 14 months prior to current investigation
- *Author/Origin:* Transit authority's own internal oversight body
- *Stated purpose:* Assess compliance with procurement policy for vendor contracts awarded in the preceding fiscal year
- *Status at time of review:* Apparently non-public; not released through standard disclosure processes

---

**Key Findings**

- $4.2 million in vendor payments lacked required competitive bidding documentation across five contracts
- The report explicitly names the then-procurement director as having been "aware of the departures from policy" — this is not a finding of inadvertent non-compliance; it suggests knowing circumvention
- Three of the five flagged contracts are with the same unnamed vendor, suggesting a pattern rather than isolated incidents
- The report includes corrective action recommendations, meaning the OIG believed the violations were serious enough to require institutional response

---

**Notable Omissions**

- The vendor names are not included in the summary provided — confirm whether they are named in the full document or were redacted
- No documentation of whether the recommended corrective actions were ever implemented
- No reference to whether the findings were reported to the transit authority's board formally or only informally
- The current status of the procurement director (still employed, resigned, or dismissed) is not addressed
- No dollar amounts are broken down by individual contract, making it impossible to determine whether the largest contract is disproportionate

---

**Internal Contradictions**

- The recommendations section states corrective action "shall be implemented within 90 days." The handwritten notation "discussed with Board — defer" suggests this deadline was not met — but the notation is handwritten and may not be official. Verify authenticity and authorship.
- The document concludes that the violations represent a "material departure from policy," yet the tone of the recommendations is administrative rather than punitive — inconsistent with the severity language used earlier.

---

**Newsworthy Elements by Priority**

1. **(Highest)** The OIG's explicit finding that the procurement director was "aware" of policy departures — this is the most legally and editorially significant line in the document
2. Three of five flagged contracts going to the same vendor — suggests a relationship worth investigating
3. The handwritten "defer" notation on the recommendations — implies the board may have chosen not to act on a known problem
4. $4.2 million in non-compliant payments from a publicly funded body
5. The report's apparent suppression — it was produced 14 months ago and never released

---

**Suggested Follow-up Documents and Questions**

- Request the full unredacted report through the transit authority's public records process
- Request all board meeting minutes for the 90-day window following the audit report's completion
- File a public records request for any correspondence between the OIG and the board regarding this audit
- Identify the vendor(s) through contract disclosure records and cross-reference with political donations or personal connections to transit authority leadership
- Determine current employment status of the procurement director named in the report

## Known Limitations
- This skill analyzes the text provided. If the document was summarized rather than quoted in full, the analysis reflects that summary — key details in unshared sections will be missed.
- The skill identifies what is absent relative to the document's stated scope. It cannot know what records were deliberately excluded before the document was leaked or disclosed.
- Handwritten notations, formatting anomalies, and metadata suggesting revision history are things the user must flag explicitly — Claude cannot view a document's physical or file properties.
- Legal interpretation of document language (e.g., whether "aware of departures" meets a legal standard for liability) requires a lawyer, not a journalist tool.

## Related Skills
- [investigation-timeline-builder](./investigation-timeline-builder.md)
- [foia-request-writer](./foia-request-writer.md)
- [source-research-brief](./source-research-brief.md)

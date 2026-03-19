---
name: conflict-of-interest-brief
status: beta
category: research
subcategory: facts-context
version: 1.0
eval_score: null
tags: [sourcing, conflicts-of-interest, editorial-judgment, investigation, transparency]
---

# Conflict of Interest Brief

## What This Skill Does
Produces a structured brief identifying the potential financial, professional, and relational conflicts of interest a source or stakeholder may have — and recommending what to disclose, what to investigate further, and how to handle the source editorially.

## When To Use This Skill
- A source is a named expert but you are not sure whether their institutional affiliations or funding create undisclosed interests
- A spokesperson or official is commenting on a policy, regulation, or decision that may directly affect their employer or personal finances
- You are profiling a company, organisation, or public figure and want to map potential bias before you rely on their statements
- A scientific study is being cited in your story and you want to flag funding sources and author affiliations
- An advocacy group or think tank is providing research or commentary and you need to present their position accurately in context

## What You Need To Provide
**Required:** Name or role of the source (a category is fine if a name is not available). The specific claim, statement, or position they are putting forward. The topic or sector the story covers.

**Optional:** Known employer, institutional affiliation, or funding source. Any previous public statements or positions this person or organisation has taken. Industry or regulatory context.

## How Claude Approaches This
1. Identifies the category of relationship most likely to create a conflict — financial (employment, investment, contracts, grants), professional (career advancement, peer review relationships, board membership), relational (family, political, personal loyalty), or reputational (prior advocacy positions, public commitments that may bias current comment).
2. Maps the specific questions a reporter should investigate to surface each type of conflict — for example, what public registries to check, what disclosures to request, what questions to put to the source directly.
3. Assesses the materiality of any identified or likely conflict: does it affect the specific claim being made, or is it background context?
4. Produces an editorial handling recommendation: how to disclose any conflict to readers, whether a second independent source is required, and whether the source can remain anonymous given the conflict.
5. Drafts a short disclosure line that could be used in the published piece if the conflict is confirmed.

## Output Format
A structured brief of approximately 450–600 words. Four sections: Conflict Categories to Investigate, Investigation Checklist, Materiality Assessment, and Editorial Handling. Written in plain editorial language. The checklist is numbered with specific questions, not general advice. Closes with a ready-to-use draft disclosure line. Tone is factual and non-accusatory — this skill identifies potential conflicts, not confirmed wrongdoing.

## Quality Criteria
- [ ] All four main conflict categories (financial, professional, relational, reputational) are addressed or explicitly noted as not applicable
- [ ] Each checklist item is a specific, answerable question — not a generic instruction
- [ ] The materiality assessment distinguishes between conflicts that affect the specific claim and those that are background context only
- [ ] The draft disclosure line is accurate to the potential conflict identified, not a generic template
- [ ] The brief is non-accusatory — it frames conflicts as context for editorial judgment, not as evidence of wrongdoing

## Example

### Input
Source: A cardiologist commenting on the results of a large clinical trial comparing two blood-pressure medications. The doctor is a professor at a university medical school and is quoted saying the new drug represents "a significant advance" with "a strong safety profile."
Topic: Health journalism piece on the trial results, intended for a general audience.
Known information: The trial was funded by the pharmaceutical company that manufactures the new drug.

### Output

**Conflict Categories to Investigate**

Four categories of potential conflict apply here:

- **Financial:** The most material risk. Whether the commenting cardiologist received research funding, speaking fees, consultancy payments, or travel expenses from the pharmaceutical company — or from a competitor.
- **Professional:** Whether the cardiologist was involved in the trial as an investigator, advisory board member, or peer reviewer of the manuscript — any of which would make their comment an interested party's endorsement rather than independent expert opinion.
- **Relational:** Whether the cardiologist has a professional relationship with the trial's principal investigators that may create pressure toward positive comment.
- **Reputational:** Whether the cardiologist has made prior public statements supporting this drug class or this company's products, which would indicate an existing position rather than a fresh assessment.

---

**Investigation Checklist**

1. Search the cardiologist's name in any applicable national or regional physician payment transparency database. Look for payments from the manufacturing company in the three years prior to and including the trial publication.

2. Check the trial's published paper — particularly the "Conflicts of Interest" or "Disclosures" section — for the cardiologist's name as a named author, investigator, or acknowledged contributor.

3. Search the cardiologist's institutional profile and recent publications for any co-authored work with the trial's lead investigators.

4. Review the cardiologist's recent conference presentations and invited lectures. Medical conference programmes often list sponsors, which can surface paid speaking relationships not captured in payment databases.

5. Ask the cardiologist directly: "Do you have any financial relationship with the company that funded this trial, or with any competitor?" Request a written disclosure.

6. Check whether the university's institutional disclosure policy requires faculty to report consultancy income, and whether any relevant disclosure is on file.

---

**Materiality Assessment**

The trial funding by the manufacturer is directly material to the cardiologist's comment, which endorses that manufacturer's product. Even if the cardiologist has no personal financial relationship, readers are entitled to know that the trial being described was industry-funded — this is standard disclosure in health journalism.

If the cardiologist is found to have received payments from the manufacturer: their comment cannot be presented as independent expert opinion. A second source with no industry relationship is required before publication.

If no direct financial relationship is found: the trial's funding source must still be disclosed in the piece, and the cardiologist's institutional affiliation must be stated. The absence of a personal conflict does not mean the framing is conflict-free.

---

**Editorial Handling**

A second independent expert — one with no disclosed relationship to either the manufacturer or the trial investigators — should comment on the results. This is the standard for health reporting on industry-funded trials.

The cardiologist can remain a named source if their conflict (if any) is disclosed and their comment is framed accurately.

**Draft disclosure line (if personal financial relationship is confirmed):**
"[Name] has received [consulting fees / research funding / speaking fees — specify] from [Company Name]. [He/She/They] was not involved in the trial."

**Draft disclosure line (if no personal conflict is found):**
"The trial was funded by [Company Name], the manufacturer of [drug name]. [Expert name] has no disclosed financial relationship with the company."

## Known Limitations
- Conflict of interest databases vary significantly by country. This skill assumes the existence of accessible public registries, which do not exist in all jurisdictions. In some markets, disclosure information must be obtained by directly questioning the source or requesting institutional records.
- This skill identifies the questions to investigate — it does not have access to live payment databases, corporate filings, or court records. The journalist must search those sources.
- Conflicts can exist that are not publicly disclosed and cannot be identified through research alone. This brief reduces risk; it does not eliminate it.

## Related Skills
- [claim-fact-checker](./claim-fact-checker.md)
- [source-cross-referencer](./source-cross-referencer.md)
- [funding-sources-researcher](./funding-sources-researcher.md)
- [source-credibility-brief](../../magazine-journalism/fact-checking/source-credibility-brief.md)
- [source-credentials-checker](../people-contacts/source-credentials-checker.md)

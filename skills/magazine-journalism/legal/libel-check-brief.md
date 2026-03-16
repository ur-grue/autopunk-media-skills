---
name: libel-check-brief
status: stable
category: magazine-journalism
subcategory: legal
version: 1.0
eval_score: 4.4
tags: [journalism, legal, libel, defamation, editing, pre-publication]
---

# Libel Check Brief

## What This Skill Does
Reviews a draft article and flags statements that could pose defamation risk, identifying the specific legal concern and specifying what verification, qualification, or right-of-reply is needed before publication.

## When To Use This Skill
- A draft contains allegations, characterizations, or accusations about named or identifiable individuals or organizations
- You are writing about ongoing legal proceedings and want to ensure protected reporting language is being used correctly
- An editor needs to know which passages require legal review before a story can publish
- You want to understand the difference between protected opinion and potentially actionable factual claims in your draft

## What You Need To Provide
**Required:** The full text of the draft article, or a detailed excerpt focusing on the passages you are concerned about; the publication jurisdiction (U.S., UK, Australia, or other — libel law varies significantly)
**Optional:** Whether the named individuals are public figures or private individuals (different legal standards apply); whether the publication has already given subjects right-of-reply; any supporting documentation for the most sensitive claims

## How Claude Approaches This
1. Identifies every statement in the draft that makes or implies a factual claim about a named or identifiable person or organization — distinguishing statements of fact from protected opinion
2. Assesses each identified statement for defamation risk factors: specificity of the allegation, public vs. private figure status of the subject, verifiability of the claim, and potential for harm to reputation
3. Flags passages where the current language creates unnecessary risk that could be reduced with simple editing — conditional language, attribution, or right-of-reply framing
4. Produces a risk-tiered brief: passages requiring immediate legal review, passages requiring qualification or right-of-reply before publication, and passages that are currently protected

## Output Format
Tiered brief. Three sections: Red (do not publish without legal review), Amber (requires qualification, right-of-reply, or additional verification), Green (currently protected). Each flagged passage: Quoted text | Risk Category | Legal Concern Explained in Plain Language | Recommended Action. Closes with a publication readiness assessment. Language is plain English — journalists should be able to act on this without legal training, but sensitive cases must still go to a media lawyer.

## Quality Criteria
- [ ] Every potentially actionable statement is captured — no omissions
- [ ] Risk categories are correctly assigned — not everything is Red
- [ ] Legal concerns are explained in plain language without using technical legal jargon incorrectly
- [ ] Recommended actions are specific — "qualify with 'allegedly'" or "get written right-of-reply on record" rather than "needs more work"
- [ ] The brief makes clear this is a first-pass editorial assessment, not a substitute for legal counsel

## Example

### Input
Draft excerpt: A profile of a regional real estate developer, including the following passages:

A) "Over the past decade, Hartwell Development has left a trail of unfinished projects and unpaid contractors."
B) "According to two former employees, CEO Daniel Hartwell personally instructed staff to falsify safety inspection records."
C) "Hartwell was investigated by the state attorney general's office in 2019."
D) "Industry insiders describe Hartwell as a con man who preys on small investors."
E) "The company's most recent development, Riverside Commons, was three years late and over budget — a pattern consistent with Hartwell's other projects."
F) "Hartwell declined to respond to detailed questions submitted in writing."

Publication: U.S. national magazine
Subject status: Hartwell is a private individual who operates primarily in local markets (not a public figure)

### Output

**Libel Check Brief — Hartwell Development Profile**
*Jurisdiction: United States. Subject: Private individual.*

Note: Because Daniel Hartwell appears to be a private individual rather than a public figure, the applicable standard is ordinary negligence in most U.S. states — a lower burden for a plaintiff than the "actual malice" standard that applies to public figures. Handle with corresponding care.

---

**RED — Do Not Publish Without Legal Review**

**Passage B:** "According to two former employees, CEO Daniel Hartwell personally instructed staff to falsify safety inspection records."

*Legal concern:* This is a serious allegation of criminal conduct (falsifying official records) attributed directly to a named private individual by name. "Two former employees" are anonymous in this passage. If Hartwell denies this and sues, anonymous sourcing will not protect the publication. This passage requires: (1) documented on-record right-of-reply from Hartwell specifically to this allegation before publication; (2) corroborating documentary evidence or a third source willing to be identified; (3) legal review before publication regardless of verification status.

*Recommended action:* Do not publish without media lawyer sign-off. Obtain Hartwell's written response to this specific allegation.

---

**AMBER — Requires Qualification or Right-of-Reply Before Publication**

**Passage A:** "Over the past decade, Hartwell Development has left a trail of unfinished projects and unpaid contractors."

*Legal concern:* "Trail of" is characterization language that implies a pattern of wrongdoing. If this is supportable by specific documented examples — named projects, court records, contractor liens — it may be defensible as fair comment on documented facts. As currently written, it is an unqualified summary characterization that could be challenged as implying broader fraud than the evidence supports.

*Recommended action:* Either (a) replace with a specific enumeration of documented cases ("In three projects over the past decade, Hartwell Development left contractors unpaid, according to court records"), or (b) ensure the body of the article contains enough documented examples to support the lead characterization, and confirm right-of-reply from Hartwell on this characterization.

**Passage D:** "'Industry insiders describe Hartwell as a con man who preys on small investors.'"

*Legal concern:* "Con man" is defamatory on its face if presented as a factual description. The passive attribution "industry insiders describe" does not protect the publication — the magazine is publishing the statement. "Con man" implies criminal fraud; if Hartwell has not been convicted of fraud, this language is a significant liability.

*Recommended action:* Remove "con man" or replace with a direct quote from a named source willing to be identified. If multiple specific fraud allegations are documented in the article, the article's own evidence may be a partial defense — but "con man" language still requires legal review.

**Passage C:** "Hartwell was investigated by the state attorney general's office in 2019."

*Legal concern:* This is a factual claim that requires documentary corroboration. Investigations that did not result in charges are sensitive — naming someone as the subject of a government investigation can damage reputation regardless of outcome. Confirm whether this is verifiable from public records (AG press release, court docket, public filing) and whether the investigation is still active or was closed without action.

*Recommended action:* Verify from public record. Add outcome: "The investigation was closed without charges" or "the matter is ongoing," whichever is accurate. Do not leave the reader to assume guilt.

---

**GREEN — Currently Protected**

**Passage E:** "The company's most recent development, Riverside Commons, was three years late and over budget."

*Assessment:* If verifiable from public records (building permits, planning documents, contract dates), this is a statement of fact about a company's project, not a personal character attack. It is defensible if accurate. Confirm factual basis and document it.

**Passage F:** "Hartwell declined to respond to detailed questions submitted in writing."

*Assessment:* Standard right-of-reply notation. Legally protected as a factual statement about the reporting process, provided the questions were actually submitted in writing. Keep the original communication on file.

---

**Publication Readiness Assessment**
This draft is not ready for publication in its current form. Passage B (criminal conduct allegation) requires legal review and documented right-of-reply before any publication decision. Passage D ("con man") requires editing or removal. All other passages are addressable through standard editorial steps.

*This brief is an editorial pre-screening tool. It is not a substitute for review by a qualified media attorney.*

## Known Limitations
- This skill provides editorial guidance on defamation risk — it is not legal advice and does not substitute for review by a qualified media attorney, particularly for Red-category passages.
- Defamation law varies significantly by jurisdiction. This skill applies a general U.S. framework by default; UK, Australian, and other common-law jurisdictions have different standards (UK libel law is substantially more plaintiff-friendly). Always specify jurisdiction.
- The public figure/private individual distinction significantly affects legal exposure. The skill relies on the characterization provided by the user — misidentifying a private individual as a public figure would change the analysis.
- This skill cannot assess whether evidence available to the reporter (but not shared with the skill) would provide a sufficient defense. The legal concept of "truth as a complete defense" depends on the evidence actually held, not just claimed.

## Related Skills
- [claim-verification-checklist](../fact-checking/claim-verification-checklist.md)
- [source-credibility-brief](../fact-checking/source-credibility-brief.md)
- [fact-check-prompt](../editing/fact-check-prompt.md)

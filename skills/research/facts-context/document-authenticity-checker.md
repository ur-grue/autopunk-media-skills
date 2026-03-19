---
name: document-authenticity-checker
status: beta
category: research
subcategory: facts-context
version: 1.0
eval_score: null
tags: [verification, documents, red-flags, fact-checking, investigation]
---

# Document Authenticity Checker

## What This Skill Does
Generates a structured red-flag checklist for a specific document or quote a journalist has received, identifying the observable indicators that commonly appear in fabricated, altered, or misattributed materials — so a reporter knows exactly what to look for before treating the document as verified.

## When To Use This Skill
- A source has provided a document — leaked memo, internal report, official letter, screenshot — that you cannot immediately verify through a second independent source
- You have received a quote attributed to a public figure that you did not hear or record yourself
- You are reviewing a document that arrived through an anonymous or unfamiliar channel
- A document looks official but something about it feels off and you cannot immediately name why
- You want a systematic checklist before deciding whether to request expert forensic analysis

## What You Need To Provide
**Required:** A description of the document or quote — what it purports to be, who it is attributed to, how you received it, and what it claims.
**Optional:** A transcription or close description of the document's content and visual appearance (letterhead, logos, formatting, signatures, date formats); the name of the organisation or individual it claims to originate from; any contextual details about why the source provided it and what they stand to gain.

## How Claude Approaches This

**Important:** This skill does not verify documents. It produces a checklist of red flags to look for. Claude cannot examine the physical document, run metadata analysis, or confirm authenticity. The checklist tells you what questions to ask and what to check — it does not answer those questions.

1. Identifies the document type and establishes what an authentic version of that type normally looks like — standard formatting conventions, expected language register, typical structural features
2. Generates a red-flag checklist specific to that document type, organised by category: formatting and visual indicators, content and language indicators, provenance and chain-of-custody indicators, and source-motive indicators
3. Notes which red flags, if present, are minor concerns versus serious concerns requiring expert verification before publication
4. Recommends the minimum verification steps for this specific document type before it can be used in print or broadcast

## Output Format
Structured checklist. Four sections with checkboxes: Formatting and Visual Red Flags, Content and Language Red Flags, Provenance Red Flags, Source and Motive Red Flags. Each checkbox item is a specific, observable thing to look for — not a general principle. After the checklist: a short Verification Minimum section listing the non-negotiable steps before this document can be published. Total length: 500–750 words. Tone: direct and practical. Written for a reporter, not a forensic specialist.

## Quality Criteria
- [ ] Every checklist item is specific and observable — the reporter knows exactly what to look for
- [ ] Red flags are calibrated to the specific document type described, not generic to all documents
- [ ] Minor and serious concerns are distinguished
- [ ] The Verification Minimum section names concrete actions, not vague principles
- [ ] The output does not claim to verify or authenticate — it only identifies what to examine
- [ ] The skill does not discourage reporting; it enables responsible reporting

## Example

### Input
I've received what appears to be an internal email chain from a mid-size logistics company. It's six pages, forwarded as a PDF. My anonymous source says it shows senior managers discussing how to falsify vehicle inspection records to avoid regulatory penalties. The email chain has the company's logo in the header and email signatures with job titles. I received it via an encrypted messaging app three days ago. The source says they work in the company's compliance department.

### Output

**Document Authenticity Red-Flag Checklist**
*Document type: Internal corporate email chain (PDF) · Claim: Evidence of falsified inspection records · Source: Anonymous, via encrypted app*

---

This checklist tells you what to look for. It does not verify the document. Each item should be checked before treating this email chain as confirmed evidence.

---

**Section 1: Formatting and Visual Red Flags**

- [ ] **Logo quality:** Is the company logo sharp, correctly proportioned, and consistent with logos on the company's public website and official communications? Blurred, pixelated, or slightly misaligned logos may indicate a copy-paste from a low-resolution source.
- [ ] **Email header formatting:** Do the From, To, CC, Date, and Subject fields follow the format a real email client would produce? Check that timestamps include time zones and that email address domains match the company's known domain exactly (e.g., one-letter substitutions: "rn" instead of "m").
- [ ] **Font consistency:** Are fonts consistent throughout the email chain? Mixed fonts within a single email — particularly in signatures — can indicate text was edited after the fact.
- [ ] **Signature block details:** Do job titles in signatures match publicly listed roles (LinkedIn, company website, press releases)? Are phone numbers in the right format for the country?
- [ ] **PDF metadata:** If you can access the PDF's metadata (File > Properties in Adobe Reader), check the creation date, modification date, and the software used to create it. A document created in a PDF editor rather than printed from an email client warrants scrutiny. *Serious concern if creation date post-dates the alleged email dates.*
- [ ] **Reply formatting:** In a genuine forwarded email chain, indentation, date stamps, and "From:" lines follow a consistent pattern set by the email client. Inconsistent indentation across replies is a red flag.

---

**Section 2: Content and Language Red Flags**

- [ ] **Language register:** Do the emails read like internal workplace communication — shortcuts, abbreviations, references to internal processes — or do they read like a document written to be read by an outsider? Fabricated documents often read too cleanly.
- [ ] **Specificity of wrongdoing:** Are the problematic statements explicit in a way that would be unusual for experienced managers discussing something illegal? People conducting deliberate fraud typically use coded language or verbal communication, not direct written admissions.
- [ ] **Technical accuracy:** Do the regulatory references, inspection terminology, and vehicle classification terms match how those terms are actually used in the relevant jurisdiction? Errors in regulatory language are a significant red flag.
- [ ] **Anachronisms:** Do any references — to software, regulations, job titles, or events — post-date the alleged email dates?

---

**Section 3: Provenance Red Flags**

- [ ] **Chain of custody:** How many hands has this document passed through between the alleged origin and you? Each additional step increases the opportunity for alteration.
- [ ] **Why a PDF?** A forwarded email chain is normally shared as a forwarded email, not a PDF. Why was it converted? PDFs are easier to alter than raw email files and strip most email metadata.
- [ ] **Timing of disclosure:** Did the source provide this document immediately after a specific trigger — a regulatory announcement, a disciplinary action, a redundancy — that might indicate a personal motive?

---

**Section 4: Source and Motive Red Flags**

- [ ] **What does the source gain?** A compliance employee who provides evidence of wrongdoing may be acting in good faith — or may be involved in a workplace dispute, a grievance, or a deliberate disinformation campaign targeting a business rival. The motive does not invalidate the document, but it must be understood.
- [ ] **Why you, why now?** Has the source approached other journalists? Have they explained why they chose you and why they are disclosing now?
- [ ] **Corroborating detail:** Has the source provided any additional verifiable detail — names, dates, locations — that you can check independently and that turn out to be accurate? A source who is right about verifiable details is more credible on unverifiable ones.

---

**Verification Minimum Before Publication**

1. Obtain a second independent source who can confirm the substance of the claim — ideally someone with direct knowledge who did not provide the document.
2. Put the specific claims in the document to the company in writing and give them adequate time to respond. Their response (or non-response) becomes part of your story.
3. Have a digital forensics specialist examine the PDF metadata and email header formatting. Most investigative desks can arrange this; freelancers should contact their press freedom organisation or a journalism school digital lab.
4. Attempt to reach at least one of the named individuals in the email chain for independent verification or comment.

*Do not publish on the basis of this document alone, regardless of how convincing it appears.*

## Known Limitations
- This skill cannot examine the actual document. All checklist items must be applied by the journalist. If you cannot share the document's content, the checklist will be more generic and less targeted.
- Sophisticated fabrications — created by technically competent actors with access to legitimate templates — may pass all observable checks. This checklist catches common errors; it does not catch skilled deception. When stakes are high, professional forensic analysis is not optional.
- The red flags for email chains may differ from those relevant to other document types (contracts, official letters, company accounts). If your document type differs significantly from what you described in the input, request a new checklist.

## Related Skills
- [claim-fact-checker](claim-fact-checker.md)
- [claim-origin-tracer](claim-origin-tracer.md)
- [source-cross-referencer](source-cross-referencer.md)
- [conflict-of-interest-brief](conflict-of-interest-brief.md)

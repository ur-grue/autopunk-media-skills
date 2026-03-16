---
name: expert-finder-brief
status: stable
category: magazine-journalism
subcategory: investigation
version: 1.0
eval_score: 4.3
tags: [journalism, investigation, experts, sourcing, research]
---

# Expert Finder Brief

## What This Skill Does
Generates a structured brief identifying the types of experts needed for a story, where to find them, and how to approach them credibly.

## When To Use This Skill
- You are starting an investigation and need to map out what kinds of expert sources will make the story credible
- You have a story concept but don't know which professional disciplines are most relevant
- You want a systematic approach to sourcing rather than searching for names ad hoc
- You are covering a technical subject outside your beat and need a roadmap into an unfamiliar expert community

## What You Need To Provide
**Required:** A brief description of the story or investigation topic; the type of publication and approximate audience
**Optional:** Any experts already identified; specific angles or sub-questions the story needs to answer; geographic constraints (local vs. national vs. international sources); deadline pressure (affects how quickly sources must be found)

## How Claude Approaches This
1. Breaks the story's core questions into distinct knowledge domains — each domain points to a different category of expert
2. For each knowledge domain, identifies the most credible expert types (by professional role, institutional affiliation, or credential) and flags which are more likely to be neutral versus advocacy-oriented
3. Suggests specific finding strategies for each expert type: professional associations, academic departments, regulatory agency alumni networks, conference programs, court records, and public databases
4. Provides a brief approach note for each expert type — how to frame the initial contact to maximize response rate

## Output Format
Structured brief, 400–700 words. Sections: Story Questions Requiring Expert Input (bulleted), Expert Types by Domain (2–4 domains, each with expert roles + finding strategy + approach note). Closes with a short Sourcing Risks section flagging common pitfalls for this story type. Practical, direct tone.

## Quality Criteria
- [ ] Each expert type is mapped to a specific story question it answers
- [ ] Finding strategies are actionable and specific — not "search Google" but named databases, directories, or institutions
- [ ] Brief distinguishes neutral experts from those likely to have advocacy positions
- [ ] Approach notes are realistic — accounts for why experts might be reluctant and how to address that
- [ ] Sourcing risks section flags at least one story-specific pitfall

## Example

### Input
Story: Investigating whether a major hospital network's billing practices systematically overcharge Medicare for procedures that were not fully performed or were upcoded
Publication: National health policy magazine, sophisticated general audience
No experts identified yet; no geographic constraint; publication in approximately 10 weeks

### Output

**Expert Finder Brief — Medicare Billing Investigation, Hospital Network Upcoding**

---

**Story Questions Requiring Expert Input**

- What coding practices constitute fraud versus aggressive-but-legal billing under Medicare rules?
- How does Medicare auditing work, and what are its known weaknesses?
- What statistical patterns distinguish systematic upcoding from random error?
- What are the legal consequences — civil and criminal — for hospitals found in violation?
- What do frontline coders and billing staff experience when they raise internal concerns?

---

**Expert Types by Domain**

**Domain 1: Medicare billing compliance and medical coding**
- *Expert types:* Certified Professional Coders (CPCs) no longer employed by the hospital in question; former CMS (Centers for Medicare & Medicaid Services) compliance officers; healthcare billing attorneys in qui tam (whistleblower) practice
- *Finding strategy:* AAPC (American Academy of Professional Coders) member directory; AHIMA (American Health Information Management Association) for credentialed coders; Pacer (federal court database) for qui tam suits naming similar hospital networks — the attorneys on those filings are expert-adjacent and often willing to talk
- *Approach note:* Frame as background education first. Many compliance professionals will not go on record but will verify your understanding of the technical landscape. Attorneys in active qui tam cases cannot discuss pending litigation but can speak generally.

**Domain 2: Medicare auditing and CMS oversight**
- *Expert types:* Former Recovery Audit Contractors (RAC auditors); former CMS regional office staff; academic health policy researchers who study Medicare integrity programs
- *Finding strategy:* Health Affairs and JAMA Health Forum author lists; National Academy for State Health Policy conference programs; LinkedIn search for former RAC auditor roles at the major contracting firms (Cotiviti, Performant)
- *Approach note:* Former CMS staff are often willing to speak once they've cleared government ethics restrictions (typically one year). Lead with the systemic question, not the specific hospital, to lower defensiveness.

**Domain 3: Healthcare fraud investigation and prosecution**
- *Expert types:* Former Department of Justice healthcare fraud unit prosecutors; former HHS Office of Inspector General agents; academic criminologists who study white-collar healthcare fraud
- *Finding strategy:* DOJ press releases for healthcare fraud settlements in the past five years — prosecutors who tried those cases are often now in private practice and will discuss systemic patterns; health law faculty at major law schools (Georgetown, Penn, Vanderbilt health law programs)
- *Approach note:* These sources respect specificity. Come with data. Vague allegations will be dismissed; documented billing anomalies will get their attention.

**Domain 4: Frontline billing staff and patient advocates**
- *Expert types:* Current or former hospital billing coders willing to speak on background; patient advocates who help individuals dispute hospital bills; hospital chaplains or social workers (often aware of billing pressure on care decisions)
- *Finding strategy:* Healthcare whistleblower attorneys often have former-employee contacts willing to speak; patient advocacy organizations (Patient Advocate Foundation, National Patient Advocate Foundation) can connect with affected patients and their advisors
- *Approach note:* Protect these sources aggressively. Do not name them in early interviews with other experts. Non-disclosure matters more than speed here.

---

**Sourcing Risks**

- *Advocacy capture:* Healthcare billing is heavily litigated. Experts recommended by hospital trade associations (AHA, AAMC) will almost certainly defend upcoding as coding complexity, not fraud. Weight their input accordingly.
- *Active litigation:* If a federal qui tam suit already exists against this hospital network, some expert sources may be legally restricted from discussing the case. Check Pacer before cold-calling attorneys.
- *Overreliance on government sources:* Former CMS and DOJ sources understand the system but may understate endemic problems to avoid implicating former colleagues. Balance with plaintiff-side attorneys and academic researchers.

## Known Limitations
- This brief identifies expert types and finding strategies based on the story description provided. It cannot verify whether specific named individuals or institutions are currently active, willing to speak, or without conflicts.
- For highly localized stories, national expert directories may not yield local sources — regional bar associations, state medical boards, and local university departments require separate searching.
- Expert availability is unpredictable. Stories with 10+ week lead times can build out expert sourcing; stories on 48-hour deadlines need a faster track not fully captured here.

## Related Skills
- [source-research-brief](./source-research-brief.md)
- [investigation-timeline-builder](./investigation-timeline-builder.md)
- [foia-request-writer](./foia-request-writer.md)

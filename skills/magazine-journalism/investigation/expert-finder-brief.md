---
name: expert-finder-brief
status: stable
category: magazine-journalism
subcategory: investigation
version: 1.1
eval_score: 4.54
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
5. Closes with a "Next Step" note: which domain to contact first (typically the one that will build credibility for subsequent outreach), and whether research-brief-creator should be run to expand the full reporting plan beyond expert sourcing

## Output Format
Structured brief, 600–900 words. Sections: Story Questions Requiring Expert Input (bulleted), Expert Types by Domain (2–4 domains, each with expert roles + finding strategy + Platform-Specific Sourcing Tactics + approach note). Closes with a short Sourcing Risks section flagging common pitfalls for this story type. Practical, direct tone. Output ends with a "Next Step" note: which domain to contact first, the most important approach note to act on immediately, and whether research-brief-creator should be run to build the wider reporting plan.

## Platform-Specific Sourcing Tactics
Each domain's finding strategy MUST include a Platform-Specific Sourcing Tactics block — concrete, named, and parameterized search routes the reporter can execute the same day. Tactics are drawn from the patterns below and tailored to the specific expert type:

**LinkedIn**
- Use search filters: current and past job title combined with current or past employer (e.g., "Recovery Audit Contractor" past, "Cotiviti" past); filter by region and language as needed.
- "People also viewed" and "Also viewed" sidebar identifies adjacent expert profiles in the same role family.
- Save search filters and set up weekly alerts for new entrants matching the expert profile.
- Use mutual-connection second-degree intros where available — a one-line message to a shared contact converts at substantially higher rates than a cold InMail.

**Google Scholar / academic literature**
- Search the specific claim or finding rather than the topic — locate the paper, then identify its corresponding author. The corresponding author is usually the strongest first contact.
- Use "cited by" to find newer work and rising researchers in the field.
- Filter by publication year (last 3–5 years) to find currently active researchers; older corresponding authors may be retired or have moved fields.
- Cross-reference with the journal's editorial board for topic editors who handle this subject's submissions.

**Court records (PACER, state e-filing systems, RECAP)**
- Search by case type and statute (e.g., False Claims Act qui tam suits in healthcare under 31 U.S.C. §3729) to surface attorneys actively litigating in the area.
- Read complaint filings — relator's counsel is named on the docket; expert witnesses are sometimes listed in disclosure filings.
- Settlement press releases from DOJ, state AGs, and SEC enforcement divisions name the lead prosecutors and the firms representing defendants — both sides are sourceable.

**X (Twitter), Bluesky, Mastodon**
- Topic-specific lists curated by reporters in the beat are the highest-density expert directory available; follow established reporters and view their lists.
- Search recent posts on the specific claim or controversy to identify experts who have already engaged publicly — they have demonstrated willingness to speak.
- Quote-tweet patterns (who is challenging whom) reveal disagreements that are themselves story leads.

**Conference and event records**
- Recent conference programs (last 24 months) are the best snapshot of currently active researchers and practitioners.
- Plenary, keynote, and panel speakers are pre-vetted experts; their bios and contact info are usually published with the program.
- Conference recordings and slide decks (often posted on the organization's site or YouTube) let you assess whether the expert speaks clearly and on-message before contacting.

**Government registries and disclosure databases**
- Lobbying disclosures (Congress, state ethics commissions): name companies' registered lobbyists, often expert-adjacent and willing to discuss the regulatory landscape.
- Federal Advisory Committee Act (FACA) databases: public-facing expert advisory committees include credentialed experts in their fields.
- Inspector General reports, GAO reports, and CRS reports: cited interviewees and named subject-matter experts in the report's footnotes.
- ProPublica's "Nonprofit Explorer" and Form 990s: identify funder-grantee relationships, board members, and senior staff at nonprofits relevant to the story.

**Whistleblower and trade association networks**
- Whistleblower attorneys (qui tam, SOX, Dodd-Frank) maintain networks of former-employee sources and are often the most efficient route to frontline workers willing to speak.
- Professional and trade associations (AAPC, AHIMA, SHRM, etc.) maintain member directories — useful for credentialed practitioners.
- Union locals and worker centers often have organizers who know which workers will speak and which will not.

**Local and regional registries**
- State medical boards, bar associations, and licensing registries: confirm credential status; identify regional experts not visible on national platforms.
- University faculty pages of regional institutions: regional experts are systematically underrepresented on national finding routes; search the university's directory by department.

For each domain in the brief, select 2–3 of these platforms most relevant to that expert type and describe the specific search query, filter, or document path the reporter should use.

## Quality Criteria
- [ ] Each expert type is mapped to a specific story question it answers
- [ ] Finding strategies are actionable and specific — not "search Google" but named databases, directories, or institutions
- [ ] Brief distinguishes neutral experts from those likely to have advocacy positions
- [ ] Approach notes are realistic — accounts for why experts might be reluctant and how to address that
- [ ] Sourcing risks section flags at least one story-specific pitfall
- [ ] Output includes at least one concrete next action the user can take immediately (contact the first domain's expert type, use the finding strategy for the most critical domain, or run research-brief-creator)

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
- *Platform-specific sourcing tactics:*
  - LinkedIn: search past job title "compliance officer" + past employer "CMS" or "Centers for Medicare & Medicaid Services"; filter by U.S. region; save the search and set up weekly alerts. Repeat with past job title "CPC" + past employer name of the hospital network in question.
  - PACER / RECAP: search False Claims Act case filings under 31 U.S.C. §3729 in the past five years where the defendant is a hospital network; relator's counsel is named on the docket. Pull the unsealed complaints and note the named expert witnesses in expert disclosures.
  - DOJ press releases: filter the DOJ healthcare fraud press release archive by year; settlements over $10M name lead prosecutors and defense firms — both sides are sourceable post-settlement.
  - Conference programs: AAPC HEALTHCON and AHIMA's annual convention programs from the last 24 months list session leaders and panelists — these are pre-vetted credentialed experts.
- *Approach note:* Frame as background education first. Many compliance professionals will not go on record but will verify your understanding of the technical landscape. Attorneys in active qui tam cases cannot discuss pending litigation but can speak generally.

**Domain 2: Medicare auditing and CMS oversight**
- *Expert types:* Former Recovery Audit Contractors (RAC auditors); former CMS regional office staff; academic health policy researchers who study Medicare integrity programs
- *Finding strategy:* Health Affairs and JAMA Health Forum author lists; National Academy for State Health Policy conference programs; LinkedIn search for former RAC auditor roles at the major contracting firms (Cotiviti, Performant)
- *Platform-specific sourcing tactics:*
  - LinkedIn: search past job title "Recovery Audit Contractor" or "RAC auditor" + past employer "Cotiviti" or "Performant Recovery"; filter by U.S. and second-degree connections; "People also viewed" surfaces adjacent profiles in the same role family.
  - Google Scholar: search the specific Medicare integrity finding (e.g., "Recovery Audit Contractor program effectiveness") sorted by recent year; corresponding authors of the most-cited last-3-years papers are the strongest first contacts. Use "cited by" to find newer rising researchers.
  - GAO reports and HHS Office of Inspector General reports on Medicare integrity from the last five years: cited interviewees and named experts in footnotes are direct sourcing leads.
  - Federal Advisory Committee Act (FACA) database: members of CMS-adjacent advisory committees are public, credentialed, and expect to be contacted on policy questions.
  - X / Bluesky: follow established healthcare-policy reporters (e.g., the Tradeoffs podcast, Health Affairs) and view their topic lists for already-vetted experts.
- *Approach note:* Former CMS staff are often willing to speak once they've cleared government ethics restrictions (typically one year). Lead with the systemic question, not the specific hospital, to lower defensiveness.

**Domain 3: Healthcare fraud investigation and prosecution**
- *Expert types:* Former Department of Justice healthcare fraud unit prosecutors; former HHS Office of Inspector General agents; academic criminologists who study white-collar healthcare fraud
- *Finding strategy:* DOJ press releases for healthcare fraud settlements in the past five years — prosecutors who tried those cases are often now in private practice and will discuss systemic patterns; health law faculty at major law schools (Georgetown, Penn, Vanderbilt health law programs)
- *Platform-specific sourcing tactics:*
  - DOJ healthcare fraud press release archive: filter by year and FCA cases; named Assistant U.S. Attorneys often move to private practice within 2–3 years and become reachable via LinkedIn or law-firm bio pages.
  - LinkedIn: search past job title "Assistant U.S. Attorney" or "Special Agent" + past employer "Department of Justice" or "HHS-OIG"; cross-reference with the DOJ press release names from the prior step.
  - Law school faculty pages: Georgetown Health Law, Penn Carey Law's health law program, Vanderbilt Law's health policy faculty, Seton Hall Law (substantial healthcare fraud bench). Each program publishes faculty research interests and contact info; corresponding authors of recent law review articles are direct contacts.
  - Conference programs: ABA Health Law Section's annual meeting; American Health Law Association (AHLA) Fraud and Abuse program — recent panelists are credentialed and accustomed to speaking publicly.
- *Approach note:* These sources respect specificity. Come with data. Vague allegations will be dismissed; documented billing anomalies will get their attention.

**Domain 4: Frontline billing staff and patient advocates**
- *Expert types:* Current or former hospital billing coders willing to speak on background; patient advocates who help individuals dispute hospital bills; hospital chaplains or social workers (often aware of billing pressure on care decisions)
- *Finding strategy:* Healthcare whistleblower attorneys often have former-employee contacts willing to speak; patient advocacy organizations (Patient Advocate Foundation, National Patient Advocate Foundation) can connect with affected patients and their advisors
- *Platform-specific sourcing tactics:*
  - Whistleblower attorney networks: identify the top qui tam firms (Phillips & Cohen, Berger Montague, Constantine Cannon) and reach out to relator's counsel — they often have former-employee contacts who would speak on background even outside an active case.
  - LinkedIn: search past job title "billing coder" or "patient financial services" + past employer (the specific hospital network); filter by region and tenure (5+ years suggests substantive insight).
  - Reddit communities: r/medicalcoding, r/healthIT — read recent threads on upcoding and compliance pressure to identify users with credible insider knowledge; reach out via DM with clear identification as a journalist.
  - Patient advocacy nonprofits' Form 990s (via ProPublica Nonprofit Explorer) identify board members and senior staff — frequently the most knowledgeable about systemic billing issues.
  - State nurses' associations and SEIU healthcare locals: union representatives sometimes know which workers will speak and serve as a vetted introduction route.
- *Approach note:* Protect these sources aggressively. Do not name them in early interviews with other experts. Non-disclosure matters more than speed here.

---

**Sourcing Risks**

- *Advocacy capture:* Healthcare billing is heavily litigated. Experts recommended by hospital trade associations (AHA, AAMC) will almost certainly defend upcoding as coding complexity, not fraud. Weight their input accordingly.
- *Active litigation:* If a federal qui tam suit already exists against this hospital network, some expert sources may be legally restricted from discussing the case. Check Pacer before cold-calling attorneys.
- *Overreliance on government sources:* Former CMS and DOJ sources understand the system but may understate endemic problems to avoid implicating former colleagues. Balance with plaintiff-side attorneys and academic researchers.

---

**Next Step:** Begin with Domain 3 (former DOJ prosecutors) — their expert-witness credibility builds the foundation for everything else. Pull DOJ press releases for the past five years' largest healthcare-fraud settlements today and cross-reference the named prosecutors against LinkedIn for current law-firm affiliations. Run research-brief-creator next to map the full reporting plan around these expert pillars.

## Known Limitations
- This brief identifies expert types and finding strategies based on the story description provided. It cannot verify whether specific named individuals or institutions are currently active, willing to speak, or without conflicts.
- For highly localized stories, national expert directories may not yield local sources — regional bar associations, state medical boards, and local university departments require separate searching.
- Expert availability is unpredictable. Stories with 10+ week lead times can build out expert sourcing; stories on 48-hour deadlines need a faster track not fully captured here.

## Related Skills
- [source-research-brief](./source-research-brief.md)
- [investigation-timeline-builder](./investigation-timeline-builder.md)
- [foia-request-writer](./foia-request-writer.md)

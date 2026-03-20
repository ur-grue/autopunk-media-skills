---
name: corporate-structure-brief
status: stable
category: research
subcategory: background
version: 1.0
eval_score: 4.44
tags: [research, corporate, ownership, structure, investigation, background]
---

# Corporate Structure Brief

## What This Skill Does
Produces a structured research plan for mapping the ownership, governance, and organisational structure of a company or corporate group — identifying the public registries, filings, and databases to consult and the specific questions to answer about who controls the entity and how money flows through it.

## When To Use This Skill
- You are investigating a company and need to understand its ownership structure, subsidiaries, and key controllers before writing about it
- You need to verify who actually owns or controls an entity that is part of a story — not just who appears on the website
- You are covering a corporate deal, controversy, or failure and need to map the relevant corporate structure quickly
- You are researching a media outlet, think tank, or non-profit and need to understand its corporate affiliations and funding relationships

## What You Need To Provide
**Required:** The name of the company or entity; the country of incorporation or primary operation.

**Optional:** The specific aspect of the structure you need to understand (ownership, board composition, subsidiaries, financial flows, offshore entities); any information you already have (parent company, key shareholders, known subsidiaries); the reason for your research (helps prioritise which structural elements matter most); the level of depth needed (basic corporate profile vs. deep ownership trace).

## How Claude Approaches This
1. **Identifies the registry and filing sources.** Based on the country of incorporation and entity type, lists the specific company registries, securities regulators, and financial disclosure databases where the entity's filings can be found. Names the exact registry (not just "company records") and specifies what information each source contains.

2. **Builds the ownership trace checklist.** Creates a step-by-step process for tracing ownership from the company up through any parent entities, holding companies, or ultimate beneficial owners — and down through subsidiaries and associated entities. Each step identifies the specific document to obtain (articles of incorporation, annual returns, shareholder registers, securities filings).

3. **Maps the governance structure.** Lists the sources for identifying directors, officers, and key personnel — and the records that reveal their other roles, financial interests, and potential conflicts (directorship registers, remuneration reports, related-party transaction disclosures).

4. **Identifies the financial flow indicators.** For companies with complex structures, lists the filings that reveal how money moves between entities — intercompany loans, management fees, licensing payments, and transfer pricing arrangements. Specifies which regulatory filings or annual accounts contain this information.

5. **Flags the structural red flags.** Identifies the patterns in corporate structure that warrant deeper investigation — shell companies in secrecy jurisdictions, nominee directors, circular ownership, related-party transactions, and recent structural changes made before or after significant events.

## Output Format
700–1,000 words. Four sections: **Registry and Filing Sources** (bulleted list of specific sources with what each contains), **Ownership Trace Checklist** (step-by-step process), **Governance and Personnel** (sources for identifying key people and their interests), and **Red Flags to Investigate** (3–5 structural patterns to look for). Tone: methodical, precise, written for an investigative journalist or researcher. No assumptions about what the journalist will find.

## Quality Criteria
- [ ] Registry sources are named specifically and are real, accessible databases — not generic references to "public records"
- [ ] Ownership trace checklist provides a clear, step-by-step process — not a vague instruction to "follow the money"
- [ ] Governance sources include both formal filings and supplementary records (LinkedIn, previous company filings, professional directories)
- [ ] Financial flow indicators are specific to the entity type and jurisdiction
- [ ] Red flags are genuinely indicative of complexity or risk — not a list of things that are always suspicious
- [ ] The plan accounts for the specific jurisdiction's disclosure requirements and their limitations
- [ ] Output could be handed to an investigative researcher with no additional briefing

## Example

### Input
**Company:** A mid-sized private property development company that has won several large government contracts for social housing construction
**Country:** A Western European country with a comprehensive company registry
**Aspect:** Ownership structure and any connections between the company's owners and government officials involved in awarding the contracts
**Depth:** Deep investigative trace

### Output

**Registry and Filing Sources**

- **National company registry (e.g., Companies House, Handelsregister, or equivalent).** Search by company name and registration number. Obtain: current and historical list of directors and shareholders, articles of association, annual confirmation statements, and filed accounts. Note: some registries allow bulk download of all filings for a single entity. Check both the primary company and any entities listed as shareholders.

- **Beneficial ownership register.** Many European countries now maintain public registers of persons with significant control (PSCs) or ultimate beneficial owners (UBOs). Search for the company and note any natural persons listed as beneficial owners. Cross-reference with the shareholder register — if the beneficial owner is different from the registered shareholder, investigate the intermediary structure.

- **Land registry / property register.** Search for properties registered to the company or its subsidiaries. For a property developer, the portfolio of owned or leased land is a key asset and may reveal connections to other entities or individuals.

- **Government procurement database.** Obtain the full details of the government contracts awarded — contract value, date, awarding authority, tender documents, and any subcontracting arrangements. Note the names of officials involved in the procurement decision.

- **Annual accounts and audit reports.** Obtain the filed accounts for at least the last five years. Look for: related-party transactions, intercompany loans, management fees paid to connected entities, and auditor qualifications or notes about going-concern issues.

- **Securities filings (if any subsidiary or parent is publicly listed).** Search the national securities regulator for any prospectuses, annual reports, or disclosure filings. These often contain more detailed ownership and financial information than company registry filings.

- **Charity and non-profit registries.** Check whether the company's owners or directors are connected to any charities, foundations, or non-profit entities — these can be vehicles for political donations or reputation management.

**Ownership Trace Checklist**

1. Start with the company's current shareholder register (obtained from the company registry). List all shareholders with their percentage holdings.
2. For any corporate shareholder (a company that owns shares in the target company), repeat the process: search the company registry for that entity's own shareholders. Continue up the chain until you reach natural persons or entities that cannot be further resolved.
3. For each entity in the chain, note: country of incorporation, date of incorporation, registered office address, and named directors. Flag any entities incorporated in jurisdictions with limited disclosure requirements.
4. Check the beneficial ownership register for each entity in the chain. Compare the PSC/UBO entries with the shareholder register — discrepancies indicate complexity.
5. Search for any historical changes in ownership — share transfers, new incorporations, or changes of director — particularly in the period around the government contract awards.
6. For each natural person identified as an owner, director, or beneficial owner, search: the directorship register for other companies they control, the land registry for properties in their name, and the political donation register for contributions.

**Governance and Personnel**

- **Current and former directors** — obtain from company registry. For each director, search the registry for all other companies where they hold or have held directorships. Note any companies with government connections, political entities, or entities that share addresses with the target company.
- **LinkedIn and professional directories** — cross-reference director names to identify their professional history, particularly any previous roles in government, public procurement, or related agencies.
- **Political donation registers** — search for donations made by the company, its directors, or its beneficial owners to political parties, candidates, or campaigns — particularly those connected to the officials who awarded the contracts.
- **Register of interests for public officials** — if the awarding officials are elected representatives or senior civil servants, check their declared interests for any connection to the company, its owners, or its associated entities.
- **Remuneration and related-party disclosures** — in the annual accounts, check for director remuneration, loans to directors, and any transactions with entities controlled by directors or their families.

**Red Flags to Investigate**

1. **Ownership changes timed around contract awards.** If shares were transferred, new holding companies incorporated, or directors changed in the months before or after the government contracts were awarded, investigate the purpose and the parties involved.
2. **Layered ownership through multiple jurisdictions.** If the ownership chain passes through entities in countries with weaker disclosure requirements, this may be legitimate tax planning or it may obscure the identity of the ultimate beneficial owner. Each layer needs to be traced.
3. **Shared addresses or directors with other entities.** If the company shares a registered office, director, or company secretary with other entities — particularly entities connected to government officials or procurement consultants — this warrants investigation.
4. **Related-party transactions in the accounts.** Payments for management fees, consultancy, or licensing to entities controlled by the same beneficial owners can be a mechanism for extracting value. Check whether these transactions are disclosed, whether the amounts seem proportionate, and whether the recipient entities have substance (employees, offices, real activity).
5. **Nominee directors or corporate directors.** If any directors are nominee service providers rather than individuals with a real management role, the actual controller may not appear in the public record. Check whether the registered directors match the people who actually run the business.

## Known Limitations
- Claude cannot access company registries, beneficial ownership databases, or any external records. This skill produces the research plan — the journalist or researcher must execute the searches. The value is in ensuring systematic and thorough coverage of all relevant source categories.
- Disclosure requirements and registry accessibility vary enormously between jurisdictions. The plan is tailored to the jurisdiction described, but the journalist should verify which sources are publicly accessible, which require paid subscriptions, and which require formal access requests.
- Complex corporate structures may involve entities in dozens of jurisdictions. This skill provides the methodology for tracing them, but the practical effort required to trace a multi-jurisdictional corporate chain can be substantial and may require collaboration with colleagues or specialist investigators.

## Related Skills
- [funding-source-investigator](./funding-source-investigator.md) — investigate funding sources for non-profits or campaigns connected to the entity
- [person-biography-brief](../people/person-biography-brief.md) — research the individuals identified as owners or directors
- [policy-decision-maker-mapper](../people/policy-decision-maker-mapper.md) — map the government officials involved in the contract awards
- [legal-framework-brief](../fact-checking/legal-framework-brief.md) — understand the legal requirements for corporate disclosure in this jurisdiction

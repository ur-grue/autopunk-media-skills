---
name: org-structure-researcher
status: beta
category: research
subcategory: facts-context
version: 1.0
eval_score: null
tags: [research, organisations, institutions, structure, hierarchy, background]
---

# Org Structure Researcher

## What This Skill Does
Produces a structured research framework mapping the internal hierarchy, key decision-makers, departments, and reporting lines of any company, institution, or organisation — so journalists can understand who holds power and how decisions get made before conducting interviews or publishing a story.

## When To Use This Skill
- You are covering a story about a company, government agency, NGO, or institution and need to understand who actually runs it before making contact
- You need to know which department or executive is responsible for a decision you are reporting on
- You are preparing for a senior-level interview and need to understand where your subject sits in the hierarchy
- You are investigating an organisation and need to map relationships between divisions, subsidiaries, or leadership roles
- A source has mentioned an internal unit or job title you do not recognise and you need to place it in context

## What You Need To Provide
**Required:** The name of the organisation and the type of story you are working on (investigation, profile, breaking news, feature, documentary)

**Optional:** The specific department, executive, or decision you are researching; the country or jurisdiction the organisation operates in; any known subsidiary names or brands; whether the organisation is public, private, or state-owned

## How Claude Approaches This
1. Identifies the organisation type (publicly listed company, private firm, government body, NGO, media group, etc.) and explains how that type typically structures its leadership and governance — this gives you a baseline before you start verifying
2. Outlines the standard hierarchy for that organisation type: what roles typically exist, what each is responsible for, and how power flows between them — framed as questions to verify, not facts to accept
3. Lists the specific research questions a journalist should answer for this organisation, grouped by tier (board level, executive leadership, operational management, key departments), and suggests where public records, filings, or official directories are most likely to yield verified answers
4. Flags any structural features that are especially relevant to the story type — for example, which board committee handles the decision under investigation, or which executive typically speaks publicly on the subject

## Output Format
Structured brief of 500–700 words. Four sections: (1) Organisation type and governance baseline, (2) Leadership tiers to map — presented as a hierarchy with role names and their typical responsibilities, (3) Research questions to verify — bulleted, grouped by tier, (4) Where to look — specific record types and public sources relevant to this organisation type and jurisdiction. Plain prose throughout; no jargon. Written so a reporter with no corporate background can follow it immediately.

## Quality Criteria
- [ ] Output is framed as a research framework — questions to investigate — not factual assertions about specific real people or entities
- [ ] Leadership tiers are clearly distinguished (board, C-suite, divisional, operational) with each level's typical decision-making remit explained
- [ ] Research questions are specific and answerable through public or semi-public sources
- [ ] Source suggestions are appropriate to the organisation type and jurisdiction (e.g. Companies House for UK, SEC filings for US-listed firms, charity commission records for NGOs)
- [ ] Output does not repeat general facts the journalist already knows — it advances what they need to find out

## Example

### Input
Organisation: Hartfield Energy Group — a mid-sized private energy company operating in three European countries. Story type: investigation into a government supply contract that was awarded without open tender. I know the CEO's name but nothing about who sits above or below them, or which internal team would have handled the tender process.

### Output

**Organisation type and governance baseline**

Hartfield Energy Group is a private company, which means it has no obligation to publish shareholder registers, board meeting minutes, or executive pay. However, private companies operating across multiple EU jurisdictions must file basic corporate records in each country where they are registered — and those records often reveal directors' names, registered subsidiaries, and ultimate beneficial ownership. The absence of a stock exchange listing does not mean the structure is unknowable; it means you need to work from multiple national registries rather than a single annual report.

**Leadership tiers to map**

*Board / ownership level:* Who are the shareholders or parent entities? Does a holding company sit above Hartfield? Are there private equity or sovereign wealth fund investors who may have governance rights? Board members are often listed in national filings even when not publicised.

*Executive leadership (C-suite):* The CEO is confirmed. You will want to establish: Is there a CFO, COO, or General Counsel? Which executive owns government relations and public procurement? In energy companies of this size, a Chief Commercial Officer or VP of Business Development often leads tender activity.

*Divisional / operational level:* Which division covers the country where the contract was awarded? Energy groups of this type typically structure operations by geography or by business line (generation, distribution, retail). The relevant division head may have been the actual decision-maker on the bid.

*Legal and compliance:* Contracts of this value typically require sign-off from in-house legal counsel. Identify who holds that role and whether it is a named individual or an external law firm acting on retainer.

**Research questions to verify**

Board and ownership:
- Who are the registered directors in each country of operation?
- Is there a parent holding company, and if so, where is it registered?
- Have ownership or directorship changes occurred in the 18 months before the contract was awarded?

Executive leadership:
- Which executive is publicly named on government relations or procurement matters?
- Has any senior leader previously worked for the contracting government ministry?
- Are there disclosed conflicts of interest in any national filing?

Divisional structure:
- Which operating entity — legal entity, not brand — signed the contract?
- What is that entity's registered address and directorship?

**Where to look**

For each country of operation, check the national business registry (e.g. Registre du Commerce for France, Handelsregister for Germany, Companies House if there is a UK entity). Cross-reference against the EU Transparency Register if Hartfield lobbies EU institutions. The specific contract may be listed in national public procurement databases — in the EU, TED (Tenders Electronic Daily) publishes awarded contracts above threshold values. LinkedIn is a useful secondary check for divisional structure and career histories, but treat it as a lead generator, not a verified source. If the company has issued press releases about major contracts, these often name the executive responsible.

---

## Known Limitations
- This skill maps the framework for research — it does not retrieve live company filings or verify current personnel. All outputs must be checked against primary sources before publication.
- Private companies in some jurisdictions (notably certain offshore structures or family-owned groups) may have minimal public disclosure obligations, leaving significant gaps that cannot be filled through open-source research alone.
- Organisational structures change frequently. An org chart that was accurate six months ago may no longer reflect current reality — particularly after mergers, restructurings, or leadership changes.
- The skill cannot assess which individuals are genuinely powerful versus which merely hold a senior title. Informal power structures require human source reporting.

## Related Skills
- [ownership-structure-researcher](ownership-structure-researcher.md)
- [people-contacts/expert-identifier](../../people-contacts/expert-identifier.md)
- [facts-context/background-brief-writer](background-brief-writer.md)

---
name: contact-info-researcher
status: beta
category: research
subcategory: people-contacts
version: 1.0
eval_score: null
tags: [research, contacts, outreach, sourcing, journalism]
---

# Contact Info Researcher

## What This Skill Does
Builds a structured research framework for locating publicly available contact routes for a named person — including institutional channels, public profiles, press offices, and professional directories — so you know exactly where to look and in what order.

## When To Use This Skill
- You have a name and a story angle, but no idea how to reach the person
- You need to find a press contact, institutional email, or public booking address for an expert or official
- You are cold-contacting someone for the first time and want to approach through the most appropriate channel
- A direct email has bounced and you need alternative routes to the same person

## What You Need To Provide
**Required:** Full name of the person · Their professional role or job title · The organisation or institution they are affiliated with (if known)

**Optional:** Country or region they operate in · The type of content you are producing (news article, documentary, podcast, etc.) · Any public platforms you already know they use (LinkedIn, X/Twitter, personal website) · Whether you need a personal contact or an institutional press/PR route

## How Claude Approaches This
1. Identifies the person's professional context — their sector, institution type, and seniority level — to determine which contact channels are most likely to exist and be monitored
2. Maps the most productive public sources in priority order: institutional websites, official press offices, professional association directories, academic databases, conference speaker pages, public social profiles, and journalist-specific contact aggregators
3. Produces a step-by-step research plan you can execute yourself, with specific URLs, search terms, and search operators to use — without inventing or guessing any contact details

## Output Format
A structured research brief of 350–500 words. Organised into three sections: (1) Most Likely Contact Routes, listed in recommended order with the rationale for each; (2) Specific Places To Search, with named databases, directories, and search strategies; (3) Outreach Notes, covering how to approach this type of contact and what to put in a first message. Plain professional English. No bullet-point overload — each item carries a reason.

## Quality Criteria
- [ ] At least four distinct contact routes are identified, each with a clear rationale
- [ ] No real contact details are invented — the output is a research map, not a directory
- [ ] Search strategies include specific, actionable terms or operators, not vague advice
- [ ] Outreach notes are tailored to the person's role (academic, official, public figure, executive, etc.)
- [ ] The framework is usable by someone with no specialist research training

## Example

### Input
Name: Dr. Marta Solano
Role: Professor of urban planning, specialising in housing policy
Institution: Unknown — but she has published academic papers and given conference talks in the EU context
Story: A 30-minute radio documentary on the shortage of affordable housing in mid-sized European cities
Type of contact needed: Academic expert willing to give a recorded interview

### Output

**Contact Research Framework: Dr. Marta Solano**
*For radio documentary — affordable housing in European cities*

---

**Most Likely Contact Routes (in recommended order)**

1. **University faculty page** — Most EU academics have an institutional profile with a publicly listed email address. Search: `"Marta Solano" urban planning site:.edu OR site:.ac.uk OR site:.eu`. If she holds a chair or leads a research group, the group page often lists a direct contact.

2. **Google Scholar / ResearchGate / Academia.edu** — Academics who publish actively usually maintain at least one of these profiles. ResearchGate in particular allows direct messaging and often shows institutional email addresses. Search her full name plus "housing policy" or "urban planning."

3. **Conference programme archives** — If she has given talks at EU-funded or academic conferences, the programme PDF often lists her institutional affiliation at time of presentation, which may differ from her current one and give you a second institution to search. Try: `"Marta Solano" "urban planning" filetype:pdf conference programme`.

4. **ORCID registry** — ORCID (orcid.org) is a public researcher identifier system. Search her name; her profile may list her current institution and link to her institutional page.

5. **LinkedIn** — Less reliable for academics than institutional routes, but worth checking. A connection request with a brief professional message explaining your project is a low-friction first approach.

---

**Specific Places To Search**

- **BASE (base-search.net)** — European academic search engine; often surfaces institutional affiliations not visible on Google
- **CORDIS (cordis.europa.eu)** — EU research funding database; if she has led or participated in an EU-funded project, her institution and often a project email are listed
- **Conference series relevant to her field:** ENHR (European Network for Housing Research) annual congress, AESOP (Association of European Schools of Planning) — both maintain speaker archives online

---

**Outreach Notes**

Dr. Solano is an academic, not a media professional. Her primary audience is peer researchers and policy bodies. In your first message:

- Explain the format and broadcaster/platform briefly — academics want to know their words will be used responsibly and will reach a relevant audience
- Mention that you have read specific work of hers (cite a paper or talk by name — do not bluff)
- Be explicit that you are requesting a recorded interview and indicate the expected length and recording method
- Give a two-week window for response before following up; academics work to semester rhythms, not editorial deadlines

If the direct route yields nothing after two attempts, contact the press office of her institution — most European universities have a media relations team that handles journalist requests and can facilitate introductions.

## Known Limitations
- Claude cannot access live databases, directory websites, or real contact records — the output is a research strategy, not a result. You must execute the searches yourself.
- For very private individuals (no institutional affiliation, no public profile), this framework will identify fewer routes; some contacts simply cannot be found through public means.
- Contact availability changes — an address found via a 2022 conference PDF may no longer be monitored. Always verify currency before sending.
- This skill is optimised for English-language research contexts; finding contacts in countries with limited English-language web presence may require additional local-language search strategies not covered here.

## Related Skills
- [interview-partners-brief](./interview-partners-brief.md)
- [expert-identifier](./expert-identifier.md)

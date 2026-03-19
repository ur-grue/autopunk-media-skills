---
name: expert-identifier
status: beta
category: research
subcategory: people-contacts
version: 1.0
eval_score: null
tags: [research, sourcing, experts, journalism, pre-production, investigation]
---

# Expert Identifier

## What This Skill Does
Generate a structured expert-sourcing strategy for a story — identifying the types of experts needed, the criteria for selecting them, where to look, and what questions to ask when vetting candidates.

## When To Use This Skill
- You are starting a story that needs specialist sources and are not sure what expertise to look for
- You want to broaden source diversity beyond the contacts you already have on a beat
- You are researching a niche or technical topic and need a systematic approach to finding credible voices
- You are building a source list for a documentary series or podcast season and need coverage across multiple knowledge domains

## What You Need To Provide
**Required:** The story topic or angle; what expertise is needed and why it matters to the story.

**Optional:** Geographic preference (local, national, international sources); whether academic, industry, government, or civil society experts are preferred; any experts already identified (to avoid duplication); how many expert categories the story needs.

## How Claude Approaches This
1. Identifies the distinct knowledge domains the story touches — separating the technical, contextual, and experiential dimensions
2. For each domain, defines the ideal expert profile: what credentials, experience type, and perspective would make someone credible and useful for this story
3. Suggests the categories of institution where such experts are typically found — universities, professional associations, government agencies, NGOs, regulatory bodies, industry groups — without naming specific individuals
4. Provides vetting questions the journalist can ask when evaluating a candidate, to distinguish genuine experts from media-friendly generalists
5. Includes a diversity check: prompts to ensure the proposed source list is not homogeneous by background, institution type, or perspective

## Output Format
Structured sourcing plan with four sections: **(1) Expert categories** (3–5), each with a profile description and a short explanation of why that expertise matters for this specific story; **(2) Where to look** for each category (institutional types and search approaches, not named organisations or individuals); **(3) Vetting questions** (3–5 questions to ask a candidate before committing to them as a source); **(4) Diversity check** — prompts to identify gaps or homogeneity in the proposed source mix. Total: 300–500 words.

## Quality Criteria
- [ ] No named individuals — the output contains expert profiles and institutional categories, not specific people
- [ ] Each expert category is clearly tied to a specific story need, not included generically
- [ ] Vetting questions are specific and probing (not generic "are they qualified?")
- [ ] Diversity check is included and covers more than one dimension (e.g. institutional affiliation, perspective, geography)
- [ ] The strategy is immediately actionable — a journalist could begin searching within the hour

## Example

### Input
Topic: A feature article on the long-term health effects of shift work in the logistics industry.

What expertise is needed: Medical evidence on health outcomes; the employer perspective on shift scheduling; the lived experience of logistics workers.

Geographic preference: UK-based sources preferred, but international medical research acceptable.

### Output

**Expert sourcing strategy: Shift work and health in logistics**

---

**Expert Category 1: Occupational medicine and sleep science**

*Profile:* A clinician or researcher who studies the health effects of circadian disruption — specifically the outcomes associated with rotating or night-shift patterns rather than shift work generally. Ideally has published peer-reviewed research on cardiovascular, metabolic, or mental health outcomes in shift workers. Academic affiliation preferred; industry-funded researchers should be disclosed.

*Where to look:* University departments of occupational medicine, sleep research institutes, public health faculties. Search via academic databases (PubMed, Google Scholar) for recent UK-based authors on shift work health outcomes. Medical Royal Colleges maintain lists of specialist members willing to comment.

---

**Expert Category 2: Logistics sector employer representative**

*Profile:* A senior HR, operations, or workforce planning executive at a logistics or distribution company who can speak to shift scheduling decisions — why patterns are designed as they are, what constraints exist, what (if anything) has changed. A trade association spokesperson is acceptable as a secondary source but less useful than a practitioner.

*Where to look:* Logistics UK and the Road Haulage Association have press offices. Major distribution companies' corporate communications teams. LinkedIn is effective for identifying current or former workforce directors willing to speak on background.

---

**Expert Category 3: Worker advocate or union representative**

*Profile:* A union official or worker advocacy representative with experience on shift work conditions in logistics and warehousing. Should be able to speak to the gap between employer claims and worker experience, and to what collective bargaining has and has not achieved.

*Where to look:* Unite the Union (transport and logistics sector); GMB union; the Trades Union Congress. Worker-led campaign groups focused on warehousing conditions are also worth considering as secondary sources.

---

**Vetting questions (ask before confirming any source)**

1. Have you worked directly with logistics or distribution workers, or is your expertise broader (shift work generally)?
2. Is your research or role funded by any organisation with a stake in shift scheduling policy?
3. Are you able to speak on the record, and do you need to clear quotes with a communications team?
4. Can you point me to two or three pieces of your published work or public statements on this topic?

---

**Diversity check**

Before finalising your source list, confirm: Is more than one gender represented? Are all sources from large institutions, or do you have at least one practitioner or worker voice? Do your medical sources include both researchers and clinicians? Is the employer perspective represented by a company that is not currently under investigation or in litigation (which would constrain what they can say)?

## Known Limitations
- This skill produces a SOURCING STRATEGY, not a list of named experts. Claude does not have reliable, up-to-date information about specific individuals' credentials, institutional affiliations, or current availability — the journalist must execute the search strategy
- Expert willingness to speak, availability, and institutional restrictions on commenting are not predictable and are outside the scope of this skill
- The institutional categories suggested are based on general knowledge of how expertise is typically distributed — niche or emerging fields may require a different search approach
- For stories involving legal proceedings or politically sensitive topics, source vetting requires additional considerations (legal exposure, political affiliation) that this skill does not systematically address

## Related Skills
- [biography-researcher](biography-researcher.md)
- [interview-question-catalogue](../../pre-production/interview-question-catalogue.md)

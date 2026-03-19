---
name: biography-researcher
status: beta
category: research
subcategory: people-contacts
version: 1.0
eval_score: null
tags: [research, biography, interview-prep, journalism, pre-production, due-diligence]
---

# Biography Researcher

## What This Skill Does
Generate a structured biographical research template for a named person — listing the key facts to verify, the categories of information to gather, and the questions to ask during or before an interview.

## When To Use This Skill
- You are preparing for an interview with a public figure and need to know what to verify before the meeting
- You are writing a profile and need a systematic research framework to ensure you have not missed important context
- You are conducting due diligence on a potential source before relying on them in a story
- You are beginning pre-production research on a documentary subject and need a repeatable research structure

## What You Need To Provide
**Required:** The person's name and their role or context (why they are relevant to the story or project).

**Optional:** What is already known about the person; specific areas of interest or concern for the story; whether the research is for an interview, profile, or background check; the publication or programme type (which affects what level of biographical detail is appropriate).

## How Claude Approaches This
1. Creates a structured research template organised by category: career timeline, public positions and statements, published or broadcast work, institutional affiliations, notable achievements, controversies or criticisms in the public record, and personal context relevant to the story
2. For each category, lists the specific items to verify — not a general description, but discrete checkable facts
3. Suggests the types of source to consult for each category (databases, publications, institutional records) without naming specific sources Claude cannot verify are current
4. Generates pre-interview questions that reference the research categories, so that interview preparation and research preparation are integrated
5. Includes a "red flags" section flagging the types of gap, inconsistency, or pattern to watch for in the research

## Output Format
Structured research template with four sections: **(1) Research categories** (5–7), each with specific items to verify; **(2) Suggested source types** for each category (not named sources); **(3) Pre-interview questions** (5–8) that reference the research template; **(4) Red flags** — the types of inconsistency or gap that would require further investigation. Total: 400–600 words.

## Quality Criteria
- [ ] No fabricated biographical details — the template contains questions and categories, not invented facts about the named person
- [ ] Research categories are specific to the person's role and the story angle, not generic biographical sections applied to everyone
- [ ] Pre-interview questions reference the research template (they build on what the research will have established)
- [ ] Suggested source types are actionable — the journalist knows where to look, not just what to look for
- [ ] Red flags section is included and identifies specific patterns relevant to this person's role and context

## Example

### Input
Person: Dr. Selene Marsh, newly appointed CEO of a regional hospital network.

Context: Being interviewed for a health policy magazine. Story angle: how her background in public health — rather than hospital administration — might change the network's approach to community health and preventive care.

What is known: She has a public health doctorate, previously worked for a regional health authority, and has spoken publicly about preventive care investment.

### Output

**Biographical research template: Dr. Selene Marsh, CEO, [Hospital Network]**

---

**Research Category 1: Career timeline**

Items to verify: Exact dates and titles of previous roles; whether she moved from the health authority directly to this role or had intermediate positions; any gaps in the public record; length of time spent in clinical versus administrative versus policy roles.

*Source types:* LinkedIn profile (cross-reference with institutional announcements); the health authority's archived press releases and annual reports; academic staff pages if she held a university appointment.

---

**Research Category 2: Public health doctorate and academic work**

Items to verify: Institution, year awarded, thesis topic; any subsequent published research or policy papers; whether she has continued to publish or comment academically since moving into administration.

*Source types:* University thesis databases; PubMed and Google Scholar for published work under her name; conference programme archives for keynote appearances.

---

**Research Category 3: Public positions and stated priorities**

Items to verify: What she has said publicly about preventive care, community health, or NHS reform; any positions that appear to have evolved or changed; whether her stated priorities align with decisions made in her previous roles.

*Source types:* Press cuttings (newspaper archives, trade health publications); speeches and presentations available online; published interviews.

---

**Research Category 4: Previous role — outcomes and record**

Items to verify: What measurable changes occurred during her tenure at the regional health authority; whether she was involved in any significant policy decisions, budget decisions, or controversies; how the authority performed on relevant health indicators during her time there.

*Source types:* Health authority annual reports and board minutes (often publicly available); Health Service Journal and similar trade press; freedom of information disclosures if any relevant decisions were publicly contested.

---

**Research Category 5: Institutional affiliations and interests**

Items to verify: Board memberships, advisory roles, or consultancy relationships alongside her main role; any affiliations with private healthcare providers, pharmaceutical companies, or healthcare technology firms that could represent a conflict of interest.

*Source types:* Companies House (directorships); published declarations of interest; professional body registers.

---

**Research Category 6: The new role — context and constraints**

Items to verify: Why the previous CEO left; what the hospital network's current financial position and CQC rating are; whether the board that appointed her has stated priorities that align with or conflict with her public health background.

*Source types:* NHS board meeting minutes (public); CQC inspection reports; local and trade press coverage of the network over the past two years.

---

**Pre-interview questions**

1. Your background is in public health rather than hospital administration — what specific changes to how the network allocates resources are you already considering, or have already begun?
2. In your previous role, what was the hardest preventive care initiative to get internal support for, and what did you learn from that?
3. Your published research has focused on [specific topic from research]. How does that work inform how you think about running a hospital network?
4. Hospital networks operate under significant financial constraints. Where does preventive care sit when there are competing pressures on the budget?
5. What does success look like for this role in three years, and how will you measure whether the network's approach to community health has actually changed?

---

**Red flags to watch for**

- Gaps of more than six months between roles that are not explained in public sources
- Public statements about preventive care investment that were not reflected in budget decisions during her previous role
- Any directorship or advisory role with a private health provider that has not been publicly disclosed
- Media coverage suggesting the previous CEO's departure was contentious — this may affect the political dynamics she is working within

## Known Limitations
- This skill produces a RESEARCH FRAMEWORK, not biographical facts. Claude may have outdated or incorrect information about real individuals — the template is designed to guide the journalist's own research, not replace it
- The template assumes the subject is a public figure with an accessible public record. Private individuals require additional ethical considerations, including data protection law, that this skill does not address
- For subjects in ongoing legal proceedings, editorial legal advice is required before publishing any biographical research — this skill does not flag legal risk
- The quality of the pre-interview questions depends on what is known about the person at input stage; thin input produces more generic questions

## Related Skills
- [expert-identifier](expert-identifier.md)
- [interview-question-catalogue](../../pre-production/interview-question-catalogue.md)

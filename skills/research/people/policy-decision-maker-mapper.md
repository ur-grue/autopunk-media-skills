---
name: policy-decision-maker-mapper
status: stable
category: research
subcategory: people
version: 1.0
eval_score: 4.5
tags: [research, policy, decision-makers, stakeholders, government, mapping]
---

# Policy Decision-Maker Mapper

## What This Skill Does
Produces a structured map of the key individuals and institutions with decision-making power over a specific policy issue — identifying who holds formal authority, who influences the process, and where the pressure points are for journalists covering the story.

## When To Use This Skill
- You are covering a policy debate and need to understand who actually decides the outcome, not just who is quoted in the press
- You need to identify the right people to interview for a story about government, regulatory, or institutional decision-making
- You are investigating lobbying or influence and need to map the formal and informal power structures around a specific issue
- You are new to a policy beat and need to quickly build a mental model of who matters and why

## What You Need To Provide
**Required:** The specific policy issue or decision (e.g., "proposed ban on single-use plastics in the packaging sector," not just "environmental policy"); the country or jurisdiction.

**Optional:** The stage of the policy process (proposal, consultation, legislative debate, implementation, review); specific institutions you already know are involved; the angle of your story (helps prioritise which actors to focus on); whether you are interested in formal decision-makers only or also informal influencers (lobbyists, think tanks, campaign groups).

## How Claude Approaches This
1. **Identifies the formal decision chain.** Maps the institutions with legal or procedural authority over the policy — the ministry or department responsible, the legislative committee, the regulatory body, the head of state or executive authority who signs off. For each, names the specific role (not the person, since office-holders change) and explains their decision-making power.

2. **Maps the influence ecosystem.** Identifies the categories of actors who influence the decision without formal authority — industry associations, trade unions, think tanks, campaign organisations, academic advisors, media commentators, and international bodies. For each category, explains how they typically exert influence (public advocacy, private lobbying, providing research, funding campaigns).

3. **Identifies the pressure points.** Based on the stage of the policy process, highlights where decisions can still be influenced and which actors have the most leverage at this stage — e.g., during consultation it is the civil servants drafting the regulation; during legislative debate it is swing-vote legislators and their staff.

4. **Provides a research checklist for each actor.** For each decision-maker or influencer category, lists the specific public records to check — lobbying registers, political donation records, consultation submissions, committee testimony, published position statements, and financial disclosures.

5. **Recommends interview priorities.** Suggests which 3–5 people (by role, not by name) the journalist should try to interview first, based on who has the most direct knowledge of the current state of the decision and who is most likely to speak on the record.

## Output Format
800–1,100 words. Four sections: **Formal Decision Chain** (numbered list of institutions and roles with their specific authority), **Influence Ecosystem** (bulleted list of actor categories with explanation of their leverage), **Research Checklist** (specific public records to check for each actor category), and **Interview Priorities** (3–5 roles to prioritise, with rationale). Tone: analytical, neutral, written for a journalist who needs to understand power structures quickly. No editorialising about whether the policy is good or bad.

## Quality Criteria
- [ ] Formal decision chain accurately reflects the policy-making process for the specified jurisdiction — not a generic description of "how government works"
- [ ] Influence ecosystem includes both supporters and opponents of the policy — not a one-sided map
- [ ] Pressure points are specific to the current stage of the policy process, not generic
- [ ] Research checklist names real, accessible public record types
- [ ] Interview priorities are justified with practical reasoning — not just "interview the minister"
- [ ] The map distinguishes between formal authority (who decides) and informal influence (who pushes)
- [ ] Output does not assume a position on the policy — it maps the landscape neutrally

## Example

### Input
**Policy issue:** A proposed national requirement for large employers (500+ staff) to publish annual pay-gap data broken down by gender and ethnicity
**Jurisdiction:** A democratic country with a bicameral legislature
**Stage:** The bill has passed its first legislative reading and is now in committee
**Story angle:** Which industries are lobbying hardest against the ethnicity pay-gap component and why
**Interest:** Both formal decision-makers and informal influencers

### Output

**Formal Decision Chain**

1. **Parliamentary committee (employment or equalities).** The bill is currently at committee stage. The committee chair controls the hearing schedule and amendment process. Committee members will propose amendments, hear testimony from invited witnesses, and vote on the bill's revised text before it returns to the full chamber. *This is the primary decision point right now.*

2. **Full lower chamber.** After committee, the bill returns for debate and a vote on the amended text. The governing party's whip determines the level of discipline on the vote; any free-vote designation would shift the calculus significantly.

3. **Upper chamber / second legislative house.** If passed by the lower chamber, the bill moves here for further scrutiny. Upper chambers often focus on technical and implementation issues rather than the principle of the policy.

4. **Minister responsible (Employment, Equalities, or equivalent).** The minister shapes the government's position, negotiates compromises, and instructs civil servants on acceptable amendments. If the government backs the bill, the minister's position on the ethnicity component is the key variable.

5. **Data protection or privacy regulator.** While not a decision-maker on the legislation itself, this regulator will be consulted on the data collection requirements. Their guidance on what employers can legally collect and publish regarding ethnicity will shape the bill's practical scope.

**Influence Ecosystem**

*Industry and employer groups*
- National employer federations and sector-specific trade associations (retail, finance, technology, construction). These groups are the most likely to lobby against the ethnicity component on grounds of data complexity, compliance cost, and legal risk. They typically influence through direct meetings with committee members, written submissions, and commissioning economic impact studies.

*Trade unions and worker advocacy groups*
- National union confederations and sector unions. Likely to support the bill but may push for stronger enforcement provisions. Influence through testimony, public campaigns, and relationships with labour-aligned legislators.

*Equalities and civil rights organisations*
- Campaign groups, legal advocacy organisations, and community representative bodies. Will push for the ethnicity component and may resist compromises that weaken it. Influence through public advocacy, media commentary, and providing legal analysis.

*Think tanks and academic advisors*
- Policy research institutes across the political spectrum. Will publish briefings and provide expert witnesses to the committee. Key question: which think tanks have the committee chair's ear?

*Legal and compliance firms*
- Employment law firms and HR consultancies. May lobby on technical grounds (data definitions, safe-harbour provisions) and will shape how employers perceive the compliance burden. Often provide witnesses to committees as "neutral experts" despite having commercial interests.

**Research Checklist**

*For industry groups:*
- Lobbying register — search for meetings between employer federations and committee members or the minister in the last 6 months
- Committee submission database — read written evidence submitted to the committee
- Political donation records — check whether major employer groups or individual companies have donated to committee members' campaigns
- Published position statements — check federation websites for press releases or policy papers on pay transparency

*For the committee:*
- Committee membership list — identify party affiliations and any members with declared interests in affected industries
- Register of members' interests — check for employment, consultancy, or shareholdings in large employers
- Previous voting records — check how committee members voted on related equalities legislation
- Witness list — see who the committee has invited to testify

*For the minister:*
- Parliamentary questions — search for the minister's answers on pay transparency and ethnicity data collection
- Meeting diary (if published) — check for meetings with industry or campaign groups
- Previous speeches — trace the minister's public statements on the ethnicity component specifically

**Interview Priorities**

1. **The committee chair** — controls the amendment process and hearing schedule. Most direct knowledge of where the bill is heading and which amendments have support.
2. **A swing-vote committee member from the governing party** — if any committee members are wavering on the ethnicity component, they are the story. Their concerns reveal the political pressure points.
3. **The lead lobbyist from the largest employer federation** — represents the organised opposition. Can explain the industry argument against the ethnicity component in concrete terms.
4. **A senior civil servant or ministerial advisor (background)** — can explain the government's bottom line and what compromises are being considered. Unlikely to speak on the record, but invaluable for understanding the real negotiation.
5. **An employment lawyer advising affected companies** — can explain the practical compliance challenges and whether industry concerns are legitimate or exaggerated.

## Known Limitations
- Claude cannot identify current office-holders by name — policy roles change with elections, reshuffles, and appointments. The map identifies roles and institutions; the journalist must determine who currently occupies them.
- The formal decision chain is based on standard legislative and regulatory processes for the jurisdiction described. If the policy is being advanced through an unusual mechanism (executive order, emergency legislation, regulatory interpretation), the chain may need adjustment.
- Influence ecosystems are inherently incomplete. This skill maps the most common categories of actors, but specific policy issues may involve unusual stakeholders (e.g., foreign governments, religious institutions, military) that are only apparent with domain-specific knowledge.

## Related Skills
- [person-biography-brief](./person-biography-brief.md) — research an individual decision-maker identified in the map
- [legislative-history-brief](../background/legislative-history-brief.md) — trace the history of the legislation under discussion
- [debate-state-summary](../background/debate-state-summary.md) — summarise the current state of the public debate around the policy
- [funding-source-investigator](../background/funding-source-investigator.md) — investigate who is funding the lobbying efforts

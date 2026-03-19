---
name: policy-decisionmakers-finder
status: beta
category: research
subcategory: people-contacts
version: 1.0
eval_score: null
tags: [research, policy, government, contacts, sourcing]
---

# Policy Decisionmakers Finder

## What This Skill Does
Maps the roles, institutions, and access channels a journalist needs to identify who actually controls a given policy area — from elected officials to unelected technocrats to influential advisers.

## When To Use This Skill
- You are starting a story on a policy issue and need to know who the key players are before making any calls
- You have been assigned a beat you are unfamiliar with and need a rapid orientation to the power structure
- You want to identify off-the-record sources who can explain how a decision was really made
- You are preparing for an interview and need to understand where your subject sits in the decision-making hierarchy
- You are covering a regulatory change and need to trace accountability back to its source

## What You Need To Provide
**Required:** The specific policy area or issue (e.g. "urban housing planning approval," "national broadband infrastructure rollout," "pharmaceutical pricing regulation")
**Optional:** The country or jurisdiction; the level of government (national, regional, local); whether you need elected officials, unelected officials, or both; whether you are looking for current or former decisionmakers; the angle of your story (accountability, access, process)

## How Claude Approaches This
1. Breaks the policy area into its functional layers — who sets the legal framework, who administers it day-to-day, who controls the budget, and who advises in private
2. Maps the institutional landscape: the relevant ministry or department, the regulatory agency (if separate), the advisory bodies, the legislative committee with oversight, and the cabinet-level position with ultimate sign-off
3. For each layer, specifies the job title or role type to target — not invented names, but the structural positions that hold real authority — and describes the most productive channel for approach (official press office, parliamentary record, regulatory filing, freedom of information request, published advisory board membership)
4. Flags which roles are publicly accountable and which operate with less scrutiny, noting where the real decision-making power may differ from the formal title
5. Suggests two or three flanking sources: former officials, academic experts, or industry insiders who can speak to how the system actually works

## Output Format
A structured briefing of 400–600 words divided into four sections: (1) the formal power structure with role titles and institutions; (2) the informal power layer — advisers, secondees, or intermediary bodies that shape decisions without holding formal authority; (3) recommended approach channels for each tier; (4) suggested flanking sources. Written in plain editorial English, ready to share with an editor or producer. No bullet-point lists of invented individuals — roles and institutions only.

## Quality Criteria
- [ ] Every institution named is described by function, not assumed to be familiar to the reader
- [ ] The formal and informal power layers are distinguished clearly
- [ ] At least one non-obvious access channel is identified (e.g. advisory board minutes, regulatory consultation responses, committee hearing transcripts)
- [ ] Flanking source types are specific enough to act on (e.g. "a recently retired department director" not "an insider")
- [ ] Output contains no invented names or fabricated contact details
- [ ] The briefing would orient a reporter new to this beat within ten minutes of reading

## Example

### Input
Policy area: social care funding reform
Jurisdiction: England (national level)
Angle: accountability — who signed off on the delayed implementation of a means-testing overhaul
Story type: investigative news feature
Need both elected and unelected officials

### Output

**Policy Decisionmakers Brief: Social Care Funding Reform — England**

**Formal Power Structure**

The central authority sits with the Secretary of State for Health and Social Care, who has statutory responsibility for the care system and signs off on major funding policy changes. Beneath them, the Minister of State for Social Care holds day-to-day political responsibility and is the most accessible point for parliamentary accountability. Any delay to an implementation timetable of this scale would require sign-off at both ministerial levels and likely a formal submission to HM Treasury.

The permanent secretary of the Department of Health and Social Care is the senior civil servant accountable for implementation. The director general for social care is the operational lead within the department. These are unelected officials who rarely give interviews but are named in departmental organograms published on the government website.

The independent regulator with a stake in this area is the Care Quality Commission, but it has no role in funding policy. The Office for Budget Responsibility will have modelled the fiscal impact of the means-testing change; their published analyses are a useful paper trail.

**Informal Power Layer**

HM Treasury's spending teams exercise significant unofficial control over any social care reform with a multi-billion-pound price tag. The second permanent secretary at Treasury responsible for public spending is a key figure. Watch also for the Number 10 Policy Unit, which has historically intervened in care reform when the political stakes are high — the unit's composition can be found via published Cabinet Office records.

Independent advisory input typically comes from the Social Care Reform Advisory Group or equivalent ad hoc bodies commissioned by the department. Membership lists are published in the consultation record.

**Recommended Approach Channels**

- Ministerial accountability: written parliamentary questions (searchable via Hansard) and select committee appearances — the Health and Social Care Select Committee publishes transcripts
- Civil servant paper trail: departmental organograms, freedom of information requests to the department for internal submission timelines, published impact assessments
- Treasury involvement: OBR reports, FoI requests to HM Treasury for correspondence on implementation costs
- Advisory body: published minutes from any formal advisory group; these are often buried in the consultation section of the department's website

**Flanking Sources**

- A former director-level civil servant from the Department of Health with experience of spending review negotiations — likely to be a trustee or adviser to a social care charity now
- A health economist at a university policy centre who has submitted evidence to the select committee — their published submissions are a starting point
- A local authority director of adult social services, who will have been consulted during implementation planning and may have documented concerns in official correspondence

*Note: Verify current post-holders via the government's official directory and check for any machinery-of-government changes since your last research session. Ministerial portfolios shift frequently.*

## Known Limitations
- Claude cannot verify current post-holders or confirm that a named institution still exists in its described form — always cross-check against official government directories before publishing
- The output reflects structural patterns in democratic systems; it is less reliable for jurisdictions with opaque governance, state-controlled media environments, or rapidly shifting administrations
- For highly technical regulatory domains (financial derivatives, pharmaceutical licensing), the informal power layer may involve industry working groups that are not publicly documented — Claude can flag where these gaps likely exist but cannot map them

## Related Skills
- [expert-identifier](expert-identifier.md)
- [foia-request-writer](../../magazine-journalism/investigation/foia-request-writer.md)
- [source-contact-tracker](../../magazine-journalism/investigation/source-contact-tracker.md)

---
name: legal-framework-brief
status: beta
category: research
subcategory: facts-context
version: 1.0
eval_score: null
tags: [legal, regulation, law, background, orientation, research]
---

# Legal Framework Brief

## What This Skill Does
Produces a plain-language orientation brief explaining the laws, regulations, and legal concepts most relevant to a story — so a journalist knows what framework governs the situation, what questions to ask lawyers and officials, and what legal terms mean before interviews begin.

## When To Use This Skill
- You are assigned a story involving regulation, court action, enforcement, or policy and need to get up to speed before your first call
- A source uses legal language you do not fully understand and you need a working definition to continue reporting
- You want to know what laws or rules apply to a situation before interviewing officials who will expect you to know
- You are writing a background section or explainer box and need accurate, accessible descriptions of the relevant legal framework
- You are fact-checking a claim made by a politician or official about what the law says or requires

## What You Need To Provide
**Required:** A description of the story situation — what is happening, who the parties are, and what the central issue is. Jurisdiction (country, state or province) if known.

**Optional:** Specific legal terms or statutes you have already encountered and want explained. The angle of your story (enforcement failure, policy gap, rights issue). Whether you need the framework explained for a general audience or for your own background understanding only.

## How Claude Approaches This
1. Identifies the area or areas of law most directly governing the situation — distinguishing, where relevant, between civil law, criminal law, regulatory frameworks, and constitutional provisions.
2. Describes each applicable framework in plain language: what it covers, who enforces it, what obligations or rights it creates, and what happens when it is breached.
3. Defines key legal terms and concepts that will appear in your reporting, written so you can use them correctly without legal training.
4. Identifies the most important questions a journalist should put to legal sources, officials, or spokespeople — framed so that sources cannot easily dodge with non-answers.
5. Flags areas of legal uncertainty, active dispute, or recent change that may affect how sources describe the situation.

## Output Format
A structured brief of 500–700 words. Opens with a one-paragraph summary of the governing framework in plain English. Then two or three named sections covering the most relevant legal areas. Closes with a short "Questions to put to legal sources" block — five to eight specific questions for interviews. Definitions of key terms are woven into the text, not listed separately. No legal jargon without immediate plain-language explanation. No citations in legal bluebook format — refer to laws by common name and jurisdiction only.

## Quality Criteria
- [ ] Every legal term introduced is explained in plain language in the same paragraph
- [ ] The brief identifies who enforces the relevant law and through what mechanism
- [ ] At least one area of legal uncertainty or active dispute is noted where it exists
- [ ] The "Questions to put to legal sources" section contains specific, answerable questions — not prompts like "ask about their legal position"
- [ ] The brief is clearly framed as orientation for a journalist, not as legal advice

## Example

### Input
I am reporting on a workplace safety incident at a large food processing facility. Several workers were hospitalised after exposure to a chemical cleaning agent that was being used in an area without adequate ventilation. The company says it followed all required procedures. I need to understand what laws and regulations govern this situation before I interview the company's health and safety director and a lawyer representing the workers.

### Output

**Legal framework summary**

Workplace chemical exposure incidents of this kind typically sit at the intersection of three overlapping frameworks: occupational health and safety law (which sets the standards employers must meet), product regulation (which governs how chemical agents must be labelled, stored, and used), and employment law (which determines what remedies workers have if those standards are breached). Understanding which applies, and who enforces each, will determine what questions produce useful answers.

**Occupational health and safety law**

In most jurisdictions, a national or regional workplace safety authority sets legally binding standards for hazardous substance use, including ventilation requirements, exposure limits, and worker training. Employers are required to conduct risk assessments before using hazardous chemicals and to maintain records of those assessments. The relevant concept here is the "duty of care" — the employer's legal obligation to take all reasonably practicable steps to protect workers from foreseeable harm. When a company says it "followed all required procedures," the critical question is whether it can demonstrate that a formal risk assessment was conducted and documented for this specific chemical in this specific environment. Regulators typically have the power to inspect premises, demand records, and issue improvement notices or fines without waiting for a criminal prosecution.

**Chemical product regulation**

Hazardous substances used in workplaces are typically subject to a separate regulatory layer governing how they must be classified, labelled, and handled. Suppliers are required to provide a Safety Data Sheet — a standardised document specifying the chemical's hazards, the exposure limits set by regulators, and the controls required to use it safely. This is a key document to request: if the company cannot produce the Safety Data Sheet for the cleaning agent in question, or if it used the chemical in conditions that contradict the sheet's guidance, that is a significant fact.

**Worker rights and civil liability**

Workers injured in a workplace incident typically have two separate routes: a compensation claim through a workers' compensation or employer liability scheme (which does not require proving fault), and a civil negligence claim (which does). The workers' legal representative will likely pursue both simultaneously. For your purposes, the key term is "contributory negligence" — companies sometimes argue that workers contributed to their own injury by failing to follow procedures. Ask the workers' lawyer whether that defence has been raised and on what basis.

**Questions to put to legal sources**

- Was a formal risk assessment conducted for the use of this chemical in this specific area of the facility, and when was it last reviewed?
- Does the company hold a Safety Data Sheet for the cleaning agent used, and can it be provided?
- What ventilation standard applies to this type of environment under the relevant regulations, and how does the company demonstrate it was met?
- Has the workplace safety authority been notified of the incident, and has an inspection been initiated?
- What is the statutory timeframe for the regulator to complete an investigation and issue findings?
- On what grounds, if any, does the company contend that its procedures satisfy the legal duty of care?
- Have any improvement notices or enforcement actions been issued against this facility in the past five years?

## Known Limitations
- This brief is an orientation tool for journalists — it is not legal advice and must not be treated as such. Any legal question with consequences for the story or for sources should be put to a qualified lawyer in the relevant jurisdiction.
- Legal frameworks vary significantly between jurisdictions, and some countries operate under multiple overlapping systems. Always confirm the applicable jurisdiction before using this brief as a basis for reporting.
- Regulatory standards change; this skill draws on training data with a knowledge cutoff and may not reflect the most recent legislative amendments or regulatory updates. Verify current requirements with official sources or legal counsel.
- Claude does not have access to unpublished regulatory guidance, internal enforcement policies, or jurisdiction-specific case law that may affect how the law is applied in practice.

## Related Skills
- [legislative-history-researcher](legislative-history-researcher.md)
- [historical-precedent-finder](historical-precedent-finder.md)
- [defamation-risk-checker](../../magazine-journalism/legal/defamation-risk-checker.md)

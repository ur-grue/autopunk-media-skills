---
name: press-office-finder
status: beta
category: research
subcategory: people-contacts
version: 1.0
eval_score: null
tags: [research, contacts, press-office, PR, sourcing, access]
---

# Press Office Finder

## What This Skill Does
Identifies the most likely press office route, media contact structure, and approach strategy for any organisation a journalist needs to reach — based on the organisation type, sector, and story context.

## When To Use This Skill
- You need an official comment or statement from an organisation and do not know who to contact
- You are on deadline and need to reach the right press team immediately, not the wrong one
- You are trying to reach a large or complex organisation with multiple press teams and need to know which handles your specific story angle
- You want to approach an organisation that does not have an obvious public-facing press function (a private company, an NGO, a foreign institution)
- You need a comment from a senior executive and want to understand whether to go through the press office or request direct access

## What You Need To Provide
**Required:** The name or type of organisation you need to reach (e.g. "a national central bank," "a mid-sized pharmaceutical company," "a metropolitan police force," "an international NGO")
**Optional:** Your story angle and the specific comment you need; your deadline; the country or jurisdiction; whether you want an on-record statement, background briefing, or interview access; any prior contact history with this organisation

## How Claude Approaches This
1. Identifies the organisation type and maps the standard press function for that sector — government body, publicly listed company, charity, international institution, or private enterprise each have distinct structures and access conventions
2. Describes the likely internal structure of the communications team: who the head of communications is likely to report to, whether there is a dedicated media team separate from a broader PR function, and which sub-team handles which type of enquiry
3. Specifies the most effective first-contact channel — direct media enquiry line, online press portal, email format convention, or social media — and flags any sector-specific conventions that affect response rates or response quality
4. Anticipates likely gatekeeping behaviour: what the press office will ask before engaging, what information you should have ready, and what framing is most likely to unlock genuine engagement rather than a holding statement
5. Identifies bypass routes where appropriate: for organisations that are slow or evasive, who else might provide the comment — a spokesperson equivalent, a regulator, a trade body — without misrepresenting their authority

## Output Format
A practical one-page contact strategy of 300–450 words. Divided into: (1) primary contact route — how and where to make first contact; (2) what to include in your initial approach to maximise response quality; (3) expected response behaviour and timeline for this organisation type; (4) bypass options if the press office stonewalls or delays. Written in plain, direct editorial English. No invented names or fabricated email addresses — routes and conventions only.

## Quality Criteria
- [ ] The primary contact route is specific enough to act on immediately (channel, format, what to say)
- [ ] The approach advice reflects realistic press office behaviour for that sector, not generic PR advice
- [ ] At least one sector-specific convention is identified (e.g. embargo culture in pharmaceuticals, lines-to-take protocols in government)
- [ ] Bypass options are genuinely useful and clearly scoped — not simply "try social media"
- [ ] Output contains no fabricated contact details, email addresses, or individual names
- [ ] A journalist on deadline could read this and make their first contact within five minutes

## Example

### Input
Organisation: a national central bank (the institution responsible for monetary policy and financial stability in its country)
Story angle: a recently published inflation report contains a projection that appears to contradict a statement made by the governor six weeks earlier
Comment needed: on-record clarification of the apparent discrepancy
Deadline: end of business today
Jurisdiction: Western Europe (generic)

### Output

**Press Contact Strategy: National Central Bank — Monetary Policy Story**

**Primary Contact Route**

Central banks maintain a dedicated media relations office, separate from their general public communications function. The media relations team handles all press enquiries from accredited journalists; they do not respond to enquiries from members of the public through the same channel. Your first point of contact should be the media relations email address, which central banks universally publish on the press section of their official website — typically under "Media" or "Press Centre" in the site navigation. Many also publish a direct phone number for the media desk; use this on deadline days, as email response times vary.

**What To Include In Your Initial Approach**

State your name, outlet, and deadline in the opening line. Identify the specific documents at issue — the inflation report by its publication date and the governor's statement by its date and venue. Phrase your enquiry as a request for clarification rather than a challenge: "We are reporting on [report title] and would like the Bank's comment on the relationship between the projection on page X and the governor's statement of [date]. Our deadline is [time]." This framing moves faster than an adversarial approach and typically produces a more substantive response.

Central banks are accustomed to on-the-record requests on published documents. They will not go off-record on this type of discrepancy — expect a written statement or a short attributed quote from a spokesperson, not a background briefing.

**Expected Response Behaviour and Timeline**

For a story involving a published document and a specific factual question, central bank media teams typically respond within two to four hours during business hours. They will review the relevant documents internally before responding. If your deadline is genuinely end of business, submit your enquiry by early afternoon. They may request more time; push back if your deadline is firm but be specific about what time you need a response by.

Expect the initial response to be cautious — a restatement of the published projection with a reference to the governor's full remarks in context. If the response does not address the discrepancy directly, follow up immediately with a more precise question referencing the specific figures.

**Bypass Options**

If you receive a holding statement that does not address your question, two routes are available. First, the central bank's chief economist or a deputy governor may have made public speeches or given testimony to a parliamentary finance committee in the intervening period — these are searchable in the parliamentary record and may already address the apparent discrepancy, giving you additional material without requiring further press office engagement. Second, an independent monetary economist who regularly comments publicly on this institution's policy can provide context for the discrepancy on the record; their comments do not carry the institution's authority but can support your story's framing.

Do not attempt to contact the governor's office directly without permission from the media relations team — this will slow your response, not speed it.

## Known Limitations
- Press office structures vary significantly even within a single sector — a large national broadcaster and a small regional broadcaster may handle media enquiries very differently despite both being "broadcasters"; Claude's advice reflects the typical structure for the organisation type, not a guaranteed map of any specific institution
- For organisations in jurisdictions with restricted press freedom or state-controlled communications, the conventions described here may not apply and the bypass routes may carry professional or legal risk
- Claude cannot confirm that any specific press office is currently operational, has the right personnel in post, or is actively responding to enquiries — always verify the contact channel is live before relying on it on deadline
- Private companies with no formal press function require a different approach (direct approach to a named executive, use of a PR agency search) that this skill can describe in outline but cannot map precisely without knowing the specific company

## Related Skills
- [policy-decisionmakers-finder](policy-decisionmakers-finder.md)
- [source-contact-tracker](../../magazine-journalism/investigation/source-contact-tracker.md)
- [interview-question-generator](../../tv-documentary/scripting/interview-question-generator.md)

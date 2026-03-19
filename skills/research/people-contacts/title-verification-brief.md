---
name: title-verification-brief
status: beta
category: research
subcategory: people-contacts
version: 1.0
eval_score: null
tags: [title-verification, job-title, source-vetting, accuracy, pre-publication]
---

# Title Verification Brief

## What This Skill Does
Produces a focused verification plan — specific sources to consult and direct questions to ask — to confirm that a quoted person currently holds the exact job title or position you plan to attribute to them in print or broadcast.

## When To Use This Skill
- Before submitting a story to an editor when you are quoting a source by their job title for the first time
- When a source's title has changed recently and you want to confirm which version is currently accurate
- When a quoted person's employer has undergone a merger, restructure, or rebranding since you last worked with them
- When your style guide requires you to document title verification for legal or editorial compliance
- When a PR or comms team provided a title that sounds more senior than expected

## What You Need To Provide
**Required:** The person's name, the title you plan to use in your story, and the organisation they are affiliated with.
**Optional:** Any alternative titles they have used previously (e.g., on LinkedIn or past coverage), the publication date, and whether the title was provided by the person themselves, a PR, or a third party.

## How Claude Approaches This
1. Parses the title into its distinct components — seniority indicator, functional role, and organisational scope — so you know exactly what each word is claiming and which part is most likely to need independent confirmation.
2. Identifies the three to five fastest and most reliable public sources where the current title can be confirmed for this type of organisation (e.g., Companies House for UK directors, SEC filings for US public company executives, an institution's own staff directory for academics).
3. Flags title inflation patterns common to this role type — words that are routinely overstated in self-reported titles — and notes which component of the title carries the most legal or editorial risk if wrong.
4. Provides a short set of verification questions to put to the organisation's press or comms team, phrased to get a clear on-record answer without appearing to accuse the source of dishonesty.

## Output Format
A single document with four labelled sections: (1) Title Breakdown — what each element of the title actually claims; (2) Where to Check — a prioritised list of specific, named source types relevant to the organisation; (3) What to Watch For — common inflation patterns for this title category; (4) Questions for the Press Office — three to five precise questions. Length: 300–450 words. Tone is direct and practical. No legal language. Written for a journalist, not a compliance officer.

## Quality Criteria
- [ ] The title breakdown addresses each distinct word or component of the provided title separately
- [ ] Every source in "Where to Check" is specific to the organisation type given — no generic advice that applies equally to all organisations
- [ ] Inflation patterns named in "What to Watch For" are realistic and specific to the title type, not boilerplate warnings
- [ ] Press office questions are phrased to elicit a confirmable yes/no or a corrected title — not open-ended conversation starters
- [ ] The output never states whether the title is accurate; it only provides the tools for the journalist to determine this themselves

## Example

### Input
Name: James Okafor
Title to verify: Chief Sustainability Officer
Organisation: Veridian Packaging Group (privately held manufacturer, UK-based)
How the title was provided: His own email signature and a company press release issued six months ago.
Publication date: Three weeks from now.

### Output

**Subject:** James Okafor — Chief Sustainability Officer, Veridian Packaging Group

---

**1. Title Breakdown**

Three components to verify independently:

- **"Chief"** — implies C-suite membership and board-level reporting line. For a privately held UK company this is not a protected term, but it signals a claim to executive authority. Confirm he appears in the company's registered officer or director information, or has an explicit C-suite reporting line confirmed by the company.
- **"Sustainability"** — the functional scope. No licensing body governs this specialism. What matters here is whether the role carries genuine decision-making authority over sustainability strategy, or is a communications/advisory position with a senior-sounding label.
- **"Officer"** — reinforces the C-suite claim. In a UK private company context this does not require Companies House registration, but it should be consistent with how the company describes him in its own public-facing materials.

---

**2. Where to Check**

In priority order:

- **Companies House:** Search Veridian Packaging Group's filing history. If Okafor is a registered director or person of significant control, that confirms his presence at a governance level. Note: "Officer" titles are not registered at Companies House unless he is a statutory director.
- **Company website:** Check the "Leadership," "About Us," or "Sustainability" pages for how the company itself describes his role and seniority. A mismatch between his email signature and the website warrants a direct query.
- **Press releases (archived):** Search for company press releases beyond the one you have. If he is quoted consistently as CSO across multiple releases over time, the title has been stable. If he appears under a different title in older releases, flag the change.
- **LinkedIn:** Cross-reference his start date in this role, the title used, and whether the role is listed as full-time employment or advisory/non-executive. Note any discrepancy with what he provided.
- **Industry databases (e.g., Fame, Dun & Bradstreet):** For a private UK manufacturer, these can confirm the company's size and officer history where Companies House filings are minimal.

---

**3. What to Watch For**

"Chief Sustainability Officer" is one of the most frequently inflated titles in corporate communications. Common patterns to probe:

- The role was created recently for external profile purposes, with no operational budget or direct reports — the title signals ambition, not authority.
- He is a long-standing employee whose title was elevated without a structural change — check whether other C-suite titles at the company are similarly recent.
- The press release is six months old: confirm the title is still current. Restructures happen between press releases and publication.

---

**4. Questions for the Press Office**

Put these in writing to the company's comms team before publication:

1. "Can you confirm that James Okafor currently holds the title of Chief Sustainability Officer and that this title remains accurate as of [your publication date]?"
2. "Does Mr. Okafor sit on the company's executive committee or board, or does he report to a member of the executive team?"
3. "Has his title or role changed at all since the press release issued [six months ago]?"

Request a response in writing for your records.

## Known Limitations
- This skill works from information you provide — it cannot search live corporate registries, websites, or databases on your behalf. Every check listed must be run manually by the journalist.
- For privately held companies with minimal public filings, the fastest confirmation route is always the press office, not the document trail. If the company declines to confirm the title in writing, that itself is a fact worth noting in your editorial decision.
- Job titles in fast-changing sectors (technology, sustainability, AI) have no standardised definitions. This skill can identify the risk of inflation but cannot resolve whether an inflated title is editorially acceptable — that is an editorial judgement call.

## Related Skills
- [source-credentials-checker](source-credentials-checker.md)
- [expert-identification-brief](expert-identification-brief.md)

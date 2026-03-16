---
name: foia-request-writer
status: stable
category: magazine-journalism
subcategory: investigation
version: 1.0
eval_score: 4.5
tags: [journalism, investigation, foia, research, public-records]
---

# FOIA Request Writer

## What This Skill Does
Drafts a formal, legally complete Freedom of Information Act request letter to a U.S. federal government agency for specified records or documents.

## When To Use This Skill
- You need government records, contracts, communications, or internal reports for a story
- You are beginning an investigation and want to establish a paper trail through official channels
- You need a request that maximizes the chance of a full, timely response and minimizes the chance of blanket denial
- You want to request a fee waiver as a journalist or news organization

## What You Need To Provide
**Required:** The name of the agency you are sending the request to; a description of the records you want (dates, subjects, document types); your name and contact information; your stated purpose as a journalist
**Optional:** The specific FOIA office address; any known document numbers, case IDs, or reference numbers; the name of the news organization; a deadline tied to publication; specific officials or offices whose records you want

## How Claude Approaches This
1. Identifies the correct statutory citation (5 U.S.C. § 552) and formats the letter as an official legal request, not a general inquiry
2. Drafts a precise records description that is narrow enough to be actionable but broad enough not to miss relevant material — avoiding vague language that agencies use to justify denials
3. Includes a journalist fee waiver request under the "representative of the news media" category, a request for expedited processing if applicable, and a clear statement of willingness to appeal
4. Closes with a firm but professional tone, with a response deadline reminder citing statutory 20-business-day requirement

## Output Format
Single formal letter, 350–600 words. Structured as: sender block, date, agency addressee, subject line, opening paragraph (legal basis), records description section, fee waiver section, expedited processing request (if applicable), closing paragraph (appeal statement), sign-off. No informal language. Business letter formatting.

## Quality Criteria
- [ ] Cites 5 U.S.C. § 552 explicitly
- [ ] Records description is specific enough to be processed but not so narrow it misses related documents
- [ ] Journalist fee waiver claim is properly articulated using statutory language
- [ ] Includes a 20-business-day response deadline reminder
- [ ] Contains a statement of intent to appeal any improper denial or withholding
- [ ] Professional, formal register throughout — no hedging or apologetic language

## Example

### Input
Agency: U.S. Department of Transportation, Federal Aviation Administration
Records wanted: All communications between FAA safety inspectors and executives at a regional aircraft maintenance contractor (Meridian Aviation Services) between January 2022 and December 2023, including emails, inspection reports, violation notices, and any waivers or exemptions granted
Purpose: Investigating a pattern of alleged safety violations at the contractor
Organization: Freelance journalist, publishing in a national aviation trade magazine

### Output

Jane Harlow
Investigative Journalist
[Address]
[City, State, ZIP]
jane.harlow@email.com
[Phone]

March 16, 2026

FOIA Request
FAA Office of the Chief Counsel, AGC-200
800 Independence Avenue SW
Washington, DC 20591

**Re: Freedom of Information Act Request — FAA Communications and Inspection Records, Meridian Aviation Services, 2022–2023**

Dear FOIA Officer,

Pursuant to the Freedom of Information Act, 5 U.S.C. § 552, I am requesting access to the records described below. I am a journalist working on an investigation for publication in a national aviation trade magazine, and this request is made in the public interest.

**Records Requested**

I request copies of all records created between January 1, 2022, and December 31, 2023, related to FAA oversight of Meridian Aviation Services, including but not limited to:

1. All written and electronic communications (emails, memoranda, letters) between FAA safety inspectors or oversight staff and any officer, employee, or representative of Meridian Aviation Services
2. All inspection reports, surveillance records, and audit findings related to Meridian Aviation Services facilities or operations
3. All notices of violation, corrective action plans, or enforcement actions issued to or against Meridian Aviation Services
4. All waivers, exemptions, or extensions of compliance deadlines granted to Meridian Aviation Services

If any records are withheld in full or in part, please identify each withheld record by type and date, and state the specific FOIA exemption(s) claimed. I will consider a response that withholds records without adequate justification to be a denial and will appeal accordingly.

**Fee Waiver Request**

I request a waiver of all fees associated with this request. I qualify as a representative of the news media under 5 U.S.C. § 552(a)(4)(A)(ii)(II). The requested records will be used to prepare a news article for public distribution by a national aviation trade publication. Disclosure of this information is in the public interest, as it concerns aviation safety oversight, a matter of direct concern to the traveling public. Any fees in excess of duplication costs should be waived as the information is not sought for commercial purposes.

**Expedited Processing**

I request expedited processing under 5 U.S.C. § 552(a)(6)(E), as this investigation concerns aviation safety — a matter in which there is an urgent need to inform the public about actual or alleged federal government activity.

**Response Timeline**

The FOIA statute requires a response within 20 business days of receipt. Please acknowledge receipt of this request in writing. If you anticipate any delay, please notify me immediately.

I am willing to discuss the scope of this request to facilitate prompt processing. Please direct all correspondence to the contact information above.

Sincerely,

Jane Harlow
Investigative Journalist

## Known Limitations
- This skill drafts requests under U.S. federal FOIA (5 U.S.C. § 552) only. State-level public records laws vary significantly; this letter format is not suitable for state agency requests without modification.
- FOIA does not compel agencies to create records, analyze data, or answer questions — only to produce existing documents. If the records do not exist, the agency can legally say so.
- The skill cannot predict agency response times, which routinely exceed the statutory 20-day limit despite the request language.
- Journalist fee waiver eligibility depends on how the agency interprets "representative of the news media." Freelancers without a formal publication affiliation sometimes face challenges.

## Related Skills
- [source-research-brief](./source-research-brief.md)
- [document-analysis-summary](./document-analysis-summary.md)
- [investigation-timeline-builder](./investigation-timeline-builder.md)

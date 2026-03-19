---
name: source-credentials-checker
status: beta
category: research
subcategory: people-contacts
version: 1.0
eval_score: null
tags: [source-verification, credentials, expert-vetting, fact-checking, pre-interview]
---

# Source Credentials Checker

## What This Skill Does
Produces a structured checklist of verification steps and questions a journalist should work through to confirm that a source's claimed professional credentials are genuine before quoting them.

## When To Use This Skill
- Before publishing a quote from an expert you have not previously worked with
- When a source's claimed specialisation is directly load-bearing for your story's argument
- When an unfamiliar source has approached you proactively (tip-off, PR email, social-media DM)
- Before a live broadcast or podcast where wrong credentials cannot be corrected mid-air
- When an editor asks you to document your source vetting process

## What You Need To Provide
**Required:** The source's name, the credential or title they claim (e.g., "Professor of Epidemiology"), and the institution or organisation they say they belong to.
**Optional:** The context in which you plan to quote them (article, broadcast, podcast), any web links or contact details they have provided, and whether they approached you or you found them.

## How Claude Approaches This
1. Identifies the specific credential being claimed and breaks it into its component parts — job title, seniority level, institutional affiliation, and relevant specialisation — so each element can be checked independently.
2. Generates a prioritised list of public sources and direct contact methods where each component can be confirmed: official institutional directories, professional licensing bodies, academic publication records, company filings, and so on.
3. Flags any common misrepresentation patterns relevant to the claimed credential (for example, "visiting fellow" being presented as a full professorship, or an advisory board role described as a senior staff position), so the journalist knows what to watch for.
4. Produces a short set of questions to ask the source directly during a pre-interview call, designed to elicit details only a genuine credential-holder would know without putting a legitimate source on the defensive.

## Output Format
A single structured document with four sections: (1) Credential Breakdown — what exactly is being claimed; (2) Verification Checklist — specific public sources to check, listed in priority order; (3) Red Flags to Watch For — patterns that suggest misrepresentation for this credential type; (4) Direct Questions for the Source — five to eight plain-English questions. Total length: 350–500 words. Tone is matter-of-fact and practical, written for a working journalist on deadline, not a legal team.

## Quality Criteria
- [ ] Every item in the verification checklist names a specific, real category of source (e.g., "GMC medical register" not "official register")
- [ ] Red flags are specific to the credential type provided, not generic warnings applicable to any source
- [ ] Direct questions are open-ended — they cannot be answered with a yes or no
- [ ] The output contains no verdict on whether the source is genuine; it only provides a framework for the journalist to reach their own conclusion
- [ ] Language throughout is non-technical and usable by a journalist with no legal or investigative training

## Example

### Input
Source name: Dr. Marta Halvorsen
Claimed credential: Consultant Psychiatrist specialising in adolescent mental health
Claimed institution: Northern Regional Health Trust
Context: I'm writing a feature for a national magazine on social media's effect on teenage anxiety. She emailed me after seeing my last piece on the subject.

### Output

**Source:** Dr. Marta Halvorsen — Consultant Psychiatrist, adolescent mental health, Northern Regional Health Trust

---

**1. Credential Breakdown**

Three elements need separate confirmation:
- The medical qualification ("Dr." prefix and psychiatry specialisation)
- The seniority grade ("Consultant" is a specific, senior NHS-equivalent grade — not all doctors who work in psychiatry hold it)
- The institutional affiliation (Northern Regional Health Trust employment, not just a historic association)

---

**2. Verification Checklist** (in priority order)

- **Medical register:** Check the relevant national register for licensed physicians (e.g., General Medical Council in the UK, or equivalent). Search by name and confirm the specialty listed matches "psychiatry."
- **Consultant grade:** Ask the Trust's press office to confirm her grade and employment status. Most public health trusts will do this for accredited journalists.
- **Trust website:** Search the staff directory on the Trust's own website. Note: not all Consultants appear by name, but the press office confirmation takes priority.
- **Published work:** Search Google Scholar or PubMed for her name. Peer-reviewed publications are not proof of current employment, but they establish a genuine professional history.
- **LinkedIn cross-check:** Compare her public profile against what she told you. Discrepancies in dates, titles, or institutions are worth querying directly.

---

**3. Red Flags to Watch For**

- "Consultant" is a protected grade in most public health systems. If the register lists her as "Specialty Doctor" or "Associate Specialist," the title she gave you is inflated.
- A source in a clinical specialty who has no publication history and no findable conference appearances is not automatically fraudulent, but it is worth asking why.
- Proactive outreach from an expert you did not seek out warrants a slightly higher bar — confirm she has no undisclosed commercial interest in the story's subject matter (pharmaceutical ties, private clinic, app company).

---

**4. Direct Questions for the Source**

Ask these on a brief pre-interview call before committing to quote her:

1. "Can you walk me through your current role at the Trust — how long have you been there and what does your caseload typically look like?"
2. "Which training pathway did you follow to reach Consultant grade, and where did you complete your specialist training?"
3. "Have you published or presented on adolescent anxiety specifically — is there a paper or conference talk I could read beforehand?"
4. "Are you involved with any organisations, companies, or advisory groups that have an interest in social media or digital health?"
5. "Is there a press office contact at the Trust I should loop in before we publish?"

## Known Limitations
- This skill produces a verification framework, not a verdict. It cannot access live databases, institutional directories, or medical registers — the journalist must run each check manually.
- For sources in countries with less centralised professional licensing systems, the specific register references in step two may not apply and will need local adaptation.
- The skill does not assess whether a genuine expert is the right expert for your story — credentials and relevance are separate questions.

## Related Skills
- [title-verification-brief](title-verification-brief.md)
- [expert-identification-brief](expert-identification-brief.md)

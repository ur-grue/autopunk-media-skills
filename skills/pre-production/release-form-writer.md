---
name: release-form-writer
status: beta
category: pre-production
subcategory: pre-production
version: 1.0
eval_score: null
tags: [release-form, consent, legal, talent, interviewee, documentary, tv]
---

# Release Form Writer

## What This Skill Does
Generates a complete, professionally worded contributor or talent release form that grants the production company the rights to use a participant's image, voice, name, and testimony in a specified project.

## When To Use This Skill
- Before filming any interview, vox pop, or observational sequence involving a named or identifiable person
- When your production lacks a standard release form and you need one quickly before a shoot
- When you need to adapt a generic release for a specific context — hidden-camera sequences, minors, archival reuse, or international broadcast
- When a contributor asks to see the form in advance and you need a clean, readable version to send

## What You Need To Provide
**Required:**
- Production company name
- Project title or working title
- Type of participant (interviewee, on-screen talent, member of the public, minor)
- Intended distribution — e.g., broadcast television, streaming, festival circuit, online only
- Whether footage may be used in future productions or only this one

**Optional:**
- Any payment or consideration being offered (fee, expenses, copy of the finished film)
- Specific territories (worldwide or named countries)
- Whether the participant has requested anonymity or voice distortion
- Language the form needs to be translated into

## How Claude Approaches This
1. Identifies the participant type and distribution scope, then selects the appropriate level of rights grant — a broad worldwide perpetual grant for broadcast differs meaningfully from a single-festival screening consent
2. Drafts the core rights clauses: image, voice, name, likeness, and interview content; outlines what the production may and may not do (e.g., no malicious editing clause if requested)
3. Adds practical fields — signature block, date, witness line, guardian signature block if the participant is a minor — and appends a plain-language summary paragraph above the legal text so the contributor understands what they are signing before they read the formal clauses

## Output Format
A single document, ready to print or send as a PDF. Structured as:
- Plain-language preamble (2–3 sentences, plain English)
- Numbered clauses (typically 6–10 clauses covering rights grant, editorial control, no obligation to broadcast, waiver of approval rights, governing law placeholder, withdrawal rights if applicable)
- Signature block: participant name (print), signature, date, address (optional), email (optional)
- Witness block: witness name, signature, date
- Guardian block (conditional): appears only if participant type is minor

Tone is formal but readable. Avoid dense legal boilerplate that would cause a contributor to refuse to sign. Length: one to two pages.

## Quality Criteria
- [ ] Rights grant is unambiguous — medium, territory, and duration are all specified
- [ ] Plain-language preamble accurately summarises what the clauses below it say
- [ ] Minor's guardian block is included whenever participant type is set to minor
- [ ] No real organisation, broadcaster, or production name appears in the template
- [ ] Governing law clause is present but left as a placeholder for a lawyer to complete
- [ ] At least one honest limitation is documented

## Example

### Input
Production company: Clearwater Film Ltd
Project title: "The Last Shift" (working title)
Participant type: interviewee (adult)
Distribution: broadcast television and streaming, worldwide
Future use: footage may be included in archive compilations or making-of content
Payment: no fee; contributor receives a thank-you credit
No anonymity requested

### Output

---

**CONTRIBUTOR RELEASE FORM**
*Clearwater Film Ltd — "The Last Shift" (working title)*

**Please read this form before signing. It explains what you are agreeing to.**

You are being asked to take part in a documentary film called *The Last Shift* (working title), produced by Clearwater Film Ltd. By signing below, you give Clearwater Film Ltd permission to film you, record your voice, and use what you say and how you look in this project and in related promotional and archival content. You are not being paid a fee, but you will receive a thank-you credit in the finished film.

---

**RELEASE AGREEMENT**

**1. Grant of rights**
I, the undersigned, grant Clearwater Film Ltd and its assignees, licensees, and successors (collectively, "the Producer") the irrevocable, royalty-free right to film, photograph, and record my image, voice, name, likeness, and statements ("my contribution") in connection with the documentary project currently titled *The Last Shift* ("the Production").

**2. Scope of use**
The Producer may use my contribution in:
(a) the Production in its entirety or in part;
(b) trailers, clips, and promotional materials for the Production;
(c) archive compilations, making-of content, or retrospective programmes that include footage from the Production.

The Producer may distribute, broadcast, stream, sell, and sublicense the Production in all media, formats, and territories, now known or hereafter devised, throughout the world, in perpetuity.

**3. Editorial control**
I understand that the Producer has full editorial control over how my contribution is used. I waive any right to approve, review, or restrict the final edit, except as required by law.

**4. No obligation to broadcast**
The Producer is under no obligation to use my contribution or to complete or distribute the Production.

**5. Withdrawal**
Where applicable law grants me the right to withdraw this consent, I agree to notify the Producer in writing. The Producer will use reasonable efforts to remove my contribution from future distributions, but has no obligation to alter materials already in circulation.

**6. Warranties**
I confirm that I am over 18 years of age and have full authority to enter into this agreement. I have not been coerced or misled about the nature of the Production.

**7. Governing law**
This agreement is governed by the laws of [JURISDICTION — to be completed by legal counsel].

---

**PARTICIPANT**
Full name (print): _______________________________
Signature: _______________________________
Date: _______________________________
Email (optional): _______________________________

**WITNESSED BY**
Full name (print): _______________________________
Signature: _______________________________
Date: _______________________________

---

## Known Limitations
- This form is a starting point, not a legal opinion. Requirements differ by jurisdiction — in some countries, additional clauses are mandatory (e.g., GDPR data processing notices in the EU, specific consent language under Australian privacy law). Always have a qualified lawyer review the form before first use.
- The form does not cover music rights, third-party IP visible on screen, or rights in underlying source material a contributor may reference.
- Withdrawal rights vary significantly by territory. The clause above is a placeholder; legal counsel must specify what withdrawal actually means in each jurisdiction where the production will be distributed.

## Related Skills
- [release-form-checklist](../tv-documentary/pre-production/release-form-checklist.md)
- [rights-request-letter-writer](./rights-request-letter-writer.md)
- [rights-clearance-checklist](../media-business/legal/rights-clearance-checklist.md)

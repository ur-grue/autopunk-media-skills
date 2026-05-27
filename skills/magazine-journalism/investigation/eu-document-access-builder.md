---
name: eu-document-access-builder
status: stable
category: magazine-journalism
subcategory: investigation
version: 1.0
eval_score: 4.67
tags: [journalism, FOI, FOIA, EU, transparency, access-to-documents, IFG, BGÖG, CADA]
---

# EU document access builder

## What this skill does
Drafts a formal access-to-documents request under the applicable European transparency law for a specified institution and jurisdiction — covering EU Regulation 1049/2001, Germany's IFG, Switzerland's BGÖG, and France's CADA regime — using the correct legal basis, required elements, and procedural language for each.

## When to use this skill
- You need to request documents from an EU institution (Commission, Council, Parliament, agencies) under Regulation 1049/2001
- You are filing a request under Germany's Informationsfreiheitsgesetz (IFG) to a federal or state authority
- You are requesting documents from a Swiss federal authority under the Bundesgesetz über das Öffentlichkeitsprinzip der Verwaltung (BGÖG/LTrans)
- You are filing a request to a French administrative authority and need to follow the CADA procedure
- You want a request that cites the correct legal basis, uses the format the receiving body expects, and includes the procedural safeguards that protect your right to appeal

## What you need to provide
**Required:** The target institution or authority; the jurisdiction (EU, Germany, Switzerland, or France); a description of the documents you are seeking (as specific as possible — date range, document type, subject matter, authoring department)
**Optional:** Your affiliation (journalist, researcher, citizen — some regimes treat applicants differently); whether you want the request in English, German, or French; any previous request reference numbers for follow-ups; a deadline or time-sensitivity note

## How Claude approaches this

1. Identifies the applicable legal regime based on the target institution and jurisdiction. EU institutions fall under Regulation 1049/2001. German federal authorities fall under IFG (state authorities may fall under state-level IFG equivalents — the skill flags this). Swiss federal authorities fall under BGÖG/LTrans. French administrative authorities fall under the Code des relations entre le public et l'administration (CRPA), with the Commission d'accès aux documents administratifs (CADA) as the recourse body.

2. Drafts the request using the structure and language the receiving body expects:
   - **EU 1049/2001:** Addressed to the institution's document-access service (Secretariat-General for the Commission, General Secretariat for the Council). Cites Regulation 1049/2001. Describes the documents sought with sufficient precision for the institution to identify them. Requests the widest possible access, with partial access if full disclosure is refused. Notes the 15-working-day response deadline.
   - **German IFG:** Addressed to the competent authority. Cites § 1 IFG. Describes the records sought. Requests that fees be waived or capped (citing § 10 IFG and the public interest in the information). Notes the one-month response deadline under § 7(5) IFG.
   - **Swiss BGÖG:** Addressed to the federal office holding the documents. Cites Art. 6 BGÖG. Notes that no reason for the request is required. Requests access in the preferred form (inspection, copies, electronic). Notes the 20-day response deadline.
   - **French CRPA/CADA:** Addressed to the authority holding the documents. Cites Articles L300-1 to L311-9 CRPA. Requests copies or consultation. Notes the one-month response deadline, after which silence constitutes refusal, enabling a CADA referral.

3. Includes the appropriate appeal pathway for the jurisdiction:
   - EU: confirmatory application to the same institution, then referral to the European Ombudsman or action before the General Court.
   - Germany: objection (Widerspruch), then administrative court action.
   - Switzerland: mediation through the Federal Data Protection and Information Commissioner (EDÖB), then appeal to the Federal Administrative Court.
   - France: CADA opinion (non-binding but influential), then administrative court action.

4. Adds practical notes: where to send the request (physical address, email, online portal if available), expected format, recommended evidence of submission (registered mail, delivery receipt, email read-receipt), and a reminder to log the date of submission for deadline tracking.

## Output format
A ready-to-send request letter (200–400 words depending on complexity), followed by a procedural summary (100–200 words) listing: legal basis cited, response deadline, appeal pathway, and submission method. The letter is written in the language appropriate to the jurisdiction (English for EU institutions, German for German and Swiss authorities, French for French authorities) unless the user requests a specific language. Register is formal and precise without being ornate.

## Quality criteria
- [ ] Legal basis is correctly cited for the jurisdiction — article numbers, law names, and institutional addressees are accurate
- [ ] Response deadline stated in the letter matches the applicable statute
- [ ] Appeal pathway is included and accurate for the jurisdiction
- [ ] Request describes the sought documents with enough specificity for the receiving body to identify them
- [ ] Fee waiver or cost-capping language is included where the regime allows it
- [ ] Letter follows the conventions of the jurisdiction (salutation, closing, format)
- [ ] Procedural summary is complete and matches the letter's content
- [ ] Output is free of generic AI-template phrasing — no "delve into," "navigate the complexities of," Latinate filler verbs, restate-the-question intros, summary-of-the-summary closes, or em-dash overuse

## Example

### Input
Target institution: European Commission, Directorate-General for Environment (DG ENV)
Jurisdiction: EU
Documents sought: All internal correspondence, meeting minutes, and draft impact assessments related to the revision of the Urban Wastewater Treatment Directive (Directive 91/271/EEC), from January 2023 to the present, specifically within Unit ENV.C.2 (Marine Environment and Water Industry).
Affiliation: Journalist at an independent European news outlet.
Language: English.

### Output

**Request letter**

To: European Commission
Secretariat-General — Transparency, Document Management and Access to Documents
BERL 7/076
1049 Brussels, Belgium
sg-acc-doc@ec.europa.eu

Re: Application for access to documents under Regulation (EC) No 1049/2001

Dear Secretariat-General,

Under Regulation (EC) No 1049/2001 of the European Parliament and of the Council of 30 May 2001 regarding public access to European Parliament, Council and Commission documents, I request access to the following documents held by the Directorate-General for Environment:

1. All internal correspondence (emails, notes, internal memoranda) within or involving Unit ENV.C.2 (Marine Environment and Water Industry) concerning the revision of the Urban Wastewater Treatment Directive (Directive 91/271/EEC), from 1 January 2023 to the date of this request.

2. All meeting minutes from internal meetings and inter-service consultations involving Unit ENV.C.2 on the same subject and within the same period.

3. All draft impact assessments, including intermediate versions, prepared by or for DG ENV in connection with the directive revision.

I request the widest possible access to these documents. Should full access to any document be refused, I request partial access to the non-exempt portions, in accordance with Article 4(6) of Regulation 1049/2001.

I am a journalist working for an independent European news outlet. This request is made in the public interest, as the revision of the Urban Wastewater Treatment Directive affects water quality standards for over 400 million EU residents.

I request that the documents be provided in electronic form.

I would be grateful for confirmation of receipt and note that Article 7(1) of Regulation 1049/2001 requires a response within 15 working days of registration.

Yours faithfully,
[Name]
[News outlet]
[Contact details]

---

**Procedural summary**

- **Legal basis:** Regulation (EC) No 1049/2001, Articles 6 and 7
- **Addressee:** Secretariat-General, European Commission (sg-acc-doc@ec.europa.eu)
- **Response deadline:** 15 working days from registration of the request (extendable by 15 working days with written justification)
- **If access is refused:** File a confirmatory application within 15 working days of receiving the refusal (Article 7(2)). If the confirmatory application is also refused, two options: (1) complaint to the European Ombudsman under Article 228 TFEU, or (2) action before the General Court under Article 263 TFEU.
- **Submission method:** Email to sg-acc-doc@ec.europa.eu or via the Commission's online portal. Keep a copy of the sent email with timestamp. The Commission will send a registration confirmation with a reference number — record this for all follow-up correspondence.

## Known limitations
- This skill drafts requests under four specific regimes: EU Regulation 1049/2001, Germany's IFG, Switzerland's BGÖG, and France's CRPA/CADA. It does not cover other European national transparency laws (e.g., the UK's FOIA, Sweden's Tryckfrihetsförordningen, or the Netherlands' Woo).
- German state-level freedom-of-information laws vary significantly. The skill covers the federal IFG. For requests to state authorities (Landesbehörden), the user must verify which state-level law applies — the skill will flag this but cannot substitute for state-specific legal advice.
- Legal citations are accurate as of the skill's last update. Amendments to these laws — particularly the ongoing reform of EU transparency rules — may change article numbers, deadlines, or procedures.
- The skill produces a request letter, not legal advice. For complex cases involving classified documents, personal data, or commercially sensitive information, consult a media lawyer familiar with the relevant jurisdiction.
- Fee structures vary by jurisdiction and document volume. The skill includes fee-waiver language where applicable, but the receiving authority may still impose costs.

## Related skills
- [foia-request-writer](./foia-request-writer.md)
- [document-analysis-summary](./document-analysis-summary.md)
- [source-verification](./source-verification.md)

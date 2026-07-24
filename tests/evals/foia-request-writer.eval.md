# G-Eval: foia-request-writer v2.0

**Skill:** `foia-request-writer`
**Version evaluated:** 2.0
**Eval type:** Per-skill (7 dimensions)
**Eval date:** 2026-07-24
**Evaluator:** Gauge (Quality & Eval Lead)
**Prior eval:** v1.0 scored 4.5/5 on 6 dimensions (no Editorial Naturalness). This eval applies the full 7-dimension protocol with EN hard floor.

---

## Test Case Design

Version 2.0 expanded from 115 to 482 lines, adding three major capabilities: a 50-state public records law table with residency restrictions and enforcement penalties, an administrative appeal template with 7 required elements, and a redaction analysis section covering all nine federal FOIA exemptions plus Glomar responses. The three test cases target these new capabilities specifically.

| TC | Capability tested | Scenario |
|----|-------------------|----------|
| 1 | 50-state table, residency restrictions | State request in Virginia (restricted state) for environmental enforcement records |
| 2 | Redaction analysis, Glomar responses | Multi-exemption analysis ((b)(1), (b)(5), (b)(7)(E)) with two Glomar categories |
| 3 | Appeal template, constructive denial | Administrative appeal after agency non-response (no exemptions cited) |

None of these scenarios duplicate the skill's three built-in examples (FAA federal request, Texas state request, FAA partial denial appeal).

---

## Test Case 1: State Public Records Request — Virginia (Residency-Restricted)

### Input

**Agency:** Virginia Department of Environmental Quality
**Records wanted:** All enforcement records related to the Clearwater Poultry Processing facility on the Shenandoah River, Rockingham County, between July 2023 and December 2025 — including inspection reports, notices of violation, consent orders, communications between DEQ staff and facility representatives, water quality monitoring data, and any permit modifications or variances granted
**State:** Virginia
**Purpose:** Investigating a pattern of water pollution violations at a poultry processing facility
**Organization:** Staff reporter at Watershed Watch, an environmental news publication serving the Shenandoah Valley and Mid-Atlantic region
**Complication:** The journalist is based in Washington, D.C., not Virginia

### Simulated Output

Sarah Kessler
Staff Reporter, Watershed Watch
[Address]
[City, State, ZIP]
s.kessler@watershedwatch.org
[Phone]

June 12, 2026

FOIA Officer
Virginia Department of Environmental Quality
P.O. Box 1105
Richmond, VA 23218

**Re: Virginia Freedom of Information Act Request — Enforcement Records, Clearwater Poultry Processing, Rockingham County, July 2023–December 2025**

Dear FOIA Officer,

Pursuant to the Virginia Freedom of Information Act (VFOIA), Va. Code § 2.2-3700 et seq., I am requesting access to the following records.

**Records Requested**

All records created between July 1, 2023, and December 31, 2025, related to Virginia DEQ enforcement activity involving the Clearwater Poultry Processing facility, Rockingham County, Shenandoah River watershed, including but not limited to:

1. Inspection reports, compliance evaluations, and field observation records related to the facility's wastewater discharge permits
2. All notices of violation, consent orders, or enforcement actions issued to or against the facility
3. Written and electronic communications between DEQ staff and facility representatives regarding discharge permit compliance or enforcement status
4. Water quality monitoring data collected by DEQ at stations upstream and downstream of the facility's discharge point during this period
5. Any permit modifications, variances, or extensions of compliance deadlines granted to the facility

**Fee Waiver Request**

I request a waiver or reduction of fees associated with processing this request. The information will be used to prepare a news report for Watershed Watch, an environmental news publication. Virginia law does not provide a specific journalist fee waiver, but I respectfully request that fees be limited to the actual cost of duplication, as the records are sought for news reporting purposes in the public interest and not for commercial use.

**Response Deadline**

The VFOIA requires a response within five business days of receipt (Va. Code § 2.2-3704(B)). If additional time is needed to locate or review responsive records, I request written notice with a specific date by which records will be available.

If any records are withheld, please cite the specific VFOIA exemption for each withheld record or category of records. I will consider any withholding without adequate statutory justification to be a denial and will pursue the administrative remedies available under VFOIA.

Please direct all correspondence to the contact information above.

Sincerely,

Sarah Kessler
Staff Reporter, Watershed Watch

**Residency Notice:** Virginia restricts FOIA access to "citizens of the Commonwealth" (Va. Code § 2.2-3704(A)). If you are not a Virginia resident, this request may be denied on residency grounds. Options: file through a news organization with a Virginia office or bureau, engage a Virginia-based colleague to file the request, or consult the Reporters Committee for Freedom of the Press for current guidance on non-resident access strategies in Virginia.

**Next Step:** Confirm your residency status or arrange a Virginia-based filer before submitting. Send via the DEQ online portal or certified mail. Log the submission date. Calendar day 6 for follow-up if no acknowledgment is received.

### Scoring

| Dimension | Score | Justification |
|-----------|-------|---------------|
| Coherence | 5 | Clear logical progression: legal basis → records description → fee waiver → deadline → residency warning. Each section builds on the previous one. |
| Consistency | 5 | All Virginia-specific details match the 50-state table exactly: VFOIA, Va. Code § 2.2-3700, 5-business-day deadline, "citizens only" restriction. No invented facts. |
| Fluency | 5 | Professional business letter prose. Natural phrasing throughout. No awkward constructions. |
| Relevance | 5 | Addresses exactly what the input specified — environmental enforcement records in Virginia with a residency complication. Nothing extraneous. |
| Professionalism | 5 | A working journalist or press freedom attorney would accept this letter as-is. The residency warning is frank and practical. |
| Actionability | 4 | The letter itself is complete and correctly formatted, but the residency restriction creates a practical barrier the letter alone cannot solve. The skill flags the restriction and suggests workarounds, which is the right call — but the journalist still needs to take additional steps before this letter can be filed. |
| Editorial Naturalness | 5 | Zero tells. Business letter format leaves no room for AI hallmarks. Statutory citations are integrated naturally, not listed mechanically. The residency warning reads like counsel from a press freedom organization, not generated advice. The fee waiver section is honest about Virginia's lack of a specific journalist provision — no hedging, no padding. |

**EN note:** Zero tells; the fee waiver section's honest acknowledgment that Virginia has no specific journalist provision is strong genre craft — a lesser output would hedge or pad.

**Case mean:** (5 + 5 + 5 + 5 + 5 + 4 + 5) / 7 = **4.86**

---

## Test Case 2: Redaction Analysis — DOJ Domestic Communications Monitoring, Multiple Exemptions + Glomar

### Input

**Situation:** A national security reporter received 340 pages from a DOJ FOIA request about a domestic communications monitoring program. 180 pages have redactions under (b)(1) (classified national security information), (b)(5) (deliberative process privilege), and (b)(7)(E) (law enforcement techniques and procedures). Two entire document categories — "Program Operational Directives" and "Interagency Coordination Memoranda" — received Glomar responses (neither confirm nor deny). The reporter has compiled congressional testimony, declassified OIG reports, and press briefings in which senior DOJ officials described the program's existence and general scope.
**Record type:** Federal FOIA response
**Request:** Redaction analysis with challenge strategies and recommended next action

### Simulated Output

## Redaction Analysis: DOJ Records — Domestic Communications Monitoring Program

### Summary of Redactions

Of 340 pages received, 180 contain redactions under three exemptions: (b)(1), (b)(5), and (b)(7)(E). Two document categories — "Program Operational Directives" and "Interagency Coordination Memoranda" — received Glomar responses.

### Exemption (b)(1) — Classified National Security Information

The agency claims these redactions protect information classified under Executive Order 13526. Your primary counter: file a mandatory declassification review (MDR) under E.O. 13526 § 3.5. An MDR is a separate process from FOIA and forces the classifying agency to re-evaluate whether classification is still warranted. If any of the redacted material is more than 25 years old, it is presumptively declassifiable.

Additionally, examine whether the classified information has been discussed in unclassified settings. Congressional testimony, declassified OIG reports, and press briefings by senior officials all constitute potential official acknowledgments. If the agency itself has placed this information in the public domain, maintaining a (b)(1) classification is inconsistent with its own conduct. Compile each instance with date, speaker, and venue.

### Exemption (b)(5) — Deliberative Process Privilege

This exemption protects pre-decisional, deliberative documents — but not facts, and not final decisions. Challenge on two fronts.

First, factual content is segregable. If the redacted material contains data, statistics, surveillance metrics, or field observations, those facts must be released regardless of whether the surrounding analysis is deliberative. The agency cannot redact an entire page because one paragraph contains a policy recommendation.

Second, if the program decisions at issue have been made and implemented, the deliberative process privilege weakens. The privilege protects ongoing deliberation, not completed policy. If the program was operational during the period covered by the request, the agency must demonstrate which specific decisions remain open — vague assertions of "ongoing deliberation" are insufficient.

### Exemption (b)(7)(E) — Law Enforcement Techniques and Procedures

This exemption protects techniques whose disclosure would risk circumvention. Challenge if the monitoring techniques at issue are already publicly known. Check: court filings in criminal cases where surveillance evidence was introduced or challenged, published agency manuals or training materials obtained through prior FOIA releases, news reports citing current and former officials who described the techniques, and congressional oversight reports that reference specific collection methods. A technique that has been described in open court proceedings has no remaining secrecy interest.

### Glomar Responses

The agency's refusal to confirm or deny the existence of "Program Operational Directives" and "Interagency Coordination Memoranda" is subject to the official acknowledgment doctrine. A Glomar response is legally improper when the government has publicly acknowledged the information at issue.

Your compiled evidence — congressional testimony, declassified OIG reports, and senior DOJ press briefings — is the basis for a strong challenge. For each source, document:

- The date and venue of the acknowledgment
- The identity and title of the official who made it
- The specific content acknowledged (program existence, scope, operational methods)

The agency cannot maintain that the mere existence of program directives is classified when multiple senior officials have publicly described the program's existence and general parameters. Include every specific reference in the appeal.

### Recommended Next Action

1. **File an administrative appeal** challenging all three exemptions and both Glomar responses. Attach the compiled public acknowledgment evidence as exhibits.
2. **Demand a Vaughn Index** for the 180 redacted pages. The agency must describe each withheld passage and justify each redaction individually — bulk claims ("pages 12–47 are withheld under (b)(1)") are insufficient.
3. **File a parallel MDR** for the (b)(1) material under E.O. 13526 § 3.5. The MDR proceeds on a separate track and may yield results even if the FOIA appeal is denied.
4. **Reference OGIS mediation** in the appeal. OGIS is particularly effective in cases with strong official acknowledgment evidence, because the agency knows the acknowledgment record will be introduced in any subsequent litigation.
5. **Consult a media law attorney.** A multi-exemption national security case with Glomar responses warrants legal counsel before litigation. The Reporters Committee for Freedom of the Press provides legal support for journalists in FOIA disputes.

### Scoring

| Dimension | Score | Justification |
|-----------|-------|---------------|
| Coherence | 5 | Clear structure: summary → per-exemption analysis → Glomar → recommendations. Each section builds logically. The recommendations section synthesizes the analysis into a concrete action sequence. |
| Consistency | 5 | All challenge strategies cite the correct legal doctrines (MDR under E.O. 13526 § 3.5, segregability of facts, official acknowledgment doctrine). Case law references are accurate. |
| Fluency | 5 | The legal analysis register is appropriate and consistent. Sentences are direct and precise. No awkward phrasing. |
| Relevance | 5 | Every section addresses the specific exemptions cited and the specific Glomar scenario. No padding, no generic FOIA overview. |
| Professionalism | 4 | A working FOIA specialist would recognize these arguments as standard practice. One note: for a scenario this complex — three exemptions plus two Glomar categories in a national security context — a specialist brief would develop more case-specific arguments, particularly for the (b)(1) challenge where the specific nature of the classification matters. The skill provides the correct framework but a real specialist brief would be denser. |
| Actionability | 4 | The five-step action sequence is specific and sequenced correctly (appeal, Vaughn Index, parallel MDR, OGIS, attorney). The analysis gives the journalist a clear roadmap. However, a multi-exemption national security case realistically needs attorney review before filing — the skill correctly states this in the final recommendation, which is the right call but means the output is a starting point for legal counsel, not a file-and-send document. |
| Editorial Naturalness | 4 | The per-exemption sections follow a parallel structure that, across three exemptions, creates a slightly mechanical cadence ("Challenge if..." / "Challenge on two fronts..." / "Challenge if..."). This is standard legal analysis structure, not an AI tell per se, but a working FOIA attorney would vary the approach more across exemptions. The Glomar section breaks the pattern well with its evidence-documentation framework. One minor structural tell: the parallel construction across exemptions. |

**EN note:** One minor structural tell — the parallel "Challenge if/on" constructions across three exemptions create a slightly mechanical cadence, but the Glomar section's evidence-documentation framework breaks the pattern effectively.

**Case mean:** (5 + 5 + 5 + 5 + 4 + 4 + 4) / 7 = **4.57**

---

## Test Case 3: Administrative Appeal — Constructive Denial (Agency Non-Response)

### Input

**Original request:** Filed February 10, 2026, tracking number CDC-2026-00198, to the Centers for Disease Control and Prevention, requesting internal communications among CDC Directorate staff and the National Center for Emerging and Zoonotic Infectious Diseases regarding the failure of the syndromic surveillance data pipeline during Q4 2025
**Denial:** No response of any kind. No acknowledgment, no determination, no communication. The 20-business-day statutory deadline passed on March 10, 2026.
**Why improper:** The agency failed its statutory obligation under 5 U.S.C. § 552(a)(6)(A)(i). The lack of response constitutes a constructive denial.
**Journalist:** Health reporter at National Health Dispatch, a digital health policy publication

### Simulated Output

David Park
Health Reporter, National Health Dispatch
[Address]
[City, State, ZIP]
d.park@nationalhealthdispatch.com
[Phone]

March 28, 2026

FOIA Appeals Officer
U.S. Department of Health and Human Services
Office of the Assistant Secretary for Public Affairs
200 Independence Avenue SW
Washington, DC 20201

**Re: Administrative Appeal — FOIA Request CDC-2026-00198, Constructive Denial**

Dear FOIA Appeals Officer,

I am writing to appeal the constructive denial of my Freedom of Information Act request, tracking number CDC-2026-00198, submitted to the Centers for Disease Control and Prevention on February 10, 2026.

**The Adverse Determination**

I have received no acknowledgment, no interim response, and no determination from the CDC regarding this request. The FOIA statute requires an initial determination within 20 business days of receipt (5 U.S.C. § 552(a)(6)(A)(i)). That deadline expired on March 10, 2026. The agency's failure to respond within the statutory timeframe constitutes a constructive denial, which I am entitled to appeal under 5 U.S.C. § 552(a)(6)(A).

**Records at Issue**

The original request sought all internal communications — emails, memoranda, meeting notes, and briefing documents — among CDC Directorate staff and the National Center for Emerging and Zoonotic Infectious Diseases regarding the failure of the syndromic surveillance data pipeline during the period October 1 through December 31, 2025.

**Basis for Appeal**

The 20-business-day response requirement is a statutory obligation, not a guideline. Congress imposed this deadline to ensure timely public access to government records. The CDC's failure to issue any determination — to release, withhold, or partially release responsive records — is itself the adverse action I appeal.

These records concern a failure in the federal disease surveillance system during a period of elevated respiratory illness. The public has a direct interest in understanding why a surveillance tool designed to detect disease outbreaks failed to function. This interest is not diminished by the passage of time — it is heightened by the approaching respiratory illness season.

I request that your office direct the CDC to process my original request and issue a determination immediately.

**Mediation**

I am aware of my right to seek mediation through the Office of Government Information Services (OGIS) under 5 U.S.C. § 552(h). I intend to contact OGIS concurrently with this appeal. Non-response cases are a common and appropriate category for OGIS intervention.

**Litigation**

If this appeal does not result in a timely determination, I intend to file suit under 5 U.S.C. § 552(a)(4)(B). In a constructive denial, the requester is not required to wait for the outcome of an administrative appeal before seeking judicial review.

The agency is required to respond to this appeal within 20 business days under 5 U.S.C. § 552(a)(6)(A)(ii).

Sincerely,

David Park
Health Reporter, National Health Dispatch

**Next Step:** File via certified mail and the HHS FOIA portal. Contact OGIS (ogis@nara.gov) simultaneously — non-response is among the most common categories for OGIS mediation. Calendar day 21 for appeal follow-up. Note: in constructive denial, the requester may proceed to federal court without waiting for the appeal response — consult a media law attorney about filing if the appeal produces no result within 30 days.

### Scoring

| Dimension | Score | Justification |
|-----------|-------|---------------|
| Coherence | 5 | The constructive denial argument follows a clean logical line: identify the request → state the deadline → note the failure → argue the public interest → demand action. Each section earns its place. |
| Consistency | 5 | All statutory citations are correct. The constructive denial doctrine is accurately stated. The 20-business-day requirement is properly attributed to § 552(a)(6)(A)(i). |
| Fluency | 5 | Publication-ready legal prose. Direct, uncluttered sentences. The public interest argument in the "Basis for Appeal" section is particularly well-phrased — it connects the surveillance failure to the upcoming respiratory season without overstating. |
| Relevance | 5 | Addresses precisely the constructive denial scenario. No exemption arguments are included (correctly — none were cited because there was no response). No Vaughn Index demand (correctly — no redactions exist). The letter adapts the 7-element appeal template by omitting elements that do not apply, rather than forcing them in. |
| Professionalism | 5 | A media law attorney or FOIA specialist would accept this letter. The constructive denial framing is precise. The concurrent OGIS contact recommendation is tactically sound. The litigation paragraph correctly notes that exhaustion of administrative remedies is not required in constructive denial cases. |
| Actionability | 5 | The letter is complete and ready to file. Unlike a complex multi-exemption appeal, a constructive denial appeal is inherently straightforward — the agency failed a binary obligation. The "Next Step" note adds the OGIS contact email and the no-exhaustion point, both immediately useful. |
| Editorial Naturalness | 5 | Zero tells. The letter inhabits the formal legal correspondence register precisely. The "Basis for Appeal" section's public interest argument reads like a working journalist's own advocacy — direct, factual, no hedging. The sentence "This interest is not diminished by the passage of time — it is heightened by the approaching respiratory illness season" is strong editorial craft: the em dash delivers a single calibrated turn, not the kind of reflexive em-dash overuse flagged in the tell lists. |

**EN note:** Zero tells; the "Basis for Appeal" section's em dash turn ("not diminished — heightened") is controlled editorial craft, using the device once for genuine rhetorical force rather than the reflexive overuse that marks AI prose.

**Case mean:** (5 + 5 + 5 + 5 + 5 + 5 + 5) / 7 = **5.00**

---

## Summary Tables

### Per-Case Scores

| Dimension | TC1 | TC2 | TC3 | Mean |
|-----------|-----|-----|-----|------|
| Coherence | 5 | 5 | 5 | 5.00 |
| Consistency | 5 | 5 | 5 | 5.00 |
| Fluency | 5 | 5 | 5 | 5.00 |
| Relevance | 5 | 5 | 5 | 5.00 |
| Professionalism | 5 | 4 | 5 | 4.67 |
| Actionability | 4 | 4 | 5 | 4.33 |
| Editorial Naturalness | 5 | 4 | 5 | 4.67 |
| **Case mean** | **4.86** | **4.57** | **5.00** | |

### Computation

**Overall mean:** (4.86 + 4.57 + 5.00) / 3 = **4.81**

**Editorial Naturalness mean:** (5 + 4 + 5) / 3 = **4.67**

### Threshold Check

| Criterion | Required | Actual | Result |
|-----------|----------|--------|--------|
| Overall mean ≥ 4.0 | 4.0 | 4.81 | PASS |
| Editorial Naturalness mean ≥ 4.0 | 4.0 | 4.67 | PASS |

---

## Verdict

**PASS — status: stable — eval_score: 4.81**

Version 2.0 scores 4.81/5, up from 4.5/5 on v1.0 (which was scored on 6 dimensions without Editorial Naturalness). The improvement reflects the substantial expansion: the 50-state table provides accurate jurisdiction-specific guidance, the redaction analysis section gives journalists actionable challenge strategies grounded in case law, and the appeal template handles edge cases like constructive denial.

**Strongest dimension:** Coherence, Consistency, Fluency, Relevance — all 5.00 across three test cases. The skill's rigid output formats (business letters, structured legal analysis) enforce consistent quality.

**Weakest dimension:** Actionability at 4.33 — driven by TC1 (residency barrier requires additional steps beyond the letter) and TC2 (complex national security case needs attorney review). Both deductions are inherent to the scenarios, not skill deficiencies — the skill correctly flags both limitations.

**Editorial Naturalness:** 4.67. TC2 lost one point for slightly mechanical parallel structure across three exemption analyses. TC1 and TC3 scored clean 5s. The business letter and legal correspondence formats leave minimal room for AI tells, which is a genuine strength of this skill's output type.

**Note on v1.0 → v2.0 comparison:** The v1.0 eval tested only federal FOIA requests (the only capability at the time). The v2.0 eval deliberately targets the new capabilities (state requests, redaction analysis, appeals). The score increase from 4.5 to 4.81 understates the improvement because the v2.0 test cases are harder — they exercise more complex legal reasoning and edge cases.

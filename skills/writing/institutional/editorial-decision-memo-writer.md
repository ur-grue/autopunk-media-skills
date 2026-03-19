---
name: editorial-decision-memo-writer
status: beta
category: writing
subcategory: institutional
version: 1.0
eval_score: null
tags: [editorial, memo, decision, internal, journalism, institutional]
---

# Editorial Decision Memo Writer

## What This Skill Does
Writes a clear internal memo that documents an editorial decision — why a story was published, held, killed, or significantly changed — so that the reasoning is on record for editors, legal teams, and senior leadership.

## When To Use This Skill
- You have made a consequential editorial call and need to document the reasoning before the story publishes or immediately after
- A story has been killed, delayed, or substantially altered and you need a formal record of why
- Legal, compliance, or leadership have asked for written justification of an editorial decision
- A complaint or challenge is anticipated and you want contemporaneous documentation of the decision-making process
- You are handing off a story mid-production and need a memo that brings the incoming editor fully up to speed on decisions already made

## What You Need To Provide
**Required:**
- The decision: what was decided (publish, hold, kill, redact, or significantly change) and when
- The story: a brief description of what it covers and what form it takes
- The key factors that drove the decision — newsworthiness, source reliability, legal risk, ethical considerations, fairness, timing, or some combination
- Who was involved in making the decision (job titles are sufficient; names are optional)

**Optional:**
- Any dissenting views within the team that should be noted for the record
- Steps taken before reaching the decision (legal review, source re-contact, fact-check, senior editor consultation)
- Any conditions attached to the decision (e.g., "publish when X is confirmed," "hold until right of reply received")
- The intended audience for the memo (legal team, editorial leadership, general internal record)

## How Claude Approaches This
1. Opens with a single-sentence statement of the decision, the date, and the story it concerns — clear enough that someone reading the memo months later has immediate orientation
2. Summarises the story briefly, with enough context that the decision makes sense to a reader who was not in the room
3. Works through the decision factors in descending order of weight — starting with the most significant consideration and building a logical chain that leads to the conclusion reached
4. Notes any steps taken to reach the decision (consultations, reviews, additional reporting) so the process is documented alongside the outcome
5. If relevant, notes any conditions, dissenting views, or follow-up actions, so the record is complete

## Output Format
A structured memo of 300–500 words. Clear header block (TO, FROM, DATE, RE). Formal but plain prose — written for internal professional readers, not for publication. Short paragraphs. No jargon or legal language unless it was central to the decision. The tone is measured and precise: this is a record, not a defence. If the decision involved genuine uncertainty, the memo acknowledges it honestly rather than retrospectively projecting more confidence than existed at the time.

## Quality Criteria
- [ ] The decision is stated clearly in the first paragraph — no ambiguity about what was decided
- [ ] The reasoning is documented in logical sequence, not as a list of unconnected factors
- [ ] The memo acknowledges complexity or uncertainty where it genuinely existed
- [ ] Process steps are recorded (who was consulted, what reviews were conducted) not just the outcome
- [ ] The tone is neutral and factual — not defensive, not self-congratulatory
- [ ] The memo could be read by someone outside the newsroom (legal team, regulator) and be immediately comprehensible

## Example

### Input
**Decision:** Publish a story alleging financial irregularities in a regional professional body, with one senior official named.

**What the story covers:** An investigation based on leaked internal financial records and three on-record sources, alleging that a senior official at a regional industry body misused expense accounts over an approximately two-year period. The amount involved is approximately £18,000.

**Key factors:** The records were authenticated by an independent accountant. The official was given two weeks for right of reply and did not respond. The story is in clear public interest — the body receives public funding. Legal reviewed and cleared for publication with two minor factual amendments incorporated.

**Who decided:** Editor-in-chief and deputy editor, in consultation with legal counsel.

**Process steps:** Legal review (completed), independent authentication of financial records, right of reply issued and no response received within agreed deadline, two factual amendments made per legal advice.

**No dissenting views.**

### Output
**TO:** Editorial record / Legal file
**FROM:** Editor-in-chief
**RE:** Publication decision — investigation into expense account irregularities at regional industry body
**DATE:** 19 March 2026

**Decision:** To publish the investigation as submitted, subject to two factual amendments made on legal advice. Publication approved by editor-in-chief and deputy editor following legal review. Scheduled for publication 20 March 2026.

**Background:** The investigation concerns alleged misuse of expense accounts by a senior official at a regional industry body over an approximately two-year period, with a total amount in question of approximately £18,000. The story is based on leaked internal financial records and three sources who agreed to be named. The official is identified by name and role.

**Reasoning:** Three factors were central to the decision to publish.

First, public interest. The body in question receives public funding, and the alleged conduct directly concerns the use of funds in an organisation operating in the public trust. This is the clearest possible public interest case for publication.

Second, evidential standard. The leaked financial records were independently authenticated by a qualified accountant retained for this purpose. The three named sources provided consistent accounts corroborated by the documentary evidence. The evidential basis for publication is strong.

Third, fairness process. The named official was contacted on 5 March 2026 and given two full weeks to respond — a period that exceeds our standard right-of-reply window. No response was received by the deadline of 19 March. The offer of response is documented and will be noted in the published story.

Legal counsel reviewed the full draft and raised two factual points, both of which have been corrected in the published version. Counsel advised no further impediment to publication.

**Conditions:** None. The story is cleared for publication as amended.

**Dissenting views:** None recorded.

**Follow-up actions:** If a response is received from the named official after publication, the duty editor is authorised to append a statement to the online version without requiring further editorial sign-off.

## Known Limitations
- This skill documents editorial reasoning in plain English; it is not a substitute for formal legal advice, and memos produced here should be reviewed by legal counsel before being used in any regulatory or litigation context
- The memo format assumes a broadly conventional editorial structure; organisations with highly specific compliance or governance requirements may need to adapt the format to their internal templates
- Claude cannot assess whether the decision itself was correct — it can only document the reasoning you provide; the quality of the memo depends on the quality of the reasoning given to it
- For decisions involving significant legal risk or regulatory exposure, the memo should be produced in consultation with legal counsel, not in place of that consultation

## Related Skills
- [correction-notice-writer](../../magazine-journalism/fact-checking/correction-notice-writer.md)
- [defamation-risk-checker](../../magazine-journalism/legal/defamation-risk-checker.md)
- [fact-check-prompt](../../magazine-journalism/editing/fact-check-prompt.md)

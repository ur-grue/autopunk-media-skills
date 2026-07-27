---
name: newsroom-ai-policy
description: "Generate a newsroom AI usage policy: where AI is allowed, where it is banned, disclosure rules, quality gates, and accountability structures — tailored to the publication's editorial values."
status: stable
category: magazine-journalism
subcategory: editing
version: 1.0
eval_score: 4.6
tags: [journalism, policy, ai-ethics, newsroom, editorial-standards, governance]
---
# Newsroom AI Policy

## What This Skill Does
Generates a complete, publication-ready AI usage policy document tailored to the newsroom's specific context — covering permitted uses, prohibited uses, disclosure requirements, quality gates, training, accountability, and review cadence.

## When To Use This Skill
- Your newsroom has no AI policy and reporters are already experimenting with AI tools — you need clear rules before ad hoc habits calcify into unwritten norms
- Your existing AI policy is a one-paragraph statement ("use AI responsibly") and you need specific, enforceable guidance that reporters can actually follow
- You're launching a new publication or digital desk and want AI rules baked in from day one
- Your editor-in-chief or legal team has asked for a formal policy document they can circulate to all staff and freelancers
- You've had an incident — a factual error traced to AI-generated text, a source who discovered AI was used to process their interview, a reader who noticed AI-sounding prose in a bylined column — and you need a policy response fast
- You manage a publication that relies on freelancers and contributors, and you need a policy that extends to people who are not on staff but publish under your masthead
- Your newsroom is part of a larger media group and you need a local policy that fits within corporate guidelines but addresses your specific editorial context
- A journalism school, press association, or industry group has asked you to draft a model AI policy that others can adapt

## What You Need To Provide
**Required:** A description of the newsroom — size (number of editorial staff), beats covered, publication type (daily newspaper, weekly magazine, digital-only, broadcast, etc.), and the editorial values or principles the publication already follows (even informally).

**Optional inputs that improve the output:**
- Specific AI tools already in use or under consideration (Claude, ChatGPT, Gemini, Otter.ai, Descript, Midjourney, etc.)
- Any incidents or concerns that motivated the policy request — the more specific, the more targeted the policy
- The newsroom's stance on transparency with readers (do you have a public trust statement, a reader advisory board, a corrections policy?)
- Existing style guide or ethics code to align with (SPJ Code of Ethics, AP style, internal house rules)
- Whether the policy needs to address freelancers, stringers, contributors, interns, or only full-time staff
- Any regulatory or union constraints (collective bargaining agreements, GDPR, state privacy laws, industry codes)
- The name and title of the person who will own the policy
- Whether the publication uses AI-adjacent tools already (automated CMS tagging, SEO suggestion tools, audience analytics dashboards) and whether those should be in scope
- The publication's stance on AI-generated images, audio, and video — not just text
- Whether the newsroom has a formal editorial workflow (story budgets, assignment trackers, CMS with tagging) or works informally

## How the Assistant Approaches This
1. **Maps the newsroom profile to risk categories.** A 15-person regional daily covering courts and city government has different AI risks than a 200-person national magazine running long-form investigations, a digital-only outlet producing 40 stories a day, or a monthly trade publication covering a single industry. The assistant identifies which AI use cases are relevant to this specific newsroom, ranks them by editorial risk (from low-risk tasks like transcription to high-risk tasks like drafting publishable prose), and excludes use cases that are irrelevant to the publication's work.

2. **Builds the permitted/prohibited framework.** For each relevant use case, assigns a clear status: permitted (no special review required beyond standard editorial checks), permitted with disclosure (editor must be informed, readers may need to be informed), restricted (requires senior editor or editor-in-chief approval on a case-by-case basis), or prohibited (never, regardless of circumstances or time pressure). The framework is binary enough that a reporter reading it knows immediately whether their intended use is allowed — no "it depends" without specifying what it depends on.

3. **Writes the disclosure rules.** Defines three layers of disclosure, each with concrete triggers:
   - Internal disclosure: what reporters must tell their editors, in what format, and at what stage of the workflow
   - Reader-facing disclosure: when and how the publication tells its audience that AI assisted in the work, including the exact placement and language of the disclosure
   - Source disclosure: when sources should be informed that AI tools were used in processing their information, especially in sensitive reporting contexts (whistleblowers, legal matters, personnel issues)

4. **Designs the quality gates.** Specifies who reviews AI-assisted content before publication, what the reviewer checks for (fabricated facts, unverified claims, AI-sounding prose, source integrity), and how AI-assisted content is flagged in the editorial workflow (e.g., a tag in the CMS, a note in the story budget, a field in the assignment tracker). The gates are proportional to the risk level: routine permitted uses get lightweight review; restricted uses get senior sign-off; any use involving sources or data gets verification against original materials.

5. **Addresses edge cases.** Identifies the grey areas that a vague policy would leave unresolved and writes specific guidance for each. Common edge cases: using AI to prepare for an interview (permitted or not?), using AI to summarise a source's prior public statements before contacting them, using AI to draft internal memos or pitches that are not published, using AI-powered features built into tools the newsroom already uses (spell-check in Google Docs, smart compose in email, transcription in Zoom).

6. **Adds training, accountability, and review mechanisms.** Includes how new and existing staff learn the policy (with a specific format — briefing session, onboarding packet, reference card), what happens when the policy is violated (graduated response with at least three severity levels), and a fixed review cadence so the policy stays current as AI tools change. Closes with an effective date and a signature line.

7. **Writes in policy language, not tech language.** The entire document is written for journalists, not for engineers or lawyers. No jargon. No buzzwords. Every section is specific enough to apply and short enough to read in one sitting. The tone is collegial, not corporate — written by editors for reporters, not by compliance for employees.

## Output Format
A single structured document of 1,000 to 1,500 words, formatted for internal distribution. Sections are numbered for easy reference in newsroom discussions. The document includes:

- A preamble stating the publication's editorial values and why the policy exists (3-5 sentences, not a mission statement)
- Numbered sections covering: Permitted Uses, Prohibited Uses, Disclosure Requirements, Quality Gates, Training and Onboarding, Accountability, Review and Updates
- A summary table or quick-reference list at the end for daily use — reporters should be able to check this table without reading the full document
- An effective date placeholder and signature line
- Section numbers and sub-numbers (1.1, 1.2, etc.) so staff can reference specific rules in conversation: "That's a 2.3 situation"

Tone: direct, practical, collegial — written by editors for journalists. Not legalistic, not preachy. The policy should read like a well-written staff memo, not a corporate compliance document and not a manifesto about the future of journalism.

## Quality Criteria
- [ ] Every section contains specific, actionable rules — not general principles or aspirations
- [ ] The permitted/prohibited framework covers at least eight distinct use cases relevant to the newsroom described
- [ ] Permitted uses include concrete verification requirements — not just "verify the output" but what to verify and how
- [ ] Prohibited uses state clear red lines with no ambiguity about what falls on which side
- [ ] Disclosure rules define exactly when readers must be told, when editors must be told, and when sources must be told — with concrete triggers for each
- [ ] Quality gates specify who reviews, what they check for, and how AI-assisted content is flagged in workflow
- [ ] Training section describes a concrete onboarding mechanism — not just "staff should be trained" but the format, timing, and content of the training
- [ ] Accountability section includes graduated consequences — at least three severity levels with examples of what falls into each
- [ ] The policy includes a fixed review cadence (e.g., every six months) with a named owner or role
- [ ] The document is between 1,000 and 1,500 words — long enough to be useful, short enough to be read
- [ ] The quick-reference table at the end is complete enough to answer the most common questions without reading the full document
- [ ] No AI buzzwords: no "leverage," "harness," "empower," "cutting-edge," "transformative," "game-changer," "unlock," "supercharge," or "best-in-class"
- [ ] All examples are generic — not traceable to any real publication, person, or incident
- [ ] Output is free of generic AI-template phrasing — no "delve into," "navigate the complexities of," Latinate filler verbs ("utilize," "facilitate," "leverage" where a plainer verb fits), restate-the-question intros, summary-of-the-summary closes, or em-dash overuse
- [ ] The policy acknowledges at least three honest limitations of AI in journalism (fabrication, bias, confidentiality risk)
- [ ] A reporter reading the policy can determine within 30 seconds whether a specific intended use is allowed
- [ ] If the newsroom includes freelancers or contributors, the policy states explicitly how it applies to them
- [ ] The policy addresses what happens to existing content produced with AI before the policy was adopted

## Example

### Input
**Newsroom description:** A 15-person regional daily newspaper covering city government, courts, education, and local business. Two reporters have started using Claude for research and draft outlines. The editor-in-chief wants a clear policy before use spreads further. The paper has published a community trust statement promising readers that every story is reported and written by its journalists. No freelancers. No existing AI policy. The editor-in-chief, Maria Torres, will own the policy.

**Additional context:** The paper uses WordPress as its CMS, with a simple story budget spreadsheet. Reporters file stories via email or directly in the CMS. No formal assignment tracker beyond the story budget. One reporter covers courts and has expressed concern about entering case details into AI tools. The paper runs a weekly education column that draws on state test-score data.

### Output

---

**AI Usage Policy**
*The Riverdale Gazette — Editorial Staff*

**Preamble**

The Gazette's journalism depends on the trust of our readers and our sources. We promised both that every story we publish is reported and written by our journalists. This policy defines where and how AI tools may be used in our newsroom without breaking that promise. It applies to all editorial staff, effective on the date below. It will be reviewed every six months.

This is not a technology policy. It is an editorial standards document. The same principles that govern our reporting — accuracy, fairness, transparency, independence — govern our use of any tool, including AI.

---

**1. Permitted Uses**

The following uses of AI tools are permitted without prior approval from the editor-in-chief. Staff must still follow the quality gates in Section 4 and the disclosure requirements in Section 3.

1.1 **Transcription.** Using AI to transcribe recorded interviews, press conferences, public meetings, or court proceedings that are part of the public record. The reporter must verify all direct quotes against the original recording before publication. AI transcription is a first draft, not a final source.

1.2 **Background research.** Using AI to summarise public records, compile timelines from published sources, explain technical concepts (zoning codes, court procedures, budget line items, education policy terminology), or identify relevant prior coverage. The reporter must verify every factual claim against primary sources. AI summaries are starting points for reporting, not substitutes for it.

1.3 **Headline and summary drafts.** Using AI to generate draft headlines, deck lines, social media post text, or newsletter teasers. The final published version must be written or substantially rewritten by a staff member. No AI-generated headline or teaser may be published without staff review and revision.

1.4 **Data analysis.** Using AI to identify patterns in public datasets — election results, school test scores, property records, budget figures, crime statistics. All findings must be verified by the reporter using the original dataset. If AI-assisted analysis produces a finding that drives the story, reader disclosure is required (see Section 3.3).

1.5 **Grammar and style checks.** Using AI as a proofreading or style-checking tool after the reporter has written the story. This includes grammar correction, spell-checking, and style consistency checks. It does not include asking AI to rewrite passages for "better flow" or to "improve the prose." Proofreading is permitted; rewriting is not.

1.6 **Translation assistance.** Using AI to produce rough translations of documents, public statements, or interviews conducted in languages the reporter does not speak. A qualified human translator must verify any translated material that will be quoted directly in publication. Rough translations are research tools, not publishable text.

1.7 **Internal communications.** Using AI to draft internal documents — story pitches, meeting agendas, notes for the story budget — that are not published. This is a convenience, not an editorial function, and does not require disclosure.

1.8 **Calendar and scheduling.** Using AI-powered tools to manage schedules, set reminders for court dates or meeting agendas, or compile event listings from public sources. This is administrative, not editorial.

---

**2. Prohibited Uses**

The following uses are prohibited for all staff, without exception. No deadline pressure, staffing shortage, or efficiency argument overrides these rules.

2.1 **Bylined content.** AI may not write or substantially draft any story, column, editorial, opinion piece, or letter that carries a staff byline. "Substantially draft" means generating connected prose that forms the basis of the published text, even if the reporter edits it afterward. Our byline means a journalist wrote it. If AI wrote the first draft and a journalist polished it, the journalist did not write it.

2.2 **Quotes and dialogue.** AI may not generate, reconstruct, paraphrase-as-if-direct, or "clean up" direct quotes from sources. If a source's exact words are unclear from your recording or notes, contact the source to confirm the quote, or paraphrase with clear attribution ("Smith said the project was behind schedule" rather than a fabricated direct quote). This rule applies even when the AI-generated version is probably accurate. Probably is not good enough for a direct quote.

2.3 **Source impersonation.** AI may not be used to simulate a source's voice, generate hypothetical statements attributed to real people, or produce any content presented as coming from a named individual. This includes using AI to draft "what a source might say" as preparation for an interview — the risk of contaminating your reporting with AI-generated expectations is too high.

2.4 **Image generation and manipulation.** AI-generated images may not be published in news coverage. This includes fully synthetic images, AI-composited images, AI-altered photographs, and AI-generated illustrations on news pages. Feature or opinion sections may request a case-by-case exception from the editor-in-chief; if granted, the image must carry a visible label: "Image generated by AI." Stock photographs and file photos remain governed by existing photo credit policies.

2.5 **Confidential material.** No confidential source information, unpublished documents, sealed court records, grand jury material, off-the-record statements, juvenile case details, or any material received under an agreement of confidentiality may be entered into any AI tool. AI services may retain, log, or use input data for training. Treat every AI tool as a public channel. If you would not post the information on social media, do not paste it into an AI prompt.

2.6 **Editorial judgment.** AI may not determine news value, story placement, source selection, angle, or editorial priorities. These decisions belong to editors and reporters. AI may inform your judgment — a data analysis that reveals a pattern is useful input — but the editorial decision about what to cover, how to cover it, and what to emphasise is yours, not a model's.

2.7 **Source identification and contact.** AI may not be used to identify anonymous or pseudonymous sources, to find personal contact information for private citizens, or to compile dossiers on individuals who are not public figures. Using AI to find a public official's office contact information is fine. Using AI to find a whistleblower's home address is a firing offence.

---

**3. Disclosure Requirements**

Disclosure has three layers. The first two are always required. The third depends on the situation.

3.1 **Internal disclosure (always required).** Any reporter who uses AI in the reporting or writing process must note this in the story budget spreadsheet in the "Notes" column. The note should state which tool was used and for what task.

Examples of adequate internal disclosure:
- "Used Claude to transcribe 45-minute city council recording. Verified all quotes against audio."
- "Used AI to summarise 200-page zoning variance application for background. Key facts verified against original document."
- "Used AI to identify trends in five years of school test-score data. All figures checked against state database."

Examples of inadequate internal disclosure:
- "Used AI." (Too vague. For what?)
- "AI-assisted." (Same problem.)

3.2 **Editor disclosure (always required).** The assigning editor must be informed of AI use before the story is filed — or at the latest, when the story is filed. This is a conversation, not just a note in the spreadsheet. The editor needs to know: What tool was used? For what task? What output did it produce? How was that output verified? The editor may ask follow-up questions and may request additional verification steps before clearing the story for publication.

3.3 **Reader disclosure (situational).** Reader-facing disclosure is required when AI played a substantive role in producing the published content. Substantive means the AI output shaped the story's findings, structure, or factual claims — not just that a reporter used AI to transcribe a recording.

Triggers for reader disclosure:
- AI-assisted data analysis produced findings that drive the story or its headline
- AI-generated text appears in a non-news context (summaries, teasers, social media posts) under the Gazette's name
- AI was used to translate a document or statement that is quoted in the story

Reader disclosure format: a brief editor's note at the bottom of the story, before the reporter's contact information.

Example: "Data analysis in this report was assisted by AI tools. All findings were independently verified by Gazette reporters using original public records."

Reader disclosure is not required for routine transcription, grammar checks, background research that informed (but did not produce) the story, or internal communications.

3.4 **Source disclosure (situational).** If AI tools are used to process information provided by a source — transcription, translation, summarisation of interview notes — and the source has a reasonable expectation of confidentiality, the reporter must inform the source that AI tools were used and describe what information was entered.

This is especially important for:
- Sources in sensitive stories (whistleblowers, personnel disputes, legal matters)
- Sources who provided information off the record or on background
- Sources in the courts beat where case details may have legal protections

When in doubt about whether source disclosure is needed, ask the editor-in-chief before entering the material into any AI tool.

---

**4. Quality Gates**

4.1 **Standard review.** All AI-assisted content is reviewed by the assigning editor before publication, using the same editorial process as any other story. In addition to the usual editorial checks, the editor confirms:
- All facts are independently verified against primary sources — not against the AI output
- All direct quotes are taken from original recordings or reporter's notes, not from AI transcription without verification
- The story reads as if written by the reporter. If any passage sounds generated rather than written, the editor sends it back for rewriting
- The AI disclosure in the story budget is specific and complete

4.2 **Flagging in workflow.** When filing a story that involved AI assistance, the reporter adds the tag "AI-assisted" in the WordPress CMS. This tag is visible to editors and is not published. It serves as an internal flag so the copy desk and section editors know to apply the quality checks in 4.1.

4.3 **Verification standard for AI-assisted data analysis.** When AI is used to analyse a dataset and the analysis produces findings that appear in the story, the reporter must:
- Document the exact prompt or query used
- Run the analysis a second time to check for consistent results
- Verify key findings manually against the original data (spot-check at minimum; full verification for figures that appear in the story)
- Save the original dataset, the AI output, and the verification notes in the story file

4.4 **Spot checks.** The editor-in-chief will review a random sample of AI-tagged stories each month. The review checks whether disclosure was complete, verification was documented, and the published story meets the standards above. These checks are calibration, not investigation. If patterns emerge — for instance, AI-generated phrasing surviving into published copy, or disclosure notes that are consistently vague — the newsroom addresses them through the training process in Section 5, not through discipline.

---

**5. Training and Onboarding**

5.1 **Initial briefing.** Every current staff member will attend a 30-minute briefing on this policy within two weeks of its effective date. The briefing covers:
- A walkthrough of every section, with examples of permitted and prohibited uses
- A live demonstration of the disclosure process (how to tag stories in WordPress, what to write in the story budget, how to have the editor conversation)
- Common grey areas and how to resolve them
- Time for questions

5.2 **Quick-reference card.** A one-page summary of the quick-reference table (see end of this document) will be printed and posted near each workstation. The card lists permitted and prohibited uses with no further explanation — for full context, staff refer to the complete policy.

5.3 **New hires.** This policy is included in the onboarding packet for every new editorial hire. New reporters review the policy with their assigning editor during their first week and complete a brief self-assessment: read three scenarios, determine whether each is permitted, prohibited, or requires disclosure, and discuss the answers with the editor.

5.4 **Ongoing updates.** When the policy is revised (see Section 7), the editor-in-chief will circulate a written summary of changes to all staff and hold a 15-minute Q&A session within one week of the revision. Between revisions, staff are encouraged to raise questions or flag new use cases with their assigning editor or the editor-in-chief at any time.

---

**6. Accountability**

Violations of this policy are treated as editorial errors, with consequences proportional to the severity and intent. The goal is compliance, not punishment — but serious or repeated violations have serious consequences.

6.1 **Minor violation.** Failing to tag a story as AI-assisted in the CMS, omitting the AI disclosure in the story budget, or providing a vague disclosure note. These are process errors, not ethical breaches.

Response: verbal reminder from the assigning editor. The editor helps the reporter correct the disclosure. The incident is documented in the editor-in-chief's monthly review notes for pattern tracking. No further action unless the pattern repeats.

6.2 **Moderate violation.** Using AI to draft portions of a bylined story without disclosing this to the editor. Entering non-confidential but non-public information into an AI tool without considering whether disclosure rules apply. Publishing AI-generated text (a teaser, a social post, a headline) without staff review or revision.

Response: written discussion with the editor-in-chief. The reporter and editor review the incident together, identify what went wrong and why, and agree on specific corrective steps. If the violation resulted in published content that does not meet the Gazette's standards, a correction may be required (see 6.4). Documented in the reporter's personnel file.

6.3 **Serious violation.** Publishing AI-generated quotes attributed to a real source. Entering confidential source material, sealed court records, or off-the-record information into an AI tool. Repeated moderate violations after correction. Using AI to identify or locate anonymous sources.

Response: formal disciplinary action determined by the editor-in-chief in consultation with management. This may include suspension of the reporter's access to AI tools, reassignment from sensitive beats, or further consequences up to and including termination. If the violation compromised source confidentiality, the editor-in-chief will assess the damage and determine whether the source needs to be notified.

6.4 **Correction obligation.** If a published story is found to contain AI-generated content that was not disclosed or verified — fabricated details, unverified claims, AI-generated quotes, or substantially AI-written prose published under a byline — the Gazette will issue a correction following its existing corrections policy. The correction will note the role AI played in the error, in language consistent with the reader disclosure format in Section 3.3.

---

**7. Review and Updates**

7.1 **Scheduled review.** This policy will be reviewed every six months by the editor-in-chief. The review considers: new AI tools and capabilities that have emerged since the last review, any incidents or near-misses that exposed gaps in the policy, feedback from staff on grey areas or unclear rules, changes in industry standards or legal requirements. The next scheduled review date is noted at the bottom of this document.

7.2 **Interim guidance.** Between scheduled reviews, the editor-in-chief may issue interim written guidance if a new tool, a new use case, or an incident requires immediate clarification. Interim guidance has the same authority as the policy itself until the next scheduled review, at which point it is either incorporated into the policy or withdrawn.

7.3 **Staff input.** Staff may propose changes, flag ambiguities, or report emerging AI use cases at any time by raising them with their assigning editor or the editor-in-chief. The policy works only if the people it governs can shape it.

7.4 **Existing content.** Stories published before the effective date of this policy are not retroactively subject to its rules. However, if a staff member becomes aware that previously published content contains unverified AI-generated material, they should report this to the editor-in-chief for assessment and potential correction.

---

**Quick Reference**

| Use Case | Status | Key Condition |
|---|---|---|
| Transcription of interviews/meetings | Permitted | Verify all quotes against original recording |
| Background research and summaries | Permitted | Verify all facts against primary sources |
| Headline and teaser drafts | Permitted | Staff must write or rewrite the final version |
| Data analysis (public datasets) | Permitted | Verify findings against original data; reader disclosure if findings drive the story |
| Grammar and style checks | Permitted | Proofreading only — no AI rewriting |
| Translation assistance | Permitted | Human translator must verify direct quotes |
| Internal memos and pitches | Permitted | Not published; no disclosure required |
| Calendar and scheduling | Permitted | Administrative, not editorial |
| Writing bylined stories | **Prohibited** | No exceptions |
| Generating or reconstructing quotes | **Prohibited** | No exceptions |
| Simulating a source's voice | **Prohibited** | No exceptions |
| AI-generated news images | **Prohibited** | Case-by-case exception for features with mandatory label |
| Entering confidential material | **Prohibited** | Treat all AI tools as public channels |
| Making editorial decisions | **Prohibited** | AI may inform judgment; it does not make it |
| Identifying anonymous sources | **Prohibited** | No exceptions |

---

**Effective date:** _______________

**Approved by:** Maria Torres, Editor-in-Chief

**Next scheduled review:** Six months from effective date: _______________

---

**Scenario Self-Test**

For training purposes (Section 5.3). Answers below.

**Scenario A:** A reporter covers a two-hour school board meeting. She records it, then uses an AI transcription tool to produce a text transcript. She pulls three direct quotes from the transcript for her story, checking each against the recording. She notes "Used AI transcription; quotes verified against audio" in the story budget.

**Scenario B:** A reporter is writing a profile of a local business owner. The interview ran long and the reporter's notes are messy. He pastes his rough notes into Claude and asks it to "write a clean 800-word profile based on these notes." He then edits the Claude output, tightening some sentences and adding a paragraph. He files the story under his byline without mentioning AI use.

**Scenario C:** A reporter covering the courts beat receives a sealed document from a confidential source. She wants to understand the legal language. She photographs the document and uploads it to an AI tool, asking it to "explain what this document says in plain English."

**Answers:**
- **A:** Permitted. The reporter followed every step correctly — AI transcription with quote verification, specific internal disclosure, story budget note. No reader disclosure needed because transcription is a routine permitted use and the AI output did not shape the story's findings.
- **B:** Prohibited (Section 2.1). The reporter used AI to substantially draft a bylined story. Editing the output afterward does not change this. The reporter should also have disclosed the AI use to the editor (Section 3.2). This is a moderate-to-serious violation depending on the extent of the AI-generated text in the published version.
- **C:** Prohibited (Section 2.5). Sealed court documents are confidential material. Uploading them to an AI tool violates the prohibition on entering confidential material. The reporter should ask the paper's legal counsel or an attorney source to explain the document instead. This is a serious violation.

---

### Second Example: Digital Magazine With Freelancers

#### Input
**Newsroom description:** A digital-only investigative magazine with 8 full-time editorial staff and a roster of 20-25 freelance contributors per year. Beats: national politics, corporate accountability, healthcare, and criminal justice. Long-form investigations (3,000-8,000 words) are the core product, supplemented by daily analysis pieces. Three freelancers have asked whether they can use AI to help with research and first drafts. Two staff reporters already use AI for transcription and document analysis. The managing editor, David Chen, wants a policy that covers both staff and freelancers. The magazine has a published editorial charter committing to original, independently reported journalism. Freelancers sign contributor agreements but are not employees.

**Additional context:** The magazine handles sensitive source material regularly — leaked documents, whistleblower communications, sealed court filings. Several investigations involve sources who face legal or physical risk if identified. The magazine uses a secure CMS with role-based access. It also maintains a tip line that receives encrypted submissions. The editorial charter states: "Every fact we publish is independently verified. Every source we protect remains protected."

#### Output

---

**AI Usage Policy**
*The Cormorant — Editorial Staff and Contributors*

**Preamble**

The Cormorant publishes investigations that hold institutions accountable. Our readers trust us because we verify every fact independently. Our sources trust us because we protect them absolutely. This policy governs how AI tools may and may not be used in our editorial work. It applies to all staff and to every freelance contributor who publishes under The Cormorant's name. It takes effect on the date below and will be reviewed every six months.

Because our work regularly involves confidential sources and sensitive documents, this policy is more restrictive than what a general-interest publication might adopt. That is deliberate. The consequences of a confidentiality breach in investigative journalism are not embarrassment — they can be legal jeopardy, job loss, or physical danger for the people who trusted us.

---

**1. Permitted Uses — Staff**

The following uses are permitted for full-time editorial staff without prior approval. All uses require disclosure to the assigning editor (Section 4).

1.1 **Transcription of non-sensitive recordings.** AI transcription of on-the-record interviews, public hearings, press conferences, and published audio/video. The reporter must verify all direct quotes against the original recording before publication.

1.2 **Public-record research.** Using AI to summarise, cross-reference, or analyse publicly available records — court filings in the public docket, corporate SEC filings, published government reports, academic papers, news archives. The reporter must verify every factual claim against the original document.

1.3 **Data analysis of public datasets.** Using AI to identify patterns in datasets that are already public — campaign finance records, lobbying disclosures, inspection reports, census data. All findings must be verified against the original data. If AI-assisted analysis produces findings that drive the story, reader disclosure is required (Section 5.3).

1.4 **Technical explainers.** Using AI to explain technical concepts the reporter encounters during an investigation — medical terminology, financial instruments, legal procedures, scientific methodology. The explanation is a starting point; the reporter must verify accuracy with a qualified source or authoritative reference.

1.5 **Grammar and style checks.** Using AI for proofreading after the reporter has written the story. This means correcting errors, not rewriting prose.

1.6 **Translation of public documents.** Using AI to produce rough translations of publicly available documents in languages the reporter does not read. A qualified human translator must verify any translated material that will be quoted directly.

1.7 **Coding assistance for data work.** Using AI to write or debug code for data analysis (spreadsheet formulas, database queries, data cleaning scripts). The reporter or data editor must verify that the code produces correct results against known test cases.

---

**2. Permitted Uses — Freelance Contributors**

Freelancers commissioned by The Cormorant may use AI tools only for the following purposes:

2.1 **Transcription of non-sensitive, on-the-record interviews.** Same conditions as staff (Section 1.1).

2.2 **Grammar and style checks.** Same conditions as staff (Section 1.5).

2.3 **No other AI use without prior written approval.** Freelancers who wish to use AI for research, data analysis, translation, or any other purpose on a Cormorant assignment must request approval from the assigning editor before beginning. The editor may grant or deny the request and may impose additional conditions (e.g., "You may use AI to summarise these public filings, but do not enter any source-provided documents").

2.4 **Rationale.** Freelancers work across multiple publications and may use different AI tools with different data retention policies. We cannot verify their security practices to the same degree as staff. This restriction protects our sources and our editorial standards.

2.5 **Contributor agreement.** Starting on the effective date of this policy, all freelance contributor agreements will include a clause requiring compliance with this AI policy. Freelancers who violate the policy may lose future commissioning.

---

**3. Prohibited Uses — All Staff and Contributors**

The following uses are prohibited for everyone who produces content for The Cormorant, without exception.

3.1 **Bylined or co-bylined content.** AI may not write or substantially draft any article, analysis, essay, or editorial published under a byline. "Substantially draft" means generating connected prose that forms the basis of the published text, even if the author edits it afterward. A Cormorant byline means the author wrote it.

3.2 **Quotes.** AI may not generate, reconstruct, paraphrase-as-if-direct, or "clean up" direct quotes. If you cannot confirm a source's exact words from your recording or notes, contact the source or use indirect attribution.

3.3 **Source-related material.** No information provided by a confidential source — documents, communications, recordings, identity details, location information — may be entered into any AI tool under any circumstances. This includes material from the tip line, encrypted messages, and any document not in the public record. The risk is not theoretical: AI services log inputs, and a breach could endanger a source.

3.4 **Sealed, embargoed, or restricted documents.** No sealed court records, grand jury materials, embargoed reports, or documents received under non-disclosure agreements may be entered into AI tools. Even if the document will eventually become public, entering it before that date violates the restriction under which you received it.

3.5 **AI-generated images.** No AI-generated or AI-altered images in editorial content. The Cormorant does not publish synthetic visuals in any context.

3.6 **Source identification.** AI may not be used to identify, locate, or compile information about anonymous or pseudonymous sources, whistleblowers, or private individuals who have not consented to public attention.

3.7 **Sensitive-interview transcription.** AI may not be used to transcribe interviews where the source is confidential, off the record, or on background. These interviews must be transcribed manually by the reporter.

3.8 **Editorial decisions.** AI may not determine what to investigate, whom to interview, what angle to pursue, or what to publish. It may inform your reporting; it does not direct it.

---

**4. Disclosure Requirements — Internal**

4.1 **Story-level disclosure.** Every story that involved any AI use must include a disclosure note in the CMS metadata field labeled "Production Notes." The note states the tool, the task, and the verification method. This note is visible to all editors but not published.

4.2 **Editor conversation.** The assigning editor must be informed of AI use at or before the time of filing. For investigations, this conversation should happen earlier — when the reporter first uses AI on the story, not after weeks of work.

4.3 **Investigation log.** For multi-month investigations, the reporter maintains a running log of all AI use on the project. This log is shared with the assigning editor and the managing editor. It includes: date, tool, task, what was entered (described, not pasted), and how the output was verified.

---

**5. Disclosure Requirements — External**

5.1 **Source disclosure.** If AI tools were used to process any information connected to a source — even non-confidential information — the reporter must inform the source and describe what was entered. For confidential sources, AI use on their material is prohibited entirely (Section 3.3), so this rule applies to non-confidential sources whose information was processed with AI.

5.2 **Reader disclosure — data-driven stories.** When AI-assisted data analysis produces findings that drive the story or appear in the headline, the story must include a methodology note. The note describes the data source, the analytical method (including AI assistance), and how findings were verified. Placement: end of story, before author bio.

5.3 **Reader disclosure — other cases.** For other substantive AI uses (translation that appears as quoted material, AI-assisted pattern identification in documents), the story includes a brief editor's note: "Reporting in this story was assisted by AI tools for [specific task]. All findings were independently verified."

---

**6. Quality Gates**

6.1 **Standard editorial review.** All AI-assisted content is reviewed through the normal editorial process. In addition, the assigning editor confirms:
- Every fact is verified against primary sources, not against AI output
- Every quote is confirmed against original recordings or notes
- The text reads as written by the author, not generated
- The production note in the CMS is specific and complete

6.2 **Investigation-level review.** For investigative stories that used AI in any capacity, the managing editor reviews the investigation log (Section 4.3) before publication. This is a second check on source protection: did any AI use risk exposing confidential information, even inadvertently?

6.3 **Freelancer review.** Stories from freelance contributors who used AI (with approval per Section 2.3) receive an additional review step: the assigning editor reads the story specifically looking for passages that may have been AI-generated rather than written by the freelancer.

6.4 **Data verification standard.** When AI-assisted data analysis produces story-driving findings:
- The data editor or a second reporter independently replicates the key findings using the original dataset
- The exact prompts or queries used with AI tools are documented and saved
- The AI output, the verification results, and any discrepancies are recorded in the story file

---

**7. Training**

7.1 **Staff briefing.** All current staff attend a 45-minute briefing within two weeks of the effective date. The briefing covers the full policy, with emphasis on the confidentiality rules in Section 3 and the investigation log requirement in Section 4.3.

7.2 **Freelancer notification.** All active freelance contributors receive a written copy of this policy with their next commission. The assigning editor discusses the freelancer-specific rules (Section 2) with each contributor individually.

7.3 **Scenario exercises.** The briefing includes five scenario exercises similar to those in investigative journalism ethics training. Reporters work through each scenario and identify the correct policy response. Scenarios cover: routine permitted use, confidential-source prohibition, grey-area research use, freelancer requesting AI approval, and a near-miss where AI output almost made it into publication unverified.

7.4 **New staff and contributors.** New hires review the policy with the managing editor during their first week. New freelancers receive the policy with their contributor agreement and discuss it with their assigning editor before beginning work.

---

**8. Accountability**

8.1 **Minor violation.** Incomplete or missing production notes, failure to tag a story in the CMS, or vague disclosure to the editor.

Response: the assigning editor addresses the lapse directly and helps the reporter correct the record. Documented for pattern tracking.

8.2 **Moderate violation.** Using AI beyond the permitted scope without approval (e.g., a freelancer using AI for research without requesting permission). Using AI for a task that should have received editor approval. Publishing AI-generated text in a non-bylined context (social media, newsletter) without staff review.

Response: written review with the managing editor. Corrective steps agreed and documented. If the violation involves a freelancer, the contributor agreement is reviewed and the freelancer is put on notice.

8.3 **Serious violation.** Entering confidential source material into any AI tool. Publishing AI-generated quotes or substantially AI-drafted text under a byline. Using AI to identify or locate a source. Repeated moderate violations after correction.

Response: formal disciplinary action. For staff: may include suspension, reassignment from sensitive beats, or termination. For freelancers: immediate termination of the contributor relationship and removal from the active roster. If the violation compromised source confidentiality, the managing editor assesses the risk to the source and determines whether the source must be notified and whether additional protective measures are needed.

8.4 **Correction obligation.** Published content found to contain unverified AI-generated material receives a correction under the magazine's existing corrections policy, with a note describing the role AI played.

---

**9. Review**

9.1 This policy is reviewed every six months by the managing editor, with input from the editorial team.

9.2 Between reviews, the managing editor may issue interim guidance. Interim guidance has the same authority as the full policy until the next review.

9.3 Staff and contributors may propose changes or flag gaps at any time.

---

**Quick Reference — Staff**

| Use Case | Status |
|---|---|
| Transcription (non-sensitive, on-the-record) | Permitted |
| Public-record research (verified) | Permitted |
| Public data analysis (verified; reader disclosure if story-driving) | Permitted |
| Technical concept explainers (verified with source/reference) | Permitted |
| Grammar and style checks | Permitted |
| Translation of public documents (verified for direct quotes) | Permitted |
| Coding for data analysis (output verified) | Permitted |
| Transcription of confidential/off-record interviews | **Prohibited** |
| Any use involving confidential source material | **Prohibited** |
| Sealed, embargoed, or restricted documents | **Prohibited** |
| Writing bylined content | **Prohibited** |
| Generating quotes | **Prohibited** |
| AI-generated images | **Prohibited** |
| Source identification | **Prohibited** |

**Quick Reference — Freelancers**

| Use Case | Status |
|---|---|
| Transcription (non-sensitive, on-the-record) | Permitted |
| Grammar and style checks | Permitted |
| Everything else | **Requires prior written approval from assigning editor** |

---

**Effective date:** _______________

**Approved by:** David Chen, Managing Editor

**Next scheduled review:** _______________

---

## Known Limitations
- This skill generates a policy document based on the newsroom description you provide. If your description omits important context — union agreements, legal obligations in your jurisdiction, existing ethics codes, corporate parent guidelines — the policy will not account for them. The skill cannot research your newsroom's constraints on its own. Provide everything relevant; err on the side of over-describing your situation.
- The policy is an editorial document, not a legal instrument. It does not constitute legal advice on data protection, intellectual property, employment law, or liability. Newsrooms operating under specific regulatory frameworks (GDPR, state privacy laws, collective bargaining agreements, broadcaster licensing conditions) should have legal counsel review the generated policy before adoption.
- AI tools and their capabilities change faster than any policy can track. A policy generated today may not cover tools, use cases, or risks that emerge next quarter. The review cadence section mitigates this, but the policy will always lag behind the technology. A six-month review cycle is the minimum; newsrooms in fast-moving environments may need quarterly reviews.
- The policy addresses text-based AI tools most thoroughly because they pose the clearest editorial risks. AI tools for audio, video, image editing, and code generation receive less detailed treatment. If your newsroom works heavily in these formats (broadcast, visual journalism, data journalism with custom tools), you may need to supplement the generated policy with format-specific guidance.
- The skill cannot account for informal newsroom culture. A policy is only as strong as its enforcement. If the newsroom has a history of treating written policies as suggestions, this document alone will not change that. The training, accountability, and review sections provide structure, but editorial leadership must back the policy with consistent action.

## Related Skills
- [house-style-enforcer](../house-style-enforcer/SKILL.md) — enforce your publication's house style rules across copy, including copy produced with AI assistance
- [fact-check-prompt](../fact-check-prompt/SKILL.md) — verify claims in AI-assisted content before publication
- [copy-editor-assistant](../copy-editor-assistant/SKILL.md) — run a copy edit on AI-assisted drafts to catch phrasing that reads as generated rather than written
- [editor-note-writer](../editor-note-writer/SKILL.md) — draft the reader-facing disclosure notes required by the AI policy's disclosure section
- [version-comparator](../version-comparator/SKILL.md) — compare two versions of a policy document to identify what changed between revisions
- [jargon-flagger](../jargon-flagger/SKILL.md) — check the policy itself for jargon or unclear language before distributing it to staff

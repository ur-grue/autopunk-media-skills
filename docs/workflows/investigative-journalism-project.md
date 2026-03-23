# Workflow: Investigative Journalism Project

**From tip to publication — 10 skills across the reporting arc.**

This workflow covers the full lifecycle of an investigative piece, from initial research through to publication and legal review. Each step builds on the previous one.

---

## Who This Is For

Journalists working on medium to long-form investigative stories. Works for freelancers, staff reporters, and small investigative teams at print, digital, or broadcast outlets.

---

## The Workflow

### Step 1: Define your research brief
**Skill:** [`research-brief-creator`](../../skills/magazine-journalism/ideation/research-brief-creator.md)

Give Claude what you know so far — the tip, the subject, the suspected story. Get back a structured research brief: what to investigate, what records to request, who to talk to, and what would constitute proof.

**Output you'll use next:** Your investigation roadmap.

---

### Step 2: Map the key people
**Skill:** [`person-biography-brief`](../../skills/research/people/person-biography-brief.md)

Feed in the names of your key subjects and sources. Get back concise biographies covering career history, public statements, known affiliations, and potential motivations.

**Output you'll use next:** Background context for your interviews and FOIA requests.

---

### Step 3: File your records requests
**Skill:** [`foia-request-writer`](../../skills/magazine-journalism/investigation/foia-request-writer.md)

Give Claude the specific records you need, the agency that holds them, and the legal basis for your request. Get back a properly formatted FOIA/FOI letter ready to send.

**Output you'll use next:** Submit and track responses.

---

### Step 4: Analyze documents and data
**Skill:** [`document-analysis-brief`](../../skills/magazine-journalism/investigation/document-analysis-brief.md)

When documents arrive, feed them to Claude. Get back a structured analysis: key findings, contradictions, gaps, and questions for follow-up.

**Output you'll use next:** Interview preparation and story structure.

---

### Step 5: Build your interview questions
**Skill:** [`interview-question-generator`](../../skills/tv-documentary/scripting/interview-question-generator.md)

Give Claude the subject's biography, the documents you've analyzed, and what you're trying to establish. Get back layered question sets — from open-ended warmups to pointed confrontation questions.

**Output you'll use next:** Your interview cue sheet.

---

### Step 6: Find the story angles
**Skill:** [`story-angle-finder`](../../skills/magazine-journalism/ideation/story-angle-finder.md)

Now that you have research, documents, and interview material, feed it all in. Get back multiple publishable angles with different framings, reporting approaches, and headline concepts.

**Output you'll use next:** Your chosen editorial angle.

---

### Step 7: Structure the piece
**Skill:** [`reportage-structure`](../../skills/magazine-journalism/writing/reportage-structure.md)

Give Claude your chosen angle, your evidence, and your target length. Get back a detailed structural outline — opening scene, narrative arc, evidence placement, source attribution plan.

**Output you'll use next:** Your writing blueprint.

---

### Step 8: Run the fact-check
**Skill:** [`claim-verification-checklist`](../../skills/magazine-journalism/fact-checking/claim-verification-checklist.md)

Before publication, feed in every factual claim in your piece. Get back a verification checklist: what's confirmed, what needs a second source, what's unverifiable, and what's risky.

**Output you'll use next:** Your pre-publication safety net.

---

### Step 9: Check legal risks
**Skill:** [`defamation-risk-checker`](../../skills/magazine-journalism/legal/defamation-risk-checker.md)

Feed in the final draft. Get back a risk assessment flagging potential defamation, privacy, or contempt issues with suggested rewrites for problematic passages.

**Output you'll use next:** Final legal review notes for your editor.

---

### Step 10: Write the headline and distribution copy
**Skill:** [`headline-generator`](../../skills/magazine-journalism/ideation/headline-generator.md)

Give Claude the final piece with its angle and audience. Get back headline options and social distribution copy.

**Output you'll use next:** Publication-ready metadata.

---

## Optional Add-Ons

| When you need | Use this skill |
|--------------|----------------|
| Data analysis for numbers-heavy stories | [`data-story-finder`](../../skills/data-journalism/analysis/data-story-finder.md) |
| Source credibility assessment | [`source-credibility-scorer`](../../skills/magazine-journalism/fact-checking/source-credibility-scorer.md) |
| Correction notices if needed post-publication | [`correction-notice-writer`](../../skills/magazine-journalism/fact-checking/correction-notice-writer.md) |
| Newsletter teaser for the investigation | [`newsletter-teaser-writer`](../../skills/magazine-journalism/distribution/newsletter-teaser-writer.md) |

---

## Tips

- **Never publish Claude's output as fact without independent verification.** Claude can structure your evidence, but it cannot verify claims. Every factual assertion needs human confirmation.
- **Run Step 8 (fact-check) even if you think the piece is clean.** It catches things you've gone blind to.
- **Save your document analysis outputs** — they become the backbone of your reporting file.

---
name: two-way-brief-writer
status: stable
category: radio-audio
subcategory: news-packages
version: 1.0
eval_score: 4.4
tags: [radio, news, two-way, live, brief, presenter, reporter]
---

# Two-Way Brief Writer

## What This Skill Does
Writes a briefing document for a live radio two-way — covering the story context, likely presenter questions, suggested answer frameworks, and key facts for the reporter or expert in the studio or on the line.

## When To Use This Skill
- A reporter is about to go live in a two-way and needs a structured brief to work from under time pressure
- A news editor needs to prepare a guest expert for a live studio conversation without over-scripting their answers
- A presenter needs a question set for a two-way that will run after a package or a bulletin
- A reporter filed a package earlier and is now being brought back for a two-way discussion — the brief needs to extend the package's angles

## What You Need To Provide
**Required:** The story, the reporter or guest's role and position, the programme context (e.g. mid-bulletin, programme interview), and approximate two-way duration.
**Optional:** Any angles the presenter is likely to push on, recent developments since the original report, any areas the reporter or guest wants to avoid or flag as sensitive, and the presenter's name.

## How Claude Approaches This
1. Summarises the story context in 3–5 bullet points that the guest or reporter can scan in under 60 seconds — this is the standing brief, not a repeat of the full story
2. Generates 4–6 presenter questions in likely order, framed as the presenter would ask them on air; for each question, provides a suggested answer framework (not a scripted answer, but the key points to land and the likely follow-up)
3. Flags any sensitive areas, likely aggressive follow-ups, or difficult angles that the reporter or guest should be prepared for, with a suggested approach for each

## Output Format
A single document divided into three sections: STORY BRIEF (bullet points), LIKELY QUESTIONS WITH ANSWER FRAMEWORKS, and WATCH OUT FOR (sensitive or difficult areas). The document is designed to be read in under 90 seconds. Questions are numbered and in bold. Answer frameworks are indented below each question in plain text. The document is formatted for legibility on a phone screen — short lines, generous whitespace. Total length: 350–500 words.

## Quality Criteria
- [ ] The story brief is scannable in 60 seconds — no paragraphs, no subordinate clauses, just facts
- [ ] Questions are phrased exactly as a presenter would ask them on air, not as editorial prompts
- [ ] Answer frameworks identify the 2–3 key points to make per answer — not a script, but a map
- [ ] "Watch Out For" section anticipates the hardest question the presenter is likely to ask
- [ ] The document has no padding — every line has a purpose
- [ ] Sensitive areas are handled with precision: what the issue is, why it's sensitive, what the approach should be

## Example

### Input
Story: The national ambulance service has published its annual response time data. Category 1 (life-threatening) average response time is now 9 minutes 23 seconds — against an 8-minute target. This is the longest average on record. The health secretary made a statement earlier today defending the service and citing increased call volumes.
Reporter: Priya Chakraborty, health correspondent
Programme: Midday news programme, two-way to follow a 90-second package
Two-way duration: approximately 3 minutes
Presenter name: not specified
Notes: Reporter was at the ambulance service headquarters this morning. The service's CEO gave a brief on-record comment but declined a broadcast interview.

### Output

---
TWO-WAY BRIEF — AMBULANCE RESPONSE TIMES
Reporter: Priya Chakraborty, Health Correspondent
Duration: approx. 3 mins | Format: follows package
Prepared: [insert time]

---

STORY BRIEF

- Category 1 average response: 9 mins 23 secs — against an 8-minute target
- This is the longest Category 1 average on record
- Health secretary made a statement this morning — defended the service, cited increased call volumes
- Service CEO declined a broadcast interview; gave on-record comment (use with caution — check legal clearance)
- Ambulance service says it is in a "recovery programme" — no detail given on timeline

---

LIKELY QUESTIONS & ANSWER FRAMEWORKS

**1. Priya, you were at the ambulance service headquarters this morning. What's the picture you're getting from inside?**
Key points to land: Sense of pressure on staff. CEO declined interview — note that. The "recovery programme" language. Avoid going beyond what you were told on record.

**2. The health secretary says increased call volumes explain this. Is that the whole story?**
Key points to land: Volume is a factor but not the only one. Staffing levels, vehicle availability, hospital handover delays all contribute. The 8-minute target has not been met for [insert years — check before going live].

**3. What does a 9-minute average actually mean for real patients?**
Key points to land: Averages mask worst cases. In rural areas, waits are considerably longer. For Category 1 calls — cardiac arrest, major trauma — every minute matters clinically.

**4. Is there any sign of improvement, or is this getting worse?**
Key points to land: The trend over the last three annual reports. If it's worsening year-on-year, say so. If there are patches of improvement, flag them — balance matters here.

**5. What happens next — is there any accountability for this?**
Key points to land: The target is a national standard. Parliament can scrutinise. Opposition has already issued a statement (check for latest). The service itself says it expects improvement — hold them to a timeframe if you can.

---

WATCH OUT FOR

**"Did the CEO say anything you can use on air?"**
The CEO spoke on record but declined a broadcast interview. Before the two-way, confirm with your editor whether quoting on-record comments is cleared. Do not quote without confirmation — say instead "the service told us..." without attribution to an individual.

**The political angle**
The health secretary's statement is likely to be a line the presenter returns to. Don't be drawn into party-political territory — stick to the data and what it means for patients.

---

## Known Limitations
- Answer frameworks assume the reporter or guest has good working knowledge of the story; for a guest expert who is new to the specific data, a more detailed background brief may be needed before using this document
- The "Watch Out For" section can only anticipate problems flagged in the input — a late development or a piece of information the editor forgot to share will not be covered
- The skill does not verify facts provided in the input brief; the reporter should always cross-check the data before going live
- Two-way dynamics vary significantly between a gentle magazine show and a hard news interrogation; the default register is mid-range — adjust the question framing if the programme style demands it

## Related Skills
- [package-script-writer](./package-script-writer.md)
- [interview-cue-sheet-writer](../scripting/interview-cue-sheet-writer.md)
- [bulletin-script-writer](../scripting/bulletin-script-writer.md)

---
name: crisis-statement-writer
status: stable
category: pr-communications
subcategory: crisis-comms
version: 1.0
eval_score: 4.5
tags: [pr, crisis, statement, crisis-comms, reputation]
---

# Crisis Statement Writer

## What This Skill Does
Drafts an initial crisis communications statement for an organisation responding to a breaking negative story, balancing acknowledgement, accountability, and composure under the three-part structure used by professional crisis communicators: Empathy, Action, Information.

## When To Use This Skill
- A damaging story has broken in the media and you need a public statement within the hour
- An incident has occurred (safety failure, data breach, executive misconduct, product recall, environmental harm) and you must respond before the news cycle runs without you
- Legal has approved the facts but you need them shaped into a statement that does not read like a liability waiver
- You need a first draft to take into the crisis team review, not a blank page

## What You Need To Provide
**Required:** A plain-language description of what happened; what is confirmed vs what is still under investigation; the organisation's name and what it does; whether any people were harmed (yes/no/unknown); what action has been taken so far.

**Optional:** A specific spokesperson name and title; whether legal has cleared any admissions; the target audience (general public, employees, investors, regulators — each requires a different register); any previous public statements that must remain consistent; the channel this will be published on (website, social media, issued to wire).

## How Claude Approaches This
1. Assesses the severity and nature of the incident from the input to calibrate tone — a product recall requires different language from a data breach or a fatal accident.
2. Opens with empathy directed at those affected — names the harm without minimising it — before any organisational self-defence.
3. States what is confirmed as fact, clearly separated from what remains under investigation; does not speculate or fill knowledge gaps with reassurance.
4. Describes the concrete action already taken and commits to a specific next update, if any, rather than vague "we will continue to monitor."
5. Closes at the point of accountability — does not end with brand messaging or promotional language.

## Output Format
150–300 words. Single unbroken statement (no headers, no bullet points). First person plural ("We") for the organisation. Present and recent-past tense. Tone: serious, composed, direct — not apologetic to the point of legal exposure, not defensive to the point of public anger. No jargon. One paragraph for each of: acknowledgement, what is confirmed, action taken. Issued-to line and date at top if requested.

## Quality Criteria
- [ ] Statement opens by naming the incident and acknowledging those affected, not with organisational positioning
- [ ] Confirmed facts are clearly separated from what remains unknown
- [ ] At least one concrete action is named (e.g., investigation launched, product recalled, service suspended)
- [ ] No unsupported reassurances ("rest assured," "safety is our top priority") without evidence
- [ ] No legal over-hedging that reads as deflection ("we categorically deny any suggestion of…")
- [ ] Statement does not end with brand messaging, taglines, or promotional language
- [ ] Word count is within 150–300 words

## Example

### Input
What happened: A gas leak at a food processing plant operated by Carlyle Food Group caused the evacuation of 340 workers at 6:45 a.m. this morning. Six workers were treated on site by paramedics for minor respiratory symptoms. All six have been assessed and none required hospital admission. The cause of the leak is not yet confirmed — preliminary assessment points to a faulty valve in the cold storage unit.

Organisation: Carlyle Food Group — mid-size food manufacturer with three UK plants.

Action taken: Plant evacuated, sealed, emergency services called, internal investigation launched.

Spokesperson: Head of Communications (name not for attribution).

Target: General media, issued to wire. Morning news cycle.

### Output
**Statement from Carlyle Food Group**
*16 March 2026*

This morning, a gas leak at our Carlyle Food Group processing facility in [location] required the evacuation of approximately 340 workers at 6:45 a.m. We are grateful that emergency services responded promptly and that all six workers who reported respiratory symptoms have been assessed and discharged without hospital admission. We are relieved no one required further medical treatment.

The cause of the leak has not yet been determined. Preliminary assessment by our engineering team indicates a potential fault in cold storage equipment, but we will not speculate further until a full investigation is complete. The facility remains sealed pending that investigation.

We have notified the relevant regulatory authorities and will cooperate fully with any official inquiry. We will provide a further update by 6:00 p.m. today or sooner if circumstances warrant. Anyone with concerns — including employees and their families — may contact our dedicated information line at [number].

We are focused entirely on the safety of our people and the integrity of this investigation.

## Known Limitations
- Claude cannot assess legal exposure — statements involving fatalities, regulatory investigations, or litigation risk must be reviewed by legal counsel before release. The output is a communications draft, not a cleared document.
- The quality of the statement is directly proportional to the quality of the briefing. Vague input (e.g., "something happened at our factory") produces a vague statement. You must provide confirmed facts.
- For incidents involving fatalities, severe injuries, or child safety, the register requires significant customisation that goes beyond what Claude can determine without explicit guidance.
- Claude will not draft a statement that is factually false, minimises confirmed harm, or frames victims as a liability risk.

## Related Skills
- [holding-statement-writer](./holding-statement-writer.md)
- [faq-document-writer](./faq-document-writer.md)
- [spokesperson-briefing-note](../media-relations/spokesperson-briefing-note.md)

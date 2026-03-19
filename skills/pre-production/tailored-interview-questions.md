---
name: tailored-interview-questions
status: beta
category: pre-production
subcategory: pre-production
version: 1.0
eval_score: null
tags: [interview, questions, research, journalism, pre-production]
---

# Tailored Interview Questions

## What This Skill Does
Generates a set of interview questions precisely matched to a named subject's known background, public record, and the specific story angle — so every question earns its place and no time is wasted on answers the journalist already has.

## When To Use This Skill
- You have confirmed an interview and have done initial research but need to turn that research into sharp, ordered questions
- Your subject has a detailed public record (previous interviews, published work, official statements) and you want to probe beyond what they usually say
- You are preparing for a high-stakes or time-limited interview and cannot afford vague or redundant questions
- You need to ensure questions serve the story angle rather than simply covering the subject's biography

## What You Need To Provide
**Required:** The subject's name and role, a brief summary of their relevant background and public record, and the story angle or editorial purpose of the interview.
**Optional:** Format (on-camera, radio, print), available interview time, any topics that are off-limits, previous interviews or public statements you want to challenge or follow up on, specific claims you need the subject to respond to.

## How Claude Approaches This
1. Reviews the subject's provided background to identify what is already known, what is on the public record, and where gaps or contradictions exist — these gaps become the most valuable questions.
2. Maps the questions to the story angle, discarding anything that is interesting about the subject in general but irrelevant to this specific story.
3. Orders the questions to build rapport early, move into substantive territory in the middle section, and place the hardest or most confrontational questions toward the end — after trust is established and the recorder is running.
4. Flags any question that requires the subject to contradict a prior statement, so the journalist can have the original source to hand during the interview.

## Output Format
A numbered list of 10–20 questions, grouped into three sections: opening (2–3 questions to establish context and tone), core (the bulk, directly serving the story angle), and closing (1–2 questions inviting reflection or a final statement). Each question is followed by a one-line note explaining its purpose or what a good answer would reveal. Plain language throughout — questions should be speakable, not written.

## Quality Criteria
- [ ] Every question is specific to this subject — none could be asked of any expert in the field without modification
- [ ] At least one question directly addresses a gap, contradiction, or evasion in the subject's public record
- [ ] Questions are ordered so the interview builds in intensity without alienating the subject early
- [ ] No question contains two sub-questions — each is singular and answerable
- [ ] The story angle is visible throughout — a reader could identify the editorial purpose from the questions alone
- [ ] Questions are conversational in register, not formal or legalistic

## Example

### Input
Subject: Dr. Marina Okonkwo, Chief Medical Officer of a regional public hospital network. Background: She oversaw a restructuring of the network's emergency department two years ago, which was presented publicly as an efficiency improvement. Since then, average A&E waiting times have increased by 34% according to the network's own published data. She gave a conference presentation eight months ago in which she said the restructuring had "exceeded its targets." She has not previously spoken to the press about the waiting time figures. Story angle: Whether the restructuring prioritised cost savings over patient outcomes, and why the public data contradicts the CMO's public statements.

### Output

**Interview Questions: Dr. Marina Okonkwo**
*Story angle: A&E restructuring — cost savings vs. patient outcomes*

---

**Opening**

1. Can you describe what the emergency department looked like before the restructuring and what specific problems you were trying to solve?
   *Purpose: Establishes her framing and gives her room to speak freely before harder questions arrive.*

2. What were the original targets the restructuring was designed to meet, and who set them?
   *Purpose: Gets her targets on the record so they can be measured against outcomes.*

3. Who else was involved in the design of the restructuring — clinical staff, administrators, external consultants?
   *Purpose: Establishes accountability and whether frontline staff had input.*

---

**Core**

4. The network's published performance data shows average A&E waiting times have increased by 34% in the two years since the restructuring. How do you account for that?
   *Purpose: The central question — her response will reveal whether she accepts the data or contests it.*

5. At the Regional Health Leadership Conference last year, you said the restructuring had "exceeded its targets." Which targets were you referring to specifically?
   *Purpose: Directly tests the apparent contradiction between her public statement and the published data.*

6. Was reducing waiting times one of the restructuring's stated targets?
   *Purpose: If it was not, that is a significant editorial finding. If it was, her conference claim requires explanation.*

7. Were nursing or administrative staffing levels reduced as part of the restructuring?
   *Purpose: Probes the cost-saving dimension without leading.*

8. Have emergency department staff raised concerns with you about the impact on patients since the restructuring? If so, through what channels?
   *Purpose: Assesses whether internal warning signs existed and whether they reached her level.*

9. Is a 34% increase in waiting times, in your clinical judgement, an acceptable outcome?
   *Purpose: Forces a value judgement on the record.*

10. Has the board reviewed the waiting time figures? What was their response?
    *Purpose: Extends accountability upward.*

11. Has the restructuring model been reviewed or revised in light of the performance data?
    *Purpose: Establishes whether the organisation is responsive to evidence.*

12. If you were designing the restructuring today with the benefit of hindsight, what would you do differently?
    *Purpose: Opens a path for accountability without requiring a direct admission of failure.*

---

**Closing**

13. Is there anything about the restructuring and its outcomes that you believe the public should understand that has not been reported?
    *Purpose: Gives her the final word and sometimes produces the most candid answer of the interview.*

14. What would a successful emergency department look like at this network in five years?
    *Purpose: A forward-looking close that ends on constructive ground and may produce a quotable commitment.*

## Known Limitations
- The quality of the questions depends entirely on the quality of the background information provided. Thin research produces generic questions — this skill cannot substitute for pre-interview reading.
- Claude has no access to the subject's actual previous interviews or statements. You must supply the relevant quotes and claims; Claude will then build questions around them.
- For subjects who are likely to be legally cautious or media-trained to deflect, Claude can note where questions are likely to be evaded, but cannot predict or counter specific deflection strategies.

## Related Skills
- [interview-question-catalogue](interview-question-catalogue.md)
- [story-pitch-writer](story-pitch-writer.md)
- [fact-sheet-writer](fact-sheet-writer.md)

---
name: interview-question-generator
status: stable
category: tv-documentary
subcategory: scripting
version: 1.0
eval_score: 4.5
tags: [documentary, scripting, interview, questions, subject-research]
---

# Interview Question Generator

## What This Skill Does
Generates a targeted, structured interview question set for a specific documentary subject — organized by narrative function, from opening rapport-builders through to the most challenging or revealing questions.

## When To Use This Skill
- You are preparing for a documentary interview and want questions that go beyond what research alone can generate
- You have background on a subject but need a complete question sequence organized for on-camera flow
- You want questions that will produce usable, emotional, and specific answers rather than prepared statements
- You need questions structured so that the subject tells their story, rather than answers a questionnaire

## What You Need To Provide
**Required:** Who the subject is and their role in the documentary; the editorial angle (what the film is trying to understand through this interview); 3–5 key facts about the subject that are already known
**Optional:** What the subject is likely to be guarded about; any specific scenes or sequences the interview needs to support (e.g., "we need them to describe the moment they made the decision"); tone of the film; whether this is an observational film where the interview is the primary narrative device, or a documentary with separate verité footage

## How Claude Approaches This
1. Identifies the narrative work this particular interview needs to do in the film — what the subject alone can provide that no other element of the documentary can
2. Opens the question set with 3–4 rapport-builders: open biographical questions that let the subject find their voice before the camera, and that may yield unexpected context
3. Develops the substantive middle section: 10–15 questions that progress from factual to reflective to personally revealing, each building on the natural answer the previous question invites
4. Closes with the difficult or high-stakes questions — sequenced so they arrive after trust is established, not at the beginning
5. Adds production notes: which questions are most likely to yield usable sound bites, which may need a follow-up silence, and which can be safely cut if time is short
6. After the question set, provides a "Next Step" note: which three questions are the most critical if time runs short, what to prepare before filming (release forms, additional research), and whether scene-breakdown-writer should be run to plan the visual context around the interview

## Output Format
Numbered question list, organized into three labeled sections: Opening (3–4 questions), Substantive (10–15 questions), and High-Stakes (3–5 questions). Each section preceded by a one-paragraph director's note explaining the section's purpose. Production notes on 3–4 questions throughout. Total: 20–25 questions. 500–700 words. Output ends with a "Next Step" note: the three questions to prioritize if time runs short, what to have prepared before filming, and whether to run scene-breakdown-writer to plan the visual coverage around the interview.

## Quality Criteria
- [ ] No question can be answered with "yes" or "no" — all questions are open
- [ ] Questions are in plain conversational language — not the language of a formal interview or questionnaire
- [ ] At least two questions ask the subject to describe a specific moment or scene, not a general experience
- [ ] The sequence moves from safe to sensitive — high-stakes questions do not appear in the first section
- [ ] Production notes flag which questions are most critical for the film's editorial needs
- [ ] No question embeds an assumption that the subject must agree with to answer
- [ ] Output includes at least one concrete next action the user can take immediately (identify the three must-ask questions, prepare release forms, or run scene-breakdown-writer for visual planning)

## Example

### Input
Subject: The director of a regional hospital who made the decision to cancel elective surgeries during a capacity crisis, a decision that was publicly criticized
Role in documentary: Primary institutional subject — the person who made the decision the film is examining
Editorial angle: The film is exploring how healthcare administrators make decisions under resource constraints, and the personal cost of institutional authority
Known facts: Has worked in hospital administration for 22 years; was publicly criticized in local media; has never given a filmed interview about the specific decision; is known to be methodical and careful in how she speaks
Guarded about: The specific internal discussions that preceded the decision; whether she believes she made the right call

### Output

**OPENING — Establishing Voice and World** *(Goal: Let the subject settle into the interview and find their register before we approach the core material.)*

1. You've been in hospital administration for over two decades. What does this job actually involve day to day — not the version in a job description, but the version you live?
2. Walk me back to when you first came to this role. What did you think it would be, and what turned out to be different?
3. When you describe what you do to someone who has no idea how a hospital works — a dinner party conversation — how do you explain it?
4. What do you think most people misunderstand about how decisions get made inside a hospital?

*(Production note: Question 4 often opens the most candid responses. Subjects who have felt publicly misrepresented tend to answer this one at length. Let it run.)*

---

**SUBSTANTIVE — The Decision and its Context** *(Goal: Build toward the specific event through context, so the subject is narrating rather than defending.)*

5. Take me to that period — the weeks leading up to the decision. What was the operational situation inside the hospital?
6. Who else was in the room when this was being discussed? What roles did they have?
7. At what point did you understand that a decision was going to have to be made — not in the abstract, but that it was going to fall to you specifically?
8. Describe for me the information you had in front of you at the moment you made the call. What were you weighing?
9. Were there options you considered and set aside? What were they?
10. How long did the actual decision take — from the point where it was real to the point where you said: this is what we're doing?
11. Who did you tell first, and how did you explain it?
12. What was your expectation of how this would be received?
13. When the public criticism came — how did you first encounter it? Where were you?
14. Is there anything about the coverage at the time that you thought got it right?

*(Production note: Question 14 is a softener before the harder version. It invites them to acknowledge something true before being asked what was wrong.)*

15. What would you want someone who went through a cancelled surgery during that period to understand about how that decision was made?

---

**HIGH-STAKES — Reckoning and Reflection** *(Goal: Create space for the subject to express doubt, regret, or conviction. These are the most important questions in the interview. Do not rush them.)*

16. If you had more information — resources, time, an option you didn't have — would you have made a different call?
17. Do you think you made the right decision?

*(Production note: After question 17, stay silent. Do not paraphrase or rescue them from the question. The answer that comes after a pause is often the one the film needs.)*

18. What does that decision cost you, personally? Not professionally — personally.
19. Twenty-two years from now, when someone else sits in a role like yours and faces something like this — what do you want them to know?
20. Is there anything about this that you've never been asked, and that you want on record?

*(Production note: Question 20 frequently produces the most unexpected answer in the interview. Save it for the end. Give it space.)*

---

## Known Limitations
- Questions are generated from the information you provide; the more specific your subject brief, the more targeted the questions — a vague brief produces generic questions
- Documentary interview technique varies significantly by directorial style; some directors prefer minimal questions and maximum silence; adapt this question set to your approach rather than following it mechanically
- High-stakes questions about legal or regulatory matters should be reviewed with the documentary's legal advisor before filming; some lines of questioning may create liability exposure
- This skill does not account for whether a subject has legal counsel present or has been coached; adjust your sequencing in real time based on how guarded the subject appears

## Related Skills
- [scene-breakdown-writer](scene-breakdown-writer.md)
- [interview-question-builder](../../podcast/pre-production/interview-question-builder.md)
- [pitch-treatment-writer](../development/pitch-treatment-writer.md)

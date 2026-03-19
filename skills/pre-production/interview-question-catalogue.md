---
name: interview-question-catalogue
status: stable
category: pre-production
subcategory:
version: 1.0
eval_score: 4.8
tags: [interview, pre-production, journalism, podcast, documentary, questions]
---

# Interview Question Catalogue

## What This Skill Does
Generate a structured catalogue of interview questions for a specific subject and topic — organised by theme and sequenced from rapport-building openers to probing follow-ups.

## When To Use This Skill
- You have a scheduled interview and need a prepared question bank before sitting down with the subject
- You are building a question set for a documentary series where multiple crew members need to ask consistent questions across different contributors
- You are preparing for a podcast guest interview and want a clear structure that allows for natural conversation
- You are assigning the interview to a reporter who is less familiar with the topic and needs a ready-to-use question sheet
- You are conducting a follow-up interview and need questions targeted at what was left unaddressed in the first session

## What You Need To Provide
**Required:** Interview subject (their role, context, why they are being interviewed); the topic or angle the interview will address; the format (TV documentary, podcast, print/magazine, radio)

**Optional:** Intended interview length; known facts about the subject you want to build on; areas the subject has said they will not discuss; whether the tone is collaborative (subject is supportive) or adversarial (subject is being challenged or held to account); specific outcomes needed (a soundbite, a personal story, a confession, a technical explanation)

## How Claude Approaches This
1. Organises the question set into 3–5 thematic blocks based on the topic and interview angle — each block covers a distinct territory, moving from broad context to specific detail
2. Sequences questions within each block: starts with an open question that invites the subject to talk freely, followed by follow-up questions that probe or redirect
3. Marks any question that directly addresses the core angle of the interview as [MUST-ASK] — these are the questions that cannot be skipped regardless of time
4. Provides alternative phrasings in parentheses for questions that touch on sensitive areas, conflict, or potential defensiveness
5. Writes questions in spoken register — as you would actually say them, not in formal written English
6. Closes with 1–2 open-ended questions that give the subject a chance to say something unrehearsed (often where the most useful material appears)

## Output Format
Structured question catalogue with 3–5 thematic blocks, each labelled with its purpose. Each block contains 3–5 questions, opening with one broad open question followed by more specific follow-ups. Must-ask questions marked [MUST-ASK]. Alternative phrasings for sensitive questions shown in parentheses. Total question count: 15–25. Ends with 1–2 closing questions clearly labelled. Questions are numbered throughout for easy reference in the field.

## Quality Criteria
- [ ] All questions are open-ended — no yes/no questions unless they are deliberately tactical (e.g., a final confirmation of a specific fact)
- [ ] Thematic blocks follow a logical progression from scene-setting to probing
- [ ] At least one [MUST-ASK] question directly addresses the core angle of the interview
- [ ] Sensitive or challenging questions have alternative phrasings provided
- [ ] Closing question gives the subject space for an unrehearsed answer
- [ ] Questions sound natural when read aloud — they could be said in a room without sounding scripted

## Example

### Input
Subject: Head of a local food bank, being interviewed for a 15-minute radio feature.
Topic/angle: How the food bank is adapting its services and what is changing about who uses them during an economic downturn.
Format: Radio (audio only, will be edited).
Tone: Collaborative — the subject has agreed to the interview and is open.
Outcomes needed: A personal moment about what this period feels like on the ground; a clear description of how demand has changed; at least one concrete example.

### Output

---

**Interview Question Catalogue — Food Bank Director, Radio Feature**

*15-minute interview · Collaborative · Radio edit · 4 thematic blocks · 16 questions*

---

**Block 1 — Role and Context**
*Purpose: Establish who they are and how they see their work. Build rapport. Get natural, spoken self-description before moving to the main story.*

1. Tell me a bit about how you came to be running the food bank — what was the path that brought you here?
2. How long have you been in this role, and what does a typical week look like for you?
3. For listeners who have never used a food bank or seen one from the inside — how would you describe what actually happens here?

---

**Block 2 — The Change in Demand** [CORE BLOCK]
*Purpose: Document what has shifted — numbers, faces, patterns. This is the centre of the story.*

4. [MUST-ASK] How has demand changed over the past year or two? Can you describe what that looks like in real terms?
5. When you talk to your team about who is coming through the door — how has that picture changed? Who are you seeing now that you were not seeing two or three years ago?
6. [MUST-ASK] There is a phrase people use: the "new poor" — people who were not in financial difficulty before. Does that match what you are seeing?
   *(Alternative for softer approach: Are there people using the food bank now who you think would not have imagined needing it a few years ago?)*
7. What time of month do you notice the most pressure? Is there a rhythm to it?

---

**Block 3 — Adapting the Service**
*Purpose: How the organisation is responding — practical, operational, specific.*

8. [MUST-ASK] How has the food bank changed what it does in response to this shift? What have you had to rethink?
9. Are there things you are offering now that you were not a year ago — different services, different partnerships?
10. What are the hardest constraints you are working within? Is it money, food supply, volunteers, space — what is the binding limit?
11. [MUST-ASK] What would you do differently if you had more resource — what is the gap between what you are able to provide and what you think people actually need?
    *(Alternative if they seem reluctant to criticise: If a new funder came to you tomorrow and said they wanted to fill one gap — what would you point them towards?)*

---

**Block 4 — The Human Cost**
*Purpose: Anchor the story in the lived experience of what the director sees. Personal, emotional. Speak slowly here — give them time.*

12. You see a lot in this role. Is there a moment in the past year that has stayed with you — something that captured what this period feels like?
    *(Alternative: Is there a conversation or a face that has been hard to shake?)*
13. Do you think the people using the food bank feel comfortable coming here, or is there still a stigma that gets in the way?
14. What do you wish more people understood about what it is actually like to need a food bank?

---

**Closing Questions**

15. Is there something you want to say about this that I have not asked you?
16. [MUST-ASK] When you think about where things are heading — what does the next twelve months look like to you?

---

*Must-ask questions: 5 (Q4, Q6, Q8, Q11, Q16)*
*Sensitive question alternative phrasings: Q6, Q11, Q12*

---

## Known Limitations
- Questions are built around the angle and context you provide — they cannot account for what the subject is willing or unwilling to discuss once in the room; interview dynamics are unpredictable and the best follow-up questions will come from listening, not from a prepared list
- This is a starting framework, not a rigid script — experienced interviewers will depart from it freely; novice interviewers should treat it as a map, not a transcript
- The skill does not have access to background research on the specific subject; if you have conducted prior research or have specific quotes or claims you want to address, include them in your brief for more targeted questions

## Related Skills
- [interview-question-generator](../tv-documentary/scripting/interview-question-generator.md)
- [guest-research-brief](../podcast/pre-production/guest-research-brief.md)
- [biography-researcher](../research/people-contacts/biography-researcher.md)
- [tailored-interview-questions](tailored-interview-questions.md)

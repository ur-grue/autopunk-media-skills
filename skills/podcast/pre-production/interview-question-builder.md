---
name: interview-question-builder
status: stable
category: podcast
subcategory: pre-production
version: 1.0
eval_score: 4.5
tags: [podcast, pre-production, interview, questions, preparation]
---

# Interview Question Builder

## What This Skill Does
Builds a complete, staged interview question set for a podcast guest — organized from opening warm-up through core subject matter to closing reflection — with embedded follow-up prompts for each key question.

## When To Use This Skill
- You have a confirmed podcast guest and need a full question set before the recording
- Your guest is an expert in a field you know less well, and you want preparation that allows you to have a genuine conversation rather than reading from a list
- You want to ensure the interview covers all necessary territory without feeling like a questionnaire
- You are interviewing someone with a sensitive personal story and need questions that build trust before going deep

## What You Need To Provide
**Required:**
- Guest name and their relevant background (one paragraph is enough — what they do, what they're known for, why they're on the show)
- The episode's core subject or focus (what the conversation should primarily be about)
- Your show's tone and audience (e.g., "curious general audience, conversational tone" or "professionals in the field, technical questions welcome")

**Optional:**
- Any specific stories, moments, or claims you want to make sure you reach in the conversation
- Topics to avoid (personal subjects, ongoing legal matters, past controversies the guest has asked not to address)
- Approximate episode length (helps calibrate how many questions to include)
- Any prior work, writing, or interviews by the guest that Claude should reference

## How Claude Approaches This
1. Reviews the guest's background and the episode focus to identify the three or four most interesting tensions, turning points, or ideas in the guest's work — these become the anchors for the core question section
2. Builds a staged arc: opening questions that are easy and biographical (let the guest warm up), core questions that go to the heart of the subject (the ones that will make the episode worth listening to), and closing questions that pull back to perspective and reflection
3. For each core question, adds two or three follow-up prompts in brackets — not scripted follow-ups, but reminders of where to dig if the guest's answer opens a door
4. Flags any question that might be sensitive or that the guest may deflect, with a brief note on why and a suggested alternative framing
5. Adds a "questions to have ready but not necessarily use" section at the end — overflow questions that can fill dead air or redirect a conversation that has stalled
6. Closes with a "Next Step" note: which opening question to actually use first (and why), and whether guest-research-brief should be run to deepen background preparation before the recording

## Output Format
- Three sections: Opening (3–5 questions) · Core (6–10 questions with follow-up prompts) · Closing (3–4 questions)
- Each core question formatted as: Q: [question text] / *If they say X, follow up with: [prompt]* / *If they go deep, push on: [prompt]*
- Sensitive questions flagged with a [NOTE] tag explaining the sensitivity
- Overflow section at end: 4–6 unlabeled questions with no follow-up prompts
- Tone of questions matches stated show tone
- No question should be answerable with yes or no
- Output ends with a "Next Step" note: which opening question to lead with and why, and whether to run guest-research-brief for deeper background preparation

## Quality Criteria
- [ ] No yes/no questions anywhere in the set
- [ ] The opening questions are genuinely easy — biographical, not probing
- [ ] At least one core question is genuinely unexpected — not the obvious question the guest has answered a hundred times
- [ ] Every follow-up prompt is specific to the main question, not generic ("tell me more" is not a follow-up prompt)
- [ ] Any sensitive topic is flagged, not avoided or left as a surprise
- [ ] Output includes at least one concrete next action the user can take immediately (choose the opening question, do additional guest research, or run guest-research-brief)

## Example

### Input
- **Guest:** Dr. Amara Osei-Bonsu — a behavioral economist who studies why people consistently underestimate how long tasks take (the "planning fallacy"). She has a new book out on the subject and has done several high-profile TED-style talks. She previously worked as a public policy advisor before moving to academia.
- **Episode focus:** The planning fallacy — why we're bad at predicting our own time, what it costs us, and whether it's fixable.
- **Show tone:** Smart general audience, curious and conversational, no jargon
- **Episode length:** ~45 minutes
- **Topics to avoid:** Her departure from government work (she has asked not to discuss this)

### Output

**Interview Questions — Dr. Amara Osei-Bonsu**
*Episode: The Planning Fallacy · ~45 min · Smart general audience*
*Note: Guest has asked not to discuss her departure from government work. Do not approach this topic.*

---

**OPENING (warm-up — first 5–8 minutes)**

1. Before we get into the research — what is your own relationship with time and deadlines? Are you someone who finishes things early, or are you a subject in your own studies?

2. You started in policy before moving to academia. What was the moment you decided the work was more interesting than the institution?
*[NOTE: Keep this general — do not ask specifically about her departure from government. If she goes toward it, redirect to the research.]*

3. When did you first notice that the planning fallacy wasn't just a quirky cognitive bias — that it was actually doing serious damage to people's lives?

---

**CORE (main conversation — 25–30 minutes)**

4. Let's define the thing clearly for people who haven't heard the term before. What is the planning fallacy, and what makes it different from just being bad at organization?
*If they explain it technically: Ask for a specific personal example — "Can you give me one moment from your own life where you caught yourself doing this?"*
*If they go into the research immediately: Slow down — "Before we get to the data, what does it feel like from the inside?"*

5. Your research shows that this isn't just an individual failure — that experts with decades of experience are just as bad at predicting timelines as beginners. Why doesn't experience fix it?
*If they say "because we're optimistic by nature": Push on — "But experienced builders and engineers are famously pessimistic about everything else. Why not time?"*
*If they bring up specific studies: Ask which one they find most uncomfortable to think about.*

6. There's an interesting asymmetry in your work — we're bad at underestimating our own project timelines, but we're actually pretty good at predicting how long it will take someone else to do the same task. What does that tell us about how self-perception works?
*If they confirm this: "So theoretically, we could fix this by imagining we're watching someone else do the task. Does that actually work in practice?"*

7. You talk about "outside view" thinking as a partial solution. Can you explain what that means, and walk me through what it looks like when someone actually does it well?
*Follow up with: "Who taught you to do this? Was it deliberate?"*

8. I want to push on the word 'fixable' — because your book is cautiously optimistic, but some of what you describe sounds deeply structural. Is the planning fallacy something we can train ourselves out of, or is it something we can only manage?
*If they say manage: "What's the minimum viable version of management that actually works for a regular person — not a researcher with a structured intervention?"*
*If they say trainable: "What's the evidence that training actually sticks after the study ends?"*

9. You've worked with organizations as well as individuals. When a whole institution has a systematic planning problem — a government agency, a construction company — how does the fix change?
*Push on: "What's the most resistant organization you've encountered and what made them resistant?"*
*[NOTE: This is where she may naturally bring up her policy work. It's fine to explore organizational examples generally — just don't ask specifically about her own government experience.]*

10. Is there any context in which the planning fallacy actually serves us well? A situation where optimistic time-blindness is the right strategy?

---

**CLOSING (last 8–10 minutes)**

11. If you had to name the single most useful thing an ordinary person could do tomorrow morning to get less bad at this — what would it be?

12. What's the question you wish interviewers asked you about this work that they never do?

13. What are you working on next — and how long do you think it will take?
*[This is a deliberate callback to the opening question — usually gets a genuine laugh and a self-aware answer.]*

---

**OVERFLOW (have ready; use if conversation stalls or opens space)**

- What's the difference between a deadline that motivates and a deadline that just produces bad work?
- You've described this as a "nearly universal" bias — are there cultures or contexts where it's significantly less pronounced?
- Has writing a book about predicting time made you better or worse at predicting your own writing time?
- What does your research say about how we should communicate deadlines to other people — partners, colleagues, clients?

## Known Limitations
- Claude does not know things about the guest that are not in the input — if there are recent controversies, relevant book arguments, or live debates in the guest's field, the user must brief Claude on them for the questions to be sharply targeted
- Questions are crafted for a conversational interview format; they may need adjustment for a more structured or journalistic format (e.g., adversarial interview, roundtable, debate)
- Follow-up prompts are conditional scenarios — they are not a script, and the best follow-up in the actual recording may be something entirely different; the prompts are preparation, not prescription
- This skill does not replace the host doing their own research into the guest's work; the questions will be better if the host reads or watches at least one piece of the guest's prior work before recording

## Related Skills
- [guest-research-brief](../pre-production/guest-research-brief.md)
- [intro-outro-writer](../scripting/intro-outro-writer.md)
- [episode-concept-generator](../pre-production/episode-concept-generator.md)

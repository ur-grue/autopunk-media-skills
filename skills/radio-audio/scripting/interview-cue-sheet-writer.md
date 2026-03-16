---
name: interview-cue-sheet-writer
status: stable
category: radio-audio
subcategory: scripting
version: 1.0
eval_score: 4.5
tags: [radio, scripting, interview, cue-sheet, presenter, live]
---

# Interview Cue Sheet Writer

## What This Skill Does
Produces a formatted radio interview cue sheet with scripted intro, key questions, suggested follow-ups, factual reference points, and a clean out-cue for the presenter.

## When To Use This Skill
- A presenter needs a structured document to run a live or pre-recorded studio interview
- You have a guest booked and need to brief the presenter on background, angles, and likely defensive answers
- An interview needs to serve a specific editorial purpose (news-breaking, human interest, accountability, expert explanation) and the questions need to be shaped accordingly
- A producer is preparing a presenter who has little prior knowledge of the subject

## What You Need To Provide
**Required:** Guest name and role, the topic or news hook for the interview, and the interview's editorial purpose (e.g. accountability, explanation, human interest, debate).
**Optional:** Programme name and tone, interview duration, any sensitive areas to handle carefully, background notes or pre-interview research, specific claims to challenge, and whether the interview is live or pre-recorded.

## How Claude Approaches This
1. Establishes the interview's editorial purpose and uses it to sequence the questions — opening questions build rapport and establish context; mid-interview questions go to the core of the story; the final section handles accountability, challenge, or forward-looking angles
2. Writes 6–10 primary questions in plain spoken English, each focused on a single point; adds 2–3 follow-up prompts per key question to handle likely deflections or non-answers
3. Provides a scripted intro (20–30 seconds) that the presenter can read verbatim, a factual reference card (3–5 bullet points) for use mid-interview, and a clean out-cue thanking the guest and returning to the programme

## Output Format
A single A4-equivalent document divided into four sections: SCRIPTED INTRO, FACTUAL REFERENCE CARD, QUESTIONS, and OUT-CUE. Questions are numbered and bold; follow-ups are indented in plain text below each. Factual reference card uses bullet points. Document includes a header showing guest name, role, interview duration, and programme name. Total length: 400–600 words. Tone of the questions matches the stated editorial purpose — probing but fair for accountability, curious and warm for human interest.

## Quality Criteria
- [ ] Opening question is accessible and open — it does not presuppose facts or put the guest immediately on the defensive
- [ ] At least one question directly addresses the news hook or the reason the guest was booked
- [ ] Follow-up prompts anticipate the most likely deflection or non-answer and provide a redirect
- [ ] Factual reference card contains only verified facts provided in the input — no invented figures or statistics
- [ ] Out-cue is a natural spoken close that does not sound abrupt or formulaic
- [ ] Questions are in spoken English — no legalese, no compound questions, no double negatives

## Example

### Input
Programme: "Drive Time" — afternoon news-feature show, accessible and engaged tone
Guest: Dr. Amara Osei, consultant in emergency medicine
Topic: Record A&E waiting times published today — national figures show one in four patients waiting over 8 hours
Editorial purpose: Explanation and mild accountability — what is causing this, what could fix it, who is responsible
Interview duration: 6 minutes
Sensitive area: Do not imply the NHS is failing; frame around systemic pressure, not individual failure

### Output

---
DRIVE TIME — INTERVIEW CUE SHEET
Guest: Dr. Amara Osei, Consultant in Emergency Medicine
Topic: Record A&E Waiting Times
Duration: 6 minutes (live)
Date: [insert broadcast date]

---

SCRIPTED INTRO (~25 secs)

New figures out today show that one in four patients in England waited more than eight hours in A&E last month — the highest proportion on record. Those are the kinds of delays that can mean the difference between a good outcome and a very difficult one. Joining me now is Dr. Amara Osei, a consultant in emergency medicine. Dr. Osei — welcome to the programme.

---

FACTUAL REFERENCE CARD
- National A&E figures published today: 25% of patients waited more than 8 hours (record high)
- Target: 95% of patients to be seen within 4 hours (this target has not been met nationally since 2015)
- Ambulance handover delays are a key contributing factor — average handover time now 45 minutes
- "Corridor care" — treating patients in corridors due to lack of beds — was cited in today's report
- Discharge delays (patients medically fit to leave but with no social care package in place) account for approximately 14% of occupied beds

---

QUESTIONS

**1. When you see those figures — one in four patients waiting more than eight hours — what does that mean in practice for the people in your department?**
- Follow-up: Can you give us a sense of what eight hours in an A&E waiting room actually looks like for a patient?
- Follow-up: Is this a situation that has crept up on the system, or did it feel like it arrived suddenly?

**2. The report highlights ambulance handover delays as a significant factor. For listeners who don't know what that means — can you explain what happens at a handover, and why it takes so long?**
- Follow-up: So the ambulance crew cannot leave until they hand the patient to a nurse — and if there's no nurse free, the ambulance just waits outside?

**3. There's a concept in today's report called "corridor care." Is that as stark as it sounds?**
- Follow-up: How do you, as a clinician, manage that situation — both for the patient and for your own team?

**4. A lot of people listening will be thinking: where do you start fixing this? What is the single pressure point that, if it were resolved, would make the biggest difference?**
- Follow-up: The discharge delay issue — that's about social care, not NHS care. Is that a problem emergency medicine can solve from within?
- Follow-up: If you were briefing the Health Secretary for five minutes tomorrow, what would you say?

**5. For someone listening who may need to use A&E — perhaps tonight, perhaps next week — what is your honest advice?**
- Follow-up: Are there situations where you'd say: don't come to A&E, go somewhere else instead?

---

OUT-CUE

Dr. Amara Osei, consultant in emergency medicine — thank you very much for joining us on Drive Time this afternoon. We'll have more on today's NHS figures after the traffic update, coming up.

---

## Known Limitations
- Follow-up questions are based on typical interview patterns and common deflections; a guest with an unusual or highly technical response may not be well-covered by the suggested redirects
- Cannot anticipate breaking news that emerges after the cue sheet is generated — presenters should always check for late developments before going live
- The factual reference card only contains facts explicitly provided in the input; the skill does not conduct independent research or verify figures
- For very short interviews (under 3 minutes), the full question set will need pruning — the skill will not automatically reduce questions to fit a 2-minute slot

## Related Skills
- [two-way-brief-writer](../news-packages/two-way-brief-writer.md)
- [presenter-link-writer](./presenter-link-writer.md)
- [package-script-writer](../news-packages/package-script-writer.md)

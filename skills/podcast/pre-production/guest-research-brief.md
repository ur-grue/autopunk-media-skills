---
name: guest-research-brief
status: stable
category: podcast
subcategory: pre-production
version: 1.0
eval_score: 4.5
tags: [podcast, pre-production, research, guests, preparation]
---

# Guest Research Brief

## What This Skill Does
Produces a structured, host-ready research brief on an upcoming podcast guest — covering their background, key work, public positions, conversation history, and suggested angles — so the host can prepare a focused interview.

## When To Use This Skill
- You have a guest confirmed and need to prepare for the interview within a limited window
- Your research process is inconsistent and you want a repeatable structure for every guest
- You are handing off guest research to a producer or researcher and need a clear brief format
- You want to identify the most interesting or under-explored aspect of a guest's work before you talk to them

## What You Need To Provide
**Required:** Guest's name; their professional role or area of expertise; the show's topic focus and what prompted the booking
**Optional:** Links or descriptions of their recent work (books, articles, talks, other podcast appearances); what the audience already knows about them; specific angles or topics you want to cover; topics to avoid (at the guest's request or editorial choice); episode format and approximate length

## How Claude Approaches This
1. Summarizes the guest's background and professional context — focused on what is most relevant to your show's audience, not a full biography
2. Identifies their most significant recent work and maps its core arguments or findings, so the host can engage substantively without having read every word
3. Surfaces the most interesting angle or tension in the guest's work — the point where their position is most contested, most counterintuitive, or most relevant to the show's audience
4. Notes any previous podcast appearances or interviews on similar topics, and what ground has already been well-covered — so the host can go beyond the standard version of the conversation
5. Suggests 5–7 specific questions or areas that would produce genuinely new conversation, based on the research

## Output Format
Structured brief with five sections: Guest Overview (3–5 sentences), Key Work Summary (100–150 words), Most Interesting Angle (1 paragraph), Ground Already Covered (list of 3–5 points from other appearances), and Suggested Questions (5–7 specific questions). Total length: 400–600 words. Factual, neutral register — written for a host, not an audience.

## Quality Criteria
- [ ] Guest Overview is accurate to what was provided — no fabricated biographical details
- [ ] Key Work Summary explains the guest's ideas, not just their title
- [ ] Most Interesting Angle identifies a specific tension or question, not a generic description of the guest's importance
- [ ] Ground Already Covered helps the host differentiate their conversation — it is not a complaint about the guest being over-exposed
- [ ] Suggested questions are open-ended and go beyond what has been covered in prior appearances
- [ ] Brief is usable by a host who has had no prior contact with the guest or their work

## Example

### Input
Guest: Dr. Renata Solís, behavioral economist, author of a recent book on how poverty changes decision-making at a neurological level
Show: Interview podcast on economics and social policy, 50 minutes
Booking reason: Her new book has been getting attention; one of the show's core themes is how policy often misunderstands human behavior
No previous appearances noted by the booking team
Topic to avoid: personal backstory (guest has requested this)

### Output

---

**Guest Overview**

Dr. Renata Solís is a behavioral economist whose research focuses on the cognitive and neurological effects of financial scarcity. Her recent book argues that poverty does not simply limit options — it degrades the cognitive bandwidth available for decision-making in ways that standard economic models do not account for. Her work has been cited in policy debates about means-tested benefit programs and the design of financial assistance systems.

---

**Key Work Summary**

Her book's central argument: when people are managing scarcity — not just poverty in the abstract, but the active experience of not having enough money to cover immediate needs — the cognitive load of that management occupies mental resources that would otherwise be available for longer-term planning and judgment. This is not a character flaw or a cultural failing; it is a measurable cognitive effect that reverses when scarcity is removed. The policy implication she draws is that programs designed to add conditions, monitoring, or complexity to financial assistance may be compounding the very cognitive impairment they are nominally trying to address.

---

**Most Interesting Angle**

The most productive tension in her work is between her research findings and the political framing of "deserving" versus "undeserving" recipients of public assistance. Her data suggests that means-tested programs — which are politically designed to ensure only the "right" people receive help — may be structurally counterproductive even by their own criteria. This is a finding with significant political implications that she navigates carefully in public discussion. Pressing here, specifically asking how she thinks about the gap between what her research implies and what is politically viable, is likely to produce the most substantive conversation.

---

**Ground Already Covered**

Based on available written interviews and reviews of the book:
- The core cognitive bandwidth argument and how it was tested in research
- Comparisons with standard economic rational-actor models
- General policy recommendations (unconditional cash transfers)
- The research methodology and its limitations
- Her position on universal basic income (she is cautious and conditional on this)

---

**Suggested Questions**

1. Your research shows the cognitive effects of scarcity reverse when scarcity is removed — but most policy interventions don't remove scarcity, they manage it. What would it actually mean to design policy around that finding?
2. Where is your research most commonly misunderstood or misapplied by people who cite it?
3. The political conversation about poverty tends to focus on behavior and choices. Your work argues those are downstream effects, not causes. Have you found ways to make that argument land in policy rooms?
4. What does the research say about short-term versus persistent scarcity — does the cognitive effect accumulate over time?
5. Where do you think the limits of your model are? What does it not explain well?
6. You've been careful about your position on unconditional cash transfers. What would it take to move you from cautious to convinced?
7. What would a policy environment that takes your research seriously actually look like — concretely, not aspirationally?

---

## Known Limitations
- This skill generates a brief based on information you provide; it does not conduct live web research or access current databases — if the guest has recent work you want included, provide it in your input
- Suggested questions are based on the described work and angles; they may overlap with questions the guest has answered recently in ways not reflected in your input — review before the interview
- For guests who are in active legal disputes, political campaigns, or sensitive situations, consult with your legal or editorial team before finalizing the conversation scope

## Related Skills
- [interview-question-builder](interview-question-builder.md)
- [episode-concept-generator](episode-concept-generator.md)
- [show-notes-generator](../post-production/show-notes-generator.md)

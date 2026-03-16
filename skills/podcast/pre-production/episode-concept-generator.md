---
name: episode-concept-generator
status: stable
category: podcast
subcategory: pre-production
version: 1.0
eval_score: 4.4
tags: [podcast, pre-production, concepts, episode-planning, ideation]
---

# Episode Concept Generator

## What This Skill Does
Generates 6–8 fully developed episode concepts aligned to a podcast's format, theme, and audience — each with a title, premise, guest or source approach, and core listener question.

## When To Use This Skill
- You are planning a new content batch and need episode ideas that fit your show's established format
- You have run out of obvious angles on your core topic and need fresh conceptual territory
- You are launching a new podcast and need to populate your first content calendar
- You want to see which unexplored corners of your subject area could generate strong episodes

## What You Need To Provide
**Required:** Podcast name and topic focus; target audience; episode format (interview, solo, narrative, roundtable, hybrid); approximate episode length
**Optional:** 3–5 recent episodes you have already done (so Claude can avoid repeating them); any themes or angles you want to explore but haven't found the right angle for; whether you want seasonal/thematic concepts or standalone episodes; guest-based or topic-based preference

## How Claude Approaches This
1. Maps the topic space of the podcast — the full range of subjects, perspectives, and audience questions that are relevant but not necessarily obvious
2. Identifies under-explored angles: the contrarian take, the practitioner perspective, the historical origin story, the failure case, the audience question that goes unasked in most episodes on this topic
3. Generates concepts across different episode types: the debate episode, the deep-dive explainer, the personal story, the expert interview, the myth-busting episode, and the "what no one talks about" episode
4. For each concept, specifies the core listener question (what the audience will have answered by the end), the ideal guest or source profile, and one hook sentence for a show notes description
5. Closes with a "Next Step" recommendation: which concept to book first based on guest accessibility, and whether to run guest-research-brief or interview-question-builder as the immediate next skill

## Output Format
6–8 numbered episode concepts. Each concept includes: Episode Title, Core Listener Question, Premise (2–3 sentences), Guest/Source Approach, and Hook Sentence. Total length: 500–700 words. Concepts are ordered from most immediately executable to most ambitious. Output ends with a "Next Step" note: which concept to pursue first (based on booking ease) and which skill to run next — guest-research-brief to prepare for outreach or interview-question-builder once a guest confirms.

## Quality Criteria
- [ ] Each concept has a distinct angle — no two concepts answer the same core listener question
- [ ] Every concept specifies a guest type or source approach, not just "an expert"
- [ ] At least two concepts are immediately executable without specialist access
- [ ] At least one concept takes a counterintuitive or under-explored angle on the show's topic
- [ ] Hook sentences are specific enough to work as a draft show-notes opening line
- [ ] No concept is simply a topic — each has a specific angle or question driving it
- [ ] Output includes at least one concrete next action the user can take immediately (which concept to pursue first and which skill to run next: guest-research-brief or interview-question-builder)

## Example

### Input
Podcast: A podcast about personal finance for people in their 30s navigating major life transitions (buying a home, having children, career changes)
Format: Interview, 45–55 minutes
Audience: Adults 30–42, financially aware but not financially expert, skeptical of generic advice
Recent episodes: mortgage process basics, emergency fund size, negotiating salary, freelance tax, whether to pay off student loans early
Length: ~50 minutes

### Output

**1. The Couple Who Disagreed About Money (And How They Sorted It)**
*Core Listener Question: How do you navigate fundamentally different financial values in a long-term relationship?*
*Premise:* Most money conversations between partners fail not because of math but because of values. This episode goes inside a couple's real disagreement — one spender, one saver — and how they built a system that worked for both.
*Guest:* A couple willing to speak honestly + a financial therapist as context
*Hook:* "They argued about every purchase over $200. This is what changed."

---

**2. The House They Bought (And Wish They Hadn't)**
*Core Listener Question: What do regretful homebuyers actually wish they had known?*
*Premise:* Homebuying advice focuses on how to buy. This episode talks to people who bought — and regret it — to map the specific decisions they'd reverse. Counterpoint to the standard aspirational homeownership narrative.
*Guest:* 2–3 homeowners who made different types of regret-worthy decisions (wrong location, over-budget, wrong timing)
*Hook:* "Nobody talks about the buyers who wish they'd waited."

---

**3. What Parental Leave Actually Costs**
*Core Listener Question: How do you plan financially for parental leave when the income drop is real and the advice is vague?*
*Premise:* The financial reality of parental leave — the income gap, the identity cost of returning early for financial reasons, the planning that actually helps — told by someone who has been through it recently.
*Guest:* A financial planner who specializes in family transitions + a parent who navigated a specific difficult scenario
*Hook:* "The leave is 12 weeks. The financial hangover can last a year."

---

**4. The Financial Advisor Who Tells People Not to Use Financial Advisors**
*Core Listener Question: When do you actually need professional financial advice, and when is it a waste of money?*
*Premise:* A contrarian episode with a fee-only fiduciary advisor who is candid about when their profession overcharges and underwhelms — and when it genuinely helps.
*Guest:* A fee-only financial advisor willing to speak critically about the industry's incentive structures
*Hook:* "He charges $300 an hour and will tell you when you don't need him."

---

**5. The Inheritance Nobody Was Ready For**
*Core Listener Question: How do you handle an unexpected inheritance without making decisions you'll regret?*
*Premise:* Inheriting money in your 30s — through a parent's death, a grandparent's estate — is one of the most emotionally and financially complicated events in this age group. This episode explores what to do in the first year, when nothing feels right.
*Guest:* A financial planner who works with inheritance situations + someone who inherited unexpectedly in their 30s
*Hook:* "The money arrived at the worst possible moment."

---

**6. When Career Change Means Financial Reset**
*Core Listener Question: What does the financial math of a career change actually look like?*
*Premise:* Career change episodes focus on the decision. This episode runs the numbers: what a major downward salary transition costs in the short and long term, and what makes it survivable.
*Guest:* A financial planner who specializes in career transition clients + someone who made a significant voluntary pay cut
*Hook:* "She took a $40,000 pay cut. Here's the spreadsheet she made before she did it."

---

**7. The Emergency That Wasn't Covered (And What They Did Next)**
*Core Listener Question: What happens financially when something goes seriously wrong and your plan doesn't cover it?*
*Premise:* Most financial planning advice is preventative. This episode talks to someone who had the thing happen anyway — the job loss, the medical event, the home disaster — and how they navigated the aftermath.
*Guest:* 1–2 people with different types of financial emergency experience
*Hook:* "The plan didn't work. This is what happened next."

---

## Known Limitations
- Concepts are generated without knowledge of what has been covered on similar podcasts; run a quick search before committing to an angle to verify you are not duplicating a widely-covered episode from a competitor show
- Guest availability is outside the scope of this skill — "a couple willing to speak honestly about their financial disagreements" may be harder to find than the concept suggests; assess booking feasibility before committing
- For narrative or documentary-style podcast formats, this skill's interview-based structure may need significant adaptation

## Related Skills
- [guest-research-brief](guest-research-brief.md)
- [interview-question-builder](interview-question-builder.md)
- [show-notes-generator](../post-production/show-notes-generator.md)

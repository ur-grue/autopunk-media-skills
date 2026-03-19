---
name: competitor-framing-analyzer
status: beta
category: research
subcategory: media-competitive
version: 1.0
eval_score: null
tags: [competitive-research, editorial-strategy, framing-analysis]
---

# Competitor Framing Analyzer

## What This Skill Does
Identifies the editorial angle, narrative frame, and implicit assumptions a competitor has used on a story, so you can make a deliberate choice about how to frame your own coverage differently or more effectively.

## When To Use This Skill
- When you're about to cover a story that competitors have already published on and you need to understand what frame they used before choosing your own angle
- When your editor senses a competitor's piece "missed the point" and wants that feeling expressed as a precise editorial critique
- When preparing a follow-up story and you need to understand what the original coverage assumed, excluded, or took for granted
- When reviewing a competitor's series or ongoing coverage to identify the consistent editorial worldview behind it

## What You Need To Provide
**Required:** The full text of one or more competitor pieces (paste directly, or provide a detailed summary if the text is unavailable). The story subject or topic.
**Optional:** The outlet's known editorial stance or typical audience, if you're aware of it — this gives Claude context for reading choices that may reflect house style rather than story-specific decisions. Your own outlet's angle or preliminary thinking, so Claude can flag where you're heading into the same frame or successfully away from it.

## How Claude Approaches This
1. Reads the piece for its structural and rhetorical choices: what is foregrounded in the lede, which sources are selected and which are absent, what is treated as established fact versus open question, and what resolution or conclusion the piece moves toward.
2. Names the frame explicitly — the underlying logic or narrative template the piece uses (e.g. "individual victim vs. systemic failure," "innovation vs. tradition," "accountability vs. complexity") — and identifies where in the piece that frame is applied most visibly.
3. Maps what the frame includes and excludes: which voices, questions, and perspectives become visible within this frame and which become invisible, and what a reader would need to believe before finding the piece convincing.

## Output Format
A structured analysis of 350–500 words in three sections:
- **The frame** (1 short paragraph): a plain-language name and description of the primary editorial frame, written as a single clear claim.
- **How the frame operates in the piece** (4–6 bullets): specific moments in the text where the frame is applied — lede choice, source selection, language choices, what is stated as fact, what is left implicit.
- **What the frame excludes** (3–5 bullets): perspectives, questions, or evidence the frame makes difficult to include, with a note on what opening those would do to the story.

Tone is precise and non-judgmental — the goal is understanding, not critique for its own sake. Avoid terms like "biased" or "agenda" unless you have clear textual evidence.

## Quality Criteria
- [ ] The named frame is specific enough to distinguish this piece from others on the same topic — "human interest frame" is too generic; "individual resilience against institutional indifference" is specific
- [ ] Every bullet in "How the frame operates" cites a specific textual choice (a line, a source type, a structural decision), not a general impression
- [ ] The "What the frame excludes" section identifies at least one concrete story element the competitor piece could not easily have included without breaking its own frame
- [ ] The analysis does not impute intent — it describes editorial choices and their effects, not why the journalist made them
- [ ] Output stays within the 350–500 word range

## Example

### Input
**Story subject:** A report on rising rates of burnout among emergency medical workers.

**Competitor piece summary:** A 1,400-word feature structured around a single paramedic who left the profession after ten years. The piece follows her timeline: a memorable early call, years of mounting pressure, a breaking-point incident, and her current life running a small business. Expert commentary comes from a psychologist who specialises in trauma and a former colleague who has also left the profession. The piece ends with a call for better mental health support services. Statistics on workforce attrition appear midway through.

**Outlet known stance:** General-interest digital news site with a strong service-journalism orientation, typical audience is professionals in their 30s and 40s.

### Output

**The Frame**

The piece uses an individual rescue-and-escape frame: a competent, sympathetic individual is damaged by a system she cannot change, makes the rational decision to leave, and recovers her wellbeing through personal action. The system itself is named as a problem but remains largely offscreen — the story belongs to the person who got out, not to those still inside or to the structural conditions that drove her out.

**How the Frame Operates in the Piece**

- The lede anchors in a specific early memory — a call that went well — establishing the subject as skilled and dedicated before the institution begins to fail her. This pre-positions the reader to see the profession as the agent of damage, not the individual.
- Both expert sources are drawn from the psychology and peer-support world. No hospital administrator, union representative, or health department official is quoted. The frame treats institutional response as absent rather than contested.
- Statistics on attrition appear mid-piece, after emotional investment in the protagonist is established. They function as confirmation of her experience, not as the starting point for an investigation.
- Language around the subject's exit is consistently positive: "she rebuilt," "she found balance." Language around remaining workers is absent — the piece does not return to colleagues who stayed.
- The call to action ("better mental health services") is system-adjacent but still individual-solutions-oriented. It does not ask who is responsible for creating the conditions or who has failed to act.

**What the Frame Excludes**

- Workers who are still inside the profession and managing — their coping strategies, their reasoning, and what would need to change for them to stay, are entirely absent. Including them would shift the story from "how to survive this system" toward "how to change it."
- Institutional actors — management decisions, rostering practices, union negotiations — are treated as backdrop. Any reporting that gave those actors a voice would require the piece to engage with contested claims rather than a single, sympathetic account.
- The economic dimension (wages, pension structures, cost of retraining for workers who want to leave but cannot afford to) would complicate the recovery narrative — the subject's small business pivot implies a financial floor that not all workers share.
- A structural or policy frame — asking what workforce attrition costs health systems and who bears accountability for it — would turn this into a different kind of story: less personal, more adversarial, and harder to resolve in 1,400 words.

## Known Limitations
- Framing analysis depends on the text you provide. If you supply a summary rather than the full piece, Claude may miss important textual details — source quotes, structural choices, language at the sentence level — that are essential to an accurate reading.
- This skill reads one piece at a time with depth. For identifying framing patterns across a large volume of coverage, a series of separate analyses will produce more reliable results than asking Claude to generalise from a bulk summary.
- Some framing choices reflect house style, audience expectations, or word-count constraints rather than deliberate editorial decisions. Claude will describe what is on the page; distinguishing systemic from incidental choices requires your own knowledge of the outlet.
- This analysis is editorial, not academic. It uses the concept of framing in a practical journalism sense, not in the technical sense of framing theory as used in media studies research.

## Related Skills
- [competitor-coverage-brief](./competitor-coverage-brief.md)
- [coverage-gap-identifier](./coverage-gap-identifier.md)
- [story-angle-finder](../../magazine-journalism/ideation/story-angle-finder.md)

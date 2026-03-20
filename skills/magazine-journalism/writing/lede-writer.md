---
name: lede-writer
status: stable
category: magazine-journalism
subcategory: writing
version: 1.0
eval_score: 4.44
tags: [journalism, writing, lede, opening, article, news, feature]
---

# Lede Writer

## What This Skill Does
Writes three opening paragraph options for a news or feature article, each using a different lede style — straight news, anecdotal, and scene-setting — so the writer can choose the strongest entry point for the piece.

## When To Use This Skill
- You have a finished draft but the opening feels flat and you want alternatives before filing
- You know the story's key facts but haven't decided how to start the piece
- An editor has asked you to rework the top of an article and you want to compare approaches quickly
- You're pitching a story and need a compelling opening paragraph to demonstrate the angle

## What You Need To Provide
**Required:**
- The story's core facts: what happened, who is involved, why it matters — in a few sentences or bullet points
- Article type: hard news, feature, profile, investigative, or opinion/column

**Optional:**
- A specific anecdote, scene, or detail from your reporting that could anchor the opening
- Target publication style (broadsheet, tabloid, long-form magazine, trade press)
- Word count constraint for the lede (defaults to 40–80 words per option)
- Tone: urgent, measured, literary, conversational

## How Claude Approaches This

1. **Identifies the news value.** Before writing anything, distills the single most important or surprising element of the story — the fact that justifies the article's existence. This becomes the anchor for all three options.

2. **Writes one lede per style**, each attacking the story from a different angle:
   - **Straight news lede** — leads with the most newsworthy fact in a single sentence. Answers who, what, when, where in under 35 words. No scene-setting, no color, no attribution unless the source is the story.
   - **Anecdotal lede** — opens with a specific person, moment, or incident that illustrates the larger story. Grounds the reader in a human experience before widening to the broader significance. Two to four sentences.
   - **Scene-setting lede** — places the reader in a specific time and place using concrete sensory detail. Builds atmosphere before introducing the news element. Works best for features, investigations, and long-form.

3. **Matches register to the publication type.** A broadsheet lede is measured and precise. A tabloid lede is punchy and direct. A long-form magazine lede can take its time. If no publication type is specified, defaults to general-interest magazine.

4. **Adds a guidance note.** After the three options, recommends which style best suits the story type and explains why — so the writer makes an informed choice rather than defaulting to habit.

## Output Format

Three labeled lede options. Each option: one paragraph, 40–80 words unless a different length was specified. No preamble or explanation before the ledes. After the three options, a one-paragraph guidance note recommending which option best fits the story and publication type, with reasoning. Total output: under 400 words.

```
**Option 1 — Straight News**
[Lede text]

**Option 2 — Anecdotal**
[Lede text]

**Option 3 — Scene-Setting**
[Lede text]

---
*Guidance: [Which option works best for this story and why. One concrete next step.]*
```

## Quality Criteria
- [ ] The straight news lede contains the most newsworthy fact in a single sentence of 35 words or fewer
- [ ] The anecdotal lede opens with a specific person or moment, not a generalization
- [ ] The scene-setting lede uses at least one concrete sensory detail (sight, sound, smell, texture)
- [ ] All three options are genuinely distinct — not rewordings of the same approach
- [ ] No lede buries the news behind unnecessary context or attribution
- [ ] Register matches the stated or implied publication type
- [ ] Guidance note gives a specific, reasoned recommendation — not a generic "all three work"
- [ ] No lede begins with a quote, a question, or "It was" (common weak openings)

## Example

### Input
**Story facts:** A mid-sized city's public library system has eliminated all late fees permanently after a two-year pilot program showed that removing fines increased book returns by 18% and brought back 11,000 previously blocked cardholders — mostly from low-income neighborhoods. The city council voted unanimously last Tuesday. The library director says the fine system was "punishing the people who needed us most."

**Article type:** Feature

**Publication style:** Long-form magazine

### Output

**Option 1 — Straight News**
The city council voted unanimously on Tuesday to permanently eliminate overdue fines across all 23 public library branches, after a two-year pilot showed that scrapping penalties increased book returns by 18% and restored borrowing privileges to 11,000 residents who had been locked out of the system.

**Option 2 — Anecdotal**
For three years, Dara Simmons owed $14.60 in overdue fines on a stack of children's books she had returned late during a move. The amount was small enough to forget, large enough to block her library card, and just embarrassing enough to keep her from asking about it at the desk. She was one of 11,000 cardholders frozen out of the system — until Tuesday, when the city council voted to eliminate fines for good.

**Option 3 — Scene-Setting**
The returns bin at the Eastside branch sits just inside the entrance, a dented metal cart that smells faintly of coffee and old paperbacks. On a Tuesday afternoon in March, a woman in a grocery-store uniform dropped in four picture books without breaking stride — no hesitation at the desk, no mental arithmetic about what she might owe. Two years ago, that transaction would have cost her $3.20 and a conversation she didn't want to have. The city council voted that same Tuesday to make the change permanent: all late fees, across all 23 branches, eliminated.

---
*Guidance: For a long-form magazine feature, Option 3 gives you the strongest opening — the sensory detail and the small human moment earn the reader's attention before the policy news lands. Option 2 is nearly as strong and works better if you have a real source whose story you can follow through the piece. Option 1 is your fallback if the editor wants the news higher. Next step: choose your lede, then run the reportage-structure skill to map the full article architecture.*

## Known Limitations
- The anecdotal and scene-setting ledes require invention if you don't provide a real anecdote or scene from your reporting. Claude will construct a plausible composite, but you should replace it with real material from your notes before publication.
- This skill writes the opening paragraph only. It does not structure the rest of the article — use reportage-structure for full article architecture.
- For highly specialized or technical subjects, the ledes may simplify the nuance to achieve accessibility. Review for accuracy before filing.

## Related Skills
- [reportage-structure](reportage-structure.md) — map the full article structure after choosing your lede
- [headline-generator](../ideation/headline-generator.md) — write the headline to match the lede angle
- [copy-editor-assistant](../editing/copy-editor-assistant.md) — line-edit the full draft once written
- [sidebar-fact-box-writer](sidebar-fact-box-writer.md) — pull supporting data into a companion box

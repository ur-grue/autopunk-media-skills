---
name: dialogue-polisher
status: stable
category: screenwriting
subcategory: scripting
version: 1.0
eval_score: 4.5
tags: [screenwriting, scripting, dialogue, rewrite, voice]
---

# Dialogue Polisher

## What This Skill Does
Rewrites or sharpens dialogue in a screenplay scene to improve subtext, differentiate character voices, remove on-the-nose writing, and ensure every line is doing at least two things at once.

## When To Use This Skill
- A scene is dramatically correct but the dialogue feels flat, expository, or like characters are stating what they mean instead of circling it
- Two characters sound the same and you cannot tell them apart from the text alone
- A key emotional scene is landing the right beats but the dialogue is making them too obvious
- You are finalizing a draft for submission and want to sharpen the most important dialogue scenes before they go out

## What You Need To Provide
**Required:** The scene as written, including action lines and dialogue; brief character notes for each speaker (what they want in this scene, what they will not say, their verbal habits or register)
**Optional:** The scene's function in the overall story (what has to be established, changed, or seeded); any specific lines the writer wants to keep; the emotional destination of the scene (where should the audience be at the end of this scene that they weren't at the start)

## How Claude Approaches This
1. Reads the scene to identify on-the-nose lines (where a character states their emotion, motivation, or the scene's theme directly) and marks them — these are the primary targets
2. Identifies any lines where both characters sound interchangeable and examines what register difference, vocabulary gap, or behavioral habit would distinguish them
3. Rewrites the scene line by line, preserving the dramatic function of each exchange while finding the oblique version — the thing a character would actually say given what they want, what they fear, and what they refuse to admit
4. Preserves action lines unless they are directing the emotional reading of the scene in a way that makes the dialogue do less work (e.g., "she looks at him with barely contained fury" tells the audience what to feel; "she hands him the keys" lets the dialogue and performance carry it)

## Output Format
The complete scene rewritten, in standard screenplay format (slugline, action lines, character name centered above dialogue, parentheticals used sparingly). Followed by a brief notes block: 3–5 bullet points identifying the specific changes made and why. Total length: the rewritten scene (variable, matching original length) plus a 100–150 word notes block. The rewrite preserves the scene's dramatic function — it does not restructure, cut, or extend the scene without being asked.

## Quality Criteria
- [ ] No line states the character's emotion, motivation, or the scene's theme directly (on-the-nose test)
- [ ] Each character has a distinct verbal register — vocabulary, sentence length, use of silence, deflection pattern
- [ ] Every line is doing at least two things: advancing the surface conversation and revealing or concealing something underneath
- [ ] Parentheticals are used only where the reading of a line is genuinely ambiguous and the wrong reading would damage the scene
- [ ] Action lines show behavior, not emotion — no "he feels disappointed," only "he puts the keys on the counter"
- [ ] The scene's dramatic function (what changes from start to end) is preserved in the rewrite

## Example

### Input

**Scene function:** Elliot confronts his sister Petra about her having known about their father's second family for six years. This is the emotional midpoint of the film — the second betrayal hitting harder than the first. Elliot feels that the one person he trusted to be honest with him chose to protect him as if he were still a child.

**Character notes:**
- **Elliot:** What he wants from this scene: an explanation. What he will not say: that he is more hurt by Petra's silence than by their father's. His verbal habit: he asks factual questions when he's avoiding emotional ones.
- **Petra:** What she wants: Elliot to understand that she made the right decision. What she will not say: that she was also protecting herself from having to hold his reaction. Her verbal habit: she talks quickly when she's anxious; her sentences run together.

**Original scene:**

INT. FAMILY HOME - KITCHEN - DAY

Elliot stands at the kitchen window. Petra enters.

PETRA
I know what you're going to say.

ELLIOT
Six years, Petra.

PETRA
I was protecting you. You were barely holding it together after Mum died and I didn't want to make things worse.

ELLIOT
You should have told me. I deserved to know.

PETRA
I know that now. But at the time it felt like the right thing to do.

ELLIOT
I'm angry at you. I'm really angry.

PETRA
I'm sorry. I genuinely thought I was doing the right thing.

Elliot turns to look at her.

ELLIOT
Did he ask you to keep it secret?

PETRA
No. He didn't know I knew.

ELLIOT
Then why?

PETRA
Because I love you and I didn't want to hurt you.

ELLIOT
You hurt me anyway.

### Output

INT. FAMILY HOME - KITCHEN - DAY

Elliot stands at the kitchen window. Petra enters.

PETRA
I was going to tell you.

ELLIOT
When did you find out.

PETRA
Elliot—

ELLIOT
Year. Roughly.

PETRA
(beat)
2019. I found a receipt in his coat pocket at Christmas. I went back and found other things. It took a while to understand what they were.

ELLIOT
Seven years.

PETRA
Six.

ELLIOT
Seven if you're counting from when you knew and weren't sure.

Petra doesn't answer.

ELLIOT (CONT'D)
Did he know you knew?

PETRA
No.

ELLIOT
Then you weren't protecting him.

PETRA
I was protecting—

ELLIOT
Don't say me.

A long beat. Petra looks at her hands.

PETRA
When Mum was sick you had a meltdown at Christmas over the wrong gravy. I watched you have a full — you couldn't cope with gravy. So no. I didn't tell you. I made a decision and I'd probably make it again and I hate that you're looking at me like that because I was twenty-nine and I was doing my best.

ELLIOT
How long have you known I could cope?

Petra looks up.

ELLIOT (CONT'D)
Roughly.

---

**Notes:**

- **"I know what you're going to say" cut.** It was defensive before the scene established what Elliot actually knows. Replaced with Petra's "I was going to tell you" — which is probably not true but which opens the scene at higher emotional temperature, and which Elliot ignores entirely.
- **"I'm angry at you" removed.** Elliot's anger is visible in the behavior — he asks dates, he corrects her arithmetic, he refuses the word "me." Telling the audience he's angry cancels the performance.
- **Petra's speech ("When Mum was sick...").** The original had Petra give a calm, considered explanation. This draft gives her one run-on speech where she loses composure briefly — it reveals that the real thing she's been protecting isn't Elliot, it's herself from having to watch him fall apart again. It doesn't say this. It shows her saying it without saying it.
- **"How long have you known I could cope?"** replaces "You hurt me anyway." The original line is a conclusion; this one is a question that contains the same accusation, stays in Elliot's factual register, and leaves the scene open rather than closed.
- **Action lines stripped of emotion direction.** "Petra looks at her hands" rather than "Petra looks guilty." What the audience reads into the look is their work.

## Known Limitations
- The skill rewrites dialogue based on the character notes provided; thin character notes ("she's nervous") produce generic oblique dialogue rather than genuinely differentiated voice — the more specific the behavioral and psychological profile, the better the rewrite
- The skill preserves the scene's dramatic function as described; if the function is not stated, the skill will infer it from the original, which may result in a rewrite that improves line quality but shifts emphasis in ways the writer did not intend
- The skill does not evaluate whether the scene should exist in its current form — it improves what is there; if the scene has a structural problem (wrong scene in the wrong place, scene that the story doesn't need), dialogue polishing will not fix it

## Related Skills
- [scene-writer](./scene-writer.md)
- [script-notes-writer](../revision/script-notes-writer.md)
- [character-profile-writer](../development/character-profile-writer.md)

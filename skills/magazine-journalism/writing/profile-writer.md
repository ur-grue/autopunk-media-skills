---
name: profile-writer
status: stable
category: magazine-journalism
subcategory: writing
version: 1.0
eval_score: 4.47
tags: [journalism, writing, profile, feature, portrait, interview, magazine]
---

# Profile Writer

## What This Skill Does
Writes a magazine-style profile piece on a person from interview notes, biographical background, and a stated editorial angle — delivering a polished draft that balances character, narrative, and context.

## When To Use This Skill
- You've completed an interview and have notes, quotes, and background but need to shape them into a cohesive profile
- An editor has assigned a profile and you want a structural draft to work from before applying your own voice
- You need to turn a Q&A transcript into a narrative profile rather than publishing the raw interview
- You're writing a "person behind the story" sidebar or standalone feature for a magazine issue

## What You Need To Provide
**Required:**
- Subject's name, title, and organization (or description if the person is not a public figure)
- The editorial angle: what this profile is really about — not just "who they are" but why they matter right now
- Interview notes or key quotes (at least 3–4 direct quotes)
- Basic biographical facts: career history, relevant achievements, age if editorially relevant

**Optional:**
- Observational details from the interview setting (what they wore, how they spoke, the room)
- Anecdotes or stories the subject told during the interview
- Context from third-party sources (colleagues, critics, public record)
- Word count target (defaults to 1,200–1,500 words)
- Publication style and tone (literary magazine, Sunday supplement, trade press, online feature)

## How Claude Approaches This

1. **Identifies the through-line.** Every strong profile has a single animating question or tension at its center — not "who is this person" but "what drives them, and what does that reveal?" Claude finds this thread in the editorial angle and the quotes, and structures the entire piece around it.

2. **Opens with a scene or telling detail.** The profile does not begin with a biography. It opens with a moment, an image, or an observation that draws the reader in and hints at the larger story. If observational details were provided, Claude uses them. If not, it opens with the strongest quote or anecdote from the notes.

3. **Weaves biography into narrative.** Biographical facts are introduced only when they serve the story's momentum — not dumped in a single paragraph. Career milestones, education, and background emerge naturally as context for the subject's actions, decisions, or quotes.

4. **Balances the subject's voice with the writer's eye.** Direct quotes carry the subject's personality, perspective, and speech patterns. Between quotes, the writer's prose provides interpretation, context, and narrative structure. Claude alternates between these two registers, never letting either dominate for too long.

5. **Closes with resonance, not summary.** The final section returns to the through-line — a closing image, a final quote, or a moment that echoes the opening. The reader should finish the profile feeling they understand something essential about the subject, not just knowing their resume.

## Output Format

1,200–1,500 words (or specified count). Narrative prose with no subheadings — the profile reads as a single continuous piece. Short paragraphs (2–4 sentences). Direct quotes integrated into the narrative flow, not set apart in Q&A format. Opening scene or detail in the first paragraph. Biographical context woven throughout. Closing paragraph that resonates with the opening. Tone: authoritative but human — the writer is present but not the subject.

## Quality Criteria
- [ ] The profile has a clear through-line — a central tension or question that holds the piece together
- [ ] The opening paragraph uses a scene, detail, or anecdote rather than a biographical summary
- [ ] At least four direct quotes are integrated, each revealing character or perspective — not just delivering information
- [ ] Biographical facts are woven into the narrative, not dumped in a single block
- [ ] The subject feels three-dimensional — strengths and complexities both present, no hagiography
- [ ] The closing paragraph echoes or reframes the opening, creating structural resonance
- [ ] The writer's voice is present but restrained — observation and interpretation, not opinion
- [ ] The profile answers "why this person, why now" — not just "who is this person"

## Example

### Input
**Subject:** Maria Delgado, 54, head chef and owner of a mid-sized restaurant in a waterfront district that has become a center of the city's culinary revival over the past decade.

**Editorial angle:** After 30 years in professional kitchens, Delgado is closing her restaurant voluntarily — not because it's failing, but because she believes the industry's labor model is broken and she refuses to participate in it anymore. The profile explores what it means to walk away from something you built when you can no longer reconcile the craft with the cost.

**Interview quotes:**
- "I love cooking. I've never stopped loving cooking. What I stopped loving was what the business requires you to do to the people around you."
- "Every chef who's honest will tell you: the kitchen runs on people who are too exhausted to push back. I ran mine the same way for 20 years before I admitted it."
- "My sous chef worked 14-hour days for a salary that wouldn't cover rent in the neighborhood where we cook. I gave him a raise, and then another, and the margins disappeared. That's the math. The math is the problem."
- "People keep asking what's next. I don't know. I think I need to not know for a while."
- "The last service will be a Saturday. I want it to be busy. I want the kitchen to be loud. And then I want to lock the door and walk to the water."

**Observational details:** Interview took place at the restaurant on a Monday afternoon, the only day it's closed. Delgado sat at a table near the kitchen pass, still in her chef's whites. The dining room was quiet but the kitchen behind her was being prepped by her team for the following day — she kept glancing back at the sounds. She speaks carefully, often pausing mid-sentence to rethink a word. A framed review from the city's paper hangs near the entrance, slightly crooked.

**Word count:** 1,200 words

**Style:** Sunday newspaper supplement

### Output

The dining room at Sable is empty on Mondays, but the kitchen isn't. Maria Delgado sits at a two-top near the pass in her chef's whites, back to the window, facing the stainless-steel counter where tickets usually hang. Behind her, someone is running a mandoline through a case of fennel. She keeps glancing over her shoulder — not checking, just listening. After 30 years in professional kitchens, the sound of prep is still the thing that makes sense to her.

In six weeks, she will close this restaurant. Not because it's failing. Sable has been consistently full for the better part of a decade, a quiet anchor in a waterfront district that has transformed around it from fishing supply shops and empty lots into one of the city's most talked-about dining neighborhoods. Delgado was here before the revival. She'll leave before it peaks.

"I love cooking," she says, turning a water glass slowly on the table. "I've never stopped loving cooking. What I stopped loving was what the business requires you to do to the people around you."

Delgado grew up inland, the daughter of a bus driver and a school administrator. She started washing dishes at 16 in a hotel kitchen and never left the industry. Culinary school in her early twenties, a series of line positions in increasingly serious kitchens, her first sous chef role at 29. She opened Sable at 41 with savings and a small loan, a 48-seat room with no investors and no safety net.

The restaurant earned its reputation slowly — not through press or social media but through the kind of word-of-mouth that chefs trust. A simple, seasonal menu. Technique over spectacle. The review from the city's paper still hangs near the entrance, slightly crooked. Delgado has never straightened it.

But the conversation she wants to have today is not about the food. It's about the people who make it.

"Every chef who's honest will tell you: the kitchen runs on people who are too exhausted to push back," she says. She pauses, reconsiders, then continues. "I ran mine the same way for 20 years before I admitted it."

The specifics are not dramatic by industry standards — which, she would argue, is exactly the problem. Long shifts. Salaries that look reasonable on paper until you account for the hours. A culture where commitment is measured by willingness to sacrifice everything outside the kitchen door.

"My sous chef worked 14-hour days for a salary that wouldn't cover rent in the neighborhood where we cook," she says. "I gave him a raise, and then another, and the margins disappeared. That's the math. The math is the problem."

Delgado tried to make the model work. She raised menu prices incrementally. She reduced covers on weeknights. She cut back her own salary first, then realized she was asking herself to subsidize a system she had already identified as broken. The restaurant was still profitable — just not profitable enough to pay everyone what the work actually demanded.

She announced the closure to her staff three months ago, offering extended notice and references. Two of her cooks have already been hired at other kitchens. Her sous chef is moving to a catering company with regular hours.

The industry response has been what she expected: admiration from the people who understand, confusion from those who think she should have sold the business, and a steady stream of reservation requests from diners who want to eat there before it's gone.

Delgado is unmoved by the attention. She speaks carefully throughout the interview, often stopping mid-sentence to choose a different word. She is not performing grief or making a statement. She is someone who has done the math and found it unacceptable, and who has the rare combination of conviction and financial stability to act on that conclusion.

"People keep asking what's next," she says. "I don't know. I think I need to not know for a while."

The fennel is done. Someone behind the pass has moved on to breaking down fish — the rhythmic sound of a knife on a cutting board, steady and practiced. Delgado listens to it the way some people listen to music.

The last service will be a Saturday. She wants it to be busy. She wants the kitchen to be loud. And then she wants to lock the door and walk to the water.

## Known Limitations
- Without observational details from the actual interview setting, Claude invents plausible scenes. These are clearly fabricated and must be replaced with real material before publication — a profile's authority depends on first-hand observation.
- The skill works best with a clear editorial angle. If you provide only biographical facts without a "why now" framing, the output will read more like a biography than a profile.
- Claude cannot replicate a specific publication's voice or a writer's personal style. The output provides professional structure and narrative competence — the writer's distinctive voice must be applied in revision.

## Related Skills
- [interview-transcript-editor](interview-transcript-editor.md) — clean up raw interview transcripts before extracting quotes for the profile
- [lede-writer](lede-writer.md) — generate alternative opening paragraphs if the profile's opening needs reworking
- [copy-editor-assistant](../editing/copy-editor-assistant.md) — line-edit the finished profile before filing
- [column-voice-adapter](column-voice-adapter.md) — adapt the profile's tone to match a specific publication voice

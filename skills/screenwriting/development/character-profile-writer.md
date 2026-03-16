---
name: character-profile-writer
status: stable
category: screenwriting
subcategory: development
version: 1.0
eval_score: 4.4
tags: [screenwriting, development, character, profile, backstory]
---

# Character Profile Writer

## What This Skill Does
Writes a structured dramatic character profile — covering psychology, backstory, want, need, flaw, wound, and voice — that a screenwriter can use throughout a full draft.

## When To Use This Skill
- You have a concept and a character role (detective, grieving mother, con artist) but have not yet differentiated the character enough to write them convincingly across 90–110 pages
- You are developing a multi-character ensemble and need each character's internal logic mapped before scenes are written
- You want to stress-test whether your character has sufficient internal contradiction to sustain dramatic interest
- You are in early development and need a character document to share with collaborators, a director, or a casting conversation

## What You Need To Provide
**Required:** Character's role in the story; their external goal in the story (the want); a brief description of who they appear to be on the surface
**Optional:** Genre and tone; the protagonist's relationship to this character (lead, antagonist, ally, mirror); any fixed biographical facts; what the writer already knows about their backstory or arc; character traits to avoid

## How Claude Approaches This
1. Establishes the wound — the formative past event that explains why this character behaves as they do now — and distinguishes it clearly from the flaw, which is the maladaptive coping strategy the wound produced
2. Defines the want (the external, conscious goal driving the character through the plot) and the need (the internal, unconscious lesson they must learn — often the opposite of the want)
3. Constructs a voice signature: vocabulary range, sentence rhythm, use of silence, characteristic deflection or verbal habit — specific enough to write actual dialogue
4. Writes a brief biography grounded in the wound, filtered through the story's genre logic, making no claims about real individuals or events
5. Identifies the character's ghost — the off-screen event or relationship that haunts their present behavior and whose resolution defines the character's arc

## Output Format
Five headed sections: **Wound & Flaw**, **Want & Need**, **Backstory** (150–200 words, scene-ready), **Voice Signature** (3–5 specific characteristics with illustrative micro-dialogue), **Ghost & Arc** (what haunts them, where they start, where they end). Total length: 500–700 words. Tone: development notes — precise, psychologically grounded, zero waffle.

## Quality Criteria
- [ ] Want and need are clearly distinct and in dramatic tension with each other
- [ ] The wound is a specific event or period, not a vague trait ("grew up poor" is not a wound; "his mother chose her boyfriend over him on the night he needed her most" is)
- [ ] The flaw is a direct behavioral consequence of the wound — the connection is explicit
- [ ] Voice signature includes at least one concrete illustrative line of micro-dialogue
- [ ] Ghost is an off-screen element that creates a present-tense pressure, not just a sad biographical fact
- [ ] The arc — where the character ends — is present and differentiated from where they start

## Example

### Input
**Role:** Protagonist — a 44-year-old female detective homicide investigator in a mid-sized city
**Genre:** Crime drama, grounded and procedural, character-driven
**External goal in story:** Catch the person responsible for a series of staged suicides
**Surface description:** Competent, respected, calm under pressure. Keeps everyone at arm's length. Works every case harder than required.
**Relationship notes:** Divorced, one adult estranged daughter, one younger partner she's mentoring
**Tone reference:** The Wire, Mare of Easttown

### Output

**CHARACTER PROFILE — DET. RUTH CALLOWAY**

---

**Wound & Flaw**

Ruth's wound is specific and private: when she was 16, her younger brother Denny took his own life three days after she dismissed what she now recognizes were clear signals. She told him he was being dramatic. She was 16 and overwhelmed and wrong, and she has never stopped adjudicating that verdict. Her flaw — the maladaptive behavior the wound produced — is a compulsive certainty in her own professional judgment combined with a complete inability to hear distress in the people she loves. She reads strangers with precision and the people closest to her not at all.

---

**Want & Need**

**Want:** Solve the case. More specifically: prove that these deaths were not suicides, that someone decided for those people that their lives were finished. This is the conscious engine of the story.

**Need:** Accept that she cannot posthumously correct what happened to Denny, and that her daughter — who is alive and asking for contact — is not a case she can close by working harder. She needs to be present rather than vigilant.

---

**Backstory**

Ruth grew up in a working-class household where her parents' marriage was a cold war conducted through chores and silences. She became competent early — the kid who handled logistics, managed Denny, and never asked for anything — because asking felt dangerous. She joined the force at 22, made detective at 29, was promoted to homicide at 33. Her marriage to a high-school coach lasted eleven years; he left citing emotional unavailability, a charge she found professionally interesting and personally incomprehensible. Her daughter Viv is 24, lives two hours away, and has been texting intermittently for three months. Ruth hasn't replied. She doesn't know what she would say.

---

**Voice Signature**

Ruth speaks in short declarative sentences. She never speculates out loud — she states. When uncomfortable, she shifts to procedure: "What do the phone records show?" She uses silence as punctuation, waiting a beat longer than is comfortable before responding. She does not use profanity. She has one verbal tell: when something matters emotionally, she says "sure" and moves on.

*Illustrative micro-dialogue:*
> PARTNER: Do you think she wanted to die?
> RUTH: What time was she last seen.
> PARTNER: Ruth—
> RUTH: What time.

---

**Ghost & Arc**

Ruth is haunted not by Denny's death but by the specific sentence she said to him: *"You're being dramatic."* It plays in present tense. She sometimes hears it when a witness is minimizing. The ghost is active — it shapes how she interrogates, how she reads other people's pain, and why she cannot do the same for Viv.

Her arc: Ruth begins the story convinced that solving the case is the same as making it right. She ends having solved the case and understanding, for the first time, that it isn't. The final scene shows her replying to Viv's text. Not a long message. Three words. The arc is not redemption — it is the first genuine step toward it.

## Known Limitations
- The profile is most useful for protagonists and major supporting characters; for ensemble casts larger than six, the output quality per character decreases unless inputs are very specific for each individual
- Voice signature micro-dialogue is illustrative, not a full scene — writers will need to develop the voice through actual pages; the profile is a starting compass, not a finished instrument
- The skill produces psychologically coherent profiles for human characters in realistic-genre dramas; genre-specific archetypes (villain with no interiority, mythological trickster figure) may require explicit instruction to avoid the skill imposing a realist-drama framework

## Related Skills
- [beat-sheet-builder](./beat-sheet-builder.md)
- [treatment-writer](./treatment-writer.md)
- [dialogue-polisher](../scripting/dialogue-polisher.md)

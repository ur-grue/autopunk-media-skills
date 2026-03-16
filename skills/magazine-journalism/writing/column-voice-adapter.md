---
name: column-voice-adapter
status: stable
category: magazine-journalism
subcategory: writing
version: 1.0
eval_score: 4.4
tags: [journalism, writing, voice, column, style, tone]
---

# Column Voice Adapter

## What This Skill Does
Rewrites or drafts a column passage in a defined author's established voice and style, given a description of that voice and a sample of existing writing.

## When To Use This Skill
- You write a regular column and need help drafting a passage that matches your established voice
- You're a staff writer covering for another columnist and need to match their style for one issue
- You've written a draft in a more generic register and want to push it toward your actual voice before submission
- You're developing a new column persona and want to test-run the voice on a piece of content

## What You Need To Provide
**Required:** 150–400 words of existing writing in the target voice (the "voice sample"); the topic or argument of the new passage you want written; the approximate length needed.
**Optional:** A description of the voice in your own words (e.g., "dry wit, never explains the joke, short declarative sentences, tends toward irony when discussing technology"); the publication and its audience; any specific phrases or habits to use or avoid; whether the new piece should feel like a continuation of the sample or a standalone piece.

## How Claude Approaches This
1. Analyzes the voice sample for structural and stylistic patterns: sentence length and rhythm, characteristic vocabulary level, the writer's relationship to their subject (detached observer, first-person participant, amused skeptic), how they handle transitions, how they use irony or understatement, whether they explain or imply.
2. Extracts 4–6 specific stylistic rules from the sample — enough to apply consistently across the new passage — and applies them to the new content. Patterns that appear once in the sample are suggestions; patterns that appear multiple times are rules.
3. Writes the new passage in the target voice, then internally checks each sentence against the identified rules before finalizing. Notes any places where the topic creates a tension with the voice that required a judgment call.

## Output Format
Two parts: (1) Voice Analysis — a brief bullet list of the stylistic rules extracted from the sample, so the writer can verify them; (2) New Passage — the requested content in the adapted voice, at the requested length. The voice analysis section is short (6–8 bullets); it exists to make the adaptation transparent, not to be included in the final piece.

## Quality Criteria
- [ ] Voice analysis identifies specific patterns, not generic adjectives ("average sentence length 12 words" not "concise")
- [ ] New passage is consistent in voice from first sentence to last — no passages that slip back into neutral register
- [ ] Characteristic vocabulary and sentence rhythm from the sample are present in the new passage
- [ ] New passage is topically complete — it makes its argument fully, not just as a voice exercise
- [ ] If the voice has a distinctive relationship to the reader (ironic, confessional, authoritative), that relationship is maintained throughout

## Example

### Input
**Voice sample:**
"There is a particular kind of meeting that exists in every organization I have ever observed — one that nobody calls, but that everyone attends. It has no agenda. Its purpose, if pressed, would be described as 'keeping everyone aligned,' which is the professional world's most expensive euphemism for not trusting anyone to do their job without supervision. I have spent, by my calculation, approximately 14% of my working life in this meeting. I do not know what would have happened if I had spent that 14% on the work itself. I suspect the answer is unremarkable. Most work is unremarkable. That is not a criticism. It is a structural observation, and structural observations are generally unwelcome in meetings."

**New topic:** Write a passage in this voice about open-plan offices and why the design has failed every experiment it was supposed to validate.
**Length:** 200–250 words

### Output

**Voice Analysis**

- Average sentence length: 15–17 words, but with deliberate short sentences (5–8 words) used for emphasis at section breaks
- Relationship to subject: detached institutional observer, never angry, always quietly amused
- First-person but not confessional — uses "I" as a measurement device, not an emotional center
- Characteristic move: states an observation, then pre-emptively acknowledges the implied objection, then restates the observation more precisely
- Vocabulary: formal-adjacent but not academic; uses professional jargon ("aligned," "structural") as a subject of gentle mockery, not a tool
- Endings: does not resolve — closes on a statement that is complete but refuses to conclude

---

**New Passage**

The open-plan office solved a problem that had not been identified as a problem until someone invented the solution. Private offices, it was argued, created silos. They prevented the spontaneous collisions of ideas that produced innovation. This argument was presented with great confidence and almost no evidence, which in my experience is the typical epistemic profile of an argument that is about to become a policy.

The research, when it arrived, suggested that open-plan offices produced the opposite of spontaneous collaboration. People put on headphones. They looked at their screens. They communicated with colleagues three meters away by sending electronic messages. What the open plan had created, it turned out, was a very expensive and uncomfortable version of the remote work arrangement that would eventually replace it.

I am aware that this is an unkind way to describe several decades of workplace design. I would describe it differently if I could. But the literature is largely unanimous, and the literature rarely gets to be unanimously correct about anything. One should acknowledge this when it happens.

---

## Known Limitations
- This skill adapts to voice patterns, not to a writer's subject-matter knowledge or personal memory. A column that relies on the writer's specific experiences, relationships, or institutional knowledge cannot be fully replicated — the adapted passage will match the style but may lack the interior authority that comes from lived experience.
- Voice samples under 150 words may not contain enough pattern repetition for reliable analysis. Short samples produce style suggestions, not style rules. Provide longer samples for more accurate adaptation.
- This skill does not fact-check claims made in the new passage. The adapted voice will sound like the author — but accuracy of any specific claim in the new passage is the writer's responsibility to verify.

## Related Skills
- [copy-editor-assistant](../editing/copy-editor-assistant.md)
- [house-style-enforcer](../editing/house-style-enforcer.md)
- [reportage-structure](../writing/reportage-structure.md)

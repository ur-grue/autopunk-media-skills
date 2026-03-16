---
name: narrator-voice-adapter
status: stable
category: tv-documentary
subcategory: scripting
version: 1.0
eval_score: 4.4
tags: [documentary, scripting, voice, narration, adaptation]
---

# Narrator Voice Adapter

## What This Skill Does
Rewrites existing narration or commentary to match a defined presenter or narrator voice and tone, preserving the factual content while adapting register, sentence structure, and personality.

## When To Use This Skill
- A presenter or narrator has been attached to a project and the draft narration was written in the wrong voice
- You are adapting narration written by one writer for a different tone or program format
- A broadcaster has asked you to make the commentary feel more like a specific kind of program (e.g., more conversational, less academic)
- The narration draft is technically accurate but feels generic and needs a distinctive voice

## What You Need To Provide
**Required:** The original narration text; a description of the target voice (register, personality, sentence style, emotional range); the documentary's subject and tone
**Optional:** Sample text written in the target voice (a transcript excerpt, a comparable film's narration, or a note written by the presenter themselves); the narrator's name if they are a known public figure whose voice style you are approximating; the sequence context (where this narration falls in the film)

## How Claude Approaches This
1. Reads the original narration for its factual content and structure — this content must be preserved, even when the surface language changes completely
2. Identifies the characteristics of the target voice from the description or sample provided: sentence length, use of rhetorical questions, personal pronoun use, relationship to emotion, vocabulary level, and pace
3. Rewrites the narration maintaining the same facts, sequence of ideas, and approximate length — but in the target voice
4. Provides a brief Voice Notes section explaining the specific adaptations made and flagging any places where the target voice creates tension with the factual content

## Output Format
Side-by-side presentation (or clearly labeled Original / Adapted versions if side-by-side is impractical). Each version labeled. Approximate word count for both. Followed by Voice Notes (100–150 words) describing the specific changes made. The adapted version should be usable as a recording script without further editing.

## Quality Criteria
- [ ] All factual content from the original narration is preserved in the adapted version
- [ ] The adapted version is in a distinctly different voice — not marginally tweaked but genuinely rewritten in a new register
- [ ] Sentence structure reflects the target voice consistently throughout — not just in the first sentence
- [ ] Voice Notes accurately describes what changed and why, not just "made it more conversational"
- [ ] Adapted version is performance-ready: no awkward phrasings, no sentences that cannot be spoken comfortably in one breath

## Example

### Input
Original narration:
"The Mekong River, stretching 4,350 kilometres from the Tibetan Plateau to the South China Sea, passes through six countries and supports the livelihoods of approximately 70 million people. In the past decade, the construction of eleven large-scale hydroelectric dams has fundamentally altered the river's flow, reducing sediment transport and disrupting the annual flood cycle upon which downstream agriculture depends. Scientists have documented a decline of 40 percent in fish biomass in the lower Mekong since 2010."

Target voice: Conversational but authoritative. A presenter who speaks directly to the viewer as an equal — not lecturing, not dumbing down. Uses the first person occasionally. Asks rhetorical questions to pull viewers in. Short sentences. Feels like someone who cares deeply about the subject and assumes the viewer will too.

Documentary subject: Environmental documentary on the Mekong River

### Output

**Original Version** *(~80 words)*

"The Mekong River, stretching 4,350 kilometres from the Tibetan Plateau to the South China Sea, passes through six countries and supports the livelihoods of approximately 70 million people. In the past decade, the construction of eleven large-scale hydroelectric dams has fundamentally altered the river's flow, reducing sediment transport and disrupting the annual flood cycle upon which downstream agriculture depends. Scientists have documented a decline of 40 percent in fish biomass in the lower Mekong since 2010."

---

**Adapted Version** *(~75 words)*

"4,350 kilometres. Six countries. Seventy million people whose lives depend on what this river does next. The Mekong has always provided. For centuries, that felt like a given.

In the last decade, eleven dams have gone up along its course. The floods that farmers have counted on for generations — the floods that bring the fish, replenish the soil — they don't come the way they used to.

Since 2010, fish in the lower Mekong: down 40 percent."

---

**Voice Notes**

The original narration is accurate and well-structured but reads like a briefing document — it presents facts at the viewer rather than inviting them in. The adapted version uses the same figures but restructures them to land as revelation rather than exposition. The opening numerical sequence creates a physical sense of scale before naming the river, reversing the original's order. The first person is implied ("that felt like a given") rather than stated. Short declarative sentences replace compound sentence structures. The final line — "down 40 percent" — is deliberately stripped of its qualifying language to land as an emotional statement rather than a statistical one. If the director requires the full scientific attribution ("scientists have documented"), it can be reinserted without disrupting the voice.

## Known Limitations
- This skill adapts narration based on a description or sample of the target voice. It cannot replicate the voice of a specific living person with 100% accuracy — it approximates a register. For a named presenter, sharing an actual transcript excerpt from their prior work produces better results than a description alone.
- Factual content is preserved, but if the original narration contained errors, those errors will be preserved in the adapted version. Verify facts in the original before requesting the adaptation.
- Some target voices are harder to adapt to than others. A highly idiosyncratic personal style (strong regional dialect markers, unusual verbal tics) may require manual refinement after the initial adaptation.
- Adapting narration to a significantly shorter length while preserving all facts is sometimes impossible — something will have to give. If the target voice uses shorter sentences but must cover the same content, the adapted version may be longer, not shorter.

## Related Skills
- [commentary-writer](./commentary-writer.md)
- [scene-breakdown-writer](./scene-breakdown-writer.md)
- [rough-cut-notes](../post-production/rough-cut-notes.md)

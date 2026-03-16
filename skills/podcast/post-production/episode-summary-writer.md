---
name: episode-summary-writer
status: stable
category: podcast
subcategory: post-production
version: 1.0
eval_score: 4.4
tags: [podcast, post-production, summary, directories, promotion]
---

# Episode Summary Writer

## What This Skill Does
Writes concise episode summaries in three lengths — platform short (100 words), directory standard (150 words), and promotional long (250 words) — for podcast directories, promotional emails, and social bios.

## When To Use This Skill
- You need summaries in multiple lengths because different platforms (Apple Podcasts, Spotify, newsletter, social bio) have different character limits
- You want an episode summary that functions as a promotional pitch rather than a transcript excerpt
- Your current episode descriptions are too detailed and not driving listens from new audiences
- You want to repurpose a finished episode with a short description suitable for a social post or newsletter teaser

## What You Need To Provide
**Required:** Episode title; a 4–8 sentence description of what the episode covers (or key points from the transcript)
**Optional:** Guest name and one-sentence bio; the single most memorable moment, quote, or insight from the episode; target new audience versus regular listener framing; show name for attribution; primary keyword

## How Claude Approaches This
1. Identifies the listener value proposition — not what the episode is about, but what the listener will get from it
2. Writes the shortest version first (100 words): a hook sentence, the core content in 2–3 sentences, and a clear reason to listen now
3. Expands to 150 words for directory standard by adding guest context and one concrete detail that signals depth
4. Writes the 250-word promotional version with a stronger hook, more content detail, and a closing sentence that creates urgency or emotional resonance
5. Reviews all three for tone consistency and ensures none repeat the same language
6. After the three summaries, provides a "Next Step" note specifying which version to paste where — platform short into Spotify/Apple, directory standard into the hosting platform episode page, promotional into the newsletter or social post — and whether show-notes-generator or newsletter-teaser-writer should be run for additional distribution assets

## Output Format
Three clearly labeled summary blocks: PLATFORM SHORT (100 words), DIRECTORY STANDARD (150 words), PROMOTIONAL (250 words). Each block preceded by usage context. Written in third person for platform directories or first person for show-voice contexts — specify preference. Plain text, no headers within the summaries. Output ends with a "Next Step" note mapping each summary to its immediate destination and identifying any remaining distribution asset to create (show notes, newsletter feature, social thread).

## Quality Criteria
- [ ] Platform short is genuinely under 110 words and functions as a standalone promotional piece
- [ ] Each length adds new information — the 150-word version does not just pad the 100-word version
- [ ] The hook sentence of each version is specific and draws from the episode, not generic ("In this episode, we discuss...")
- [ ] Guest context is proportionate — prominent in the 250-word version, concise in the 100-word version
- [ ] All three summaries create a reason to listen, not just a description of content
- [ ] Primary keyword appears naturally in the platform short version
- [ ] Output includes at least one concrete next action the user can take immediately (paste each version into its platform, run show-notes-generator or newsletter-teaser-writer for remaining assets)

## Example

### Input
Episode title: What Your Doctor Isn't Telling You About Burnout
Episode content: Conversation with a psychiatrist who argues that burnout is being systematically misdiagnosed as depression in clinical settings, leading to incorrect treatment. She explains the clinical differences, the specific workplace structures that cause burnout versus other mood disorders, and why she thinks the DSM's lack of a burnout diagnosis is a political problem as much as a medical one. The most memorable moment: she says "We're giving people antidepressants for what is essentially a structural workplace problem — and then wondering why they don't feel better."
Guest: Dr. Amara Osei (fictional), psychiatrist
Show: Mental health and work podcast
Keyword: burnout misdiagnosis

### Output

---

**PLATFORM SHORT** *(Use for: Spotify episode description, Apple Podcasts short description, social post caption. Under 110 words.)*

Is your burnout being treated as depression? Psychiatrist Dr. Amara Osei argues that the two conditions are being routinely conflated in clinical settings — with real consequences for treatment. In this episode, she breaks down the clinical differences between burnout and depression, the workplace structures that drive each, and why the absence of a formal burnout diagnosis in clinical frameworks is, in her view, a political choice rather than a medical one. One of the most clarifying conversations we've had on what it means to be mentally unwell at work.

*(89 words)*

---

**DIRECTORY STANDARD** *(Use for: Apple Podcasts main description, podcast hosting platform episode page. 140–160 words.)*

Burnout is being systematically misdiagnosed as depression in clinical practice — and the treatment that follows is often the wrong one. That's the argument psychiatrist Dr. Amara Osei makes in this episode, drawing on her clinical experience and her frustration with the frameworks her profession uses to categorize workplace-driven mental health conditions.

She explains the specific clinical and behavioral differences between burnout and clinical depression, the organizational factors that drive each, and why she thinks the DSM's current approach to burnout reflects institutional inertia more than science. She also takes apart the "antidepressants for structural problems" pattern she sees in her practice.

If you have ever been told you are depressed and wondered whether that was quite right, this conversation offers language and a frame that may be useful.

*(140 words)*

---

**PROMOTIONAL** *(Use for: newsletter feature, social media thread, press release episode highlight. 240–260 words.)*

"We're giving people antidepressants for what is essentially a structural workplace problem — and then wondering why they don't feel better."

That's psychiatrist Dr. Amara Osei, speaking in this week's episode, and it's the sentence that stopped us in the edit.

Dr. Osei argues that burnout — the specific exhaustion that comes from prolonged, unresolvable workplace stress — is being consistently misdiagnosed as depression in clinical settings. The difference matters not because one is more serious than the other, but because the treatments are different. Antidepressants and therapy approaches designed for clinical depression do not address the conditions that cause burnout. And when the treatment doesn't work, the patient is often blamed.

In this conversation, Dr. Osei explains the clinical markers that distinguish burnout from depression, the workplace structures that generate each, and why the clinical frameworks used by most practitioners haven't caught up with what researchers have known for years. She's also direct about the political dimension: burnout is absent from the DSM not because there isn't enough evidence for it, but because formalizing it would create liability for employers.

This is one of the most practically useful episodes we've published. If you work in a professional environment that asks more than it gives back, this conversation will give you language, context, and a better map for what you are experiencing.

New episode, available now.

*(251 words)*

---

## Known Limitations
- Word counts should be verified before pasting — platform character limits vary, and some platforms count differently (spaces, punctuation); always paste and check in the platform itself
- The promotional version is written to be shared and to attract new listeners; it is not a neutral summary and should not be used as an academic or press description of the episode
- This skill is designed for episodes with a clear central argument or guest contribution; roundtable discussions, casual Q&A episodes, or highly discursive conversations may produce thinner summaries unless a clear takeaway is provided

## Related Skills
- [show-notes-generator](show-notes-generator.md)
- [newsletter-teaser-writer](../../../magazine-journalism/distribution/newsletter-teaser-writer.md)
- [episode-concept-generator](../pre-production/episode-concept-generator.md)

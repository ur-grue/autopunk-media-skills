---
name: show-notes-generator
status: stable
category: podcast
subcategory: post-production
version: 1.0
eval_score: 4.4
tags: [podcast, post-production, show-notes, seo, metadata]
---

# Show Notes Generator

## What This Skill Does
Generates complete, SEO-friendly podcast show notes from a transcript or episode summary — including episode description, key takeaways, timestamps, guest bio, and links section — ready to paste into a podcast host platform.

## When To Use This Skill
- Your episode is ready for publish and you need show notes written before it goes live
- You want consistent show notes structure across all episodes rather than writing from scratch each time
- You are catching up on a backlog of episodes that were published without proper show notes
- You want show notes that function both as useful listener reference and as SEO-discoverable text

## What You Need To Provide
**Required:** Episode title; either a transcript (full or partial) or a 6–10 sentence episode summary covering the main topics discussed
**Optional:** Guest name and bio (or bio to include); links mentioned in the episode; sponsor information; show social handles; podcast platform links (Apple Podcasts, Spotify, etc.) for the boilerplate section; whether timestamps are needed; target keyword for SEO

## How Claude Approaches This
1. Writes the opening description paragraph (100–150 words): what the episode covers, who the guest is, and what the listener will take away — with the primary keyword appearing naturally in the first sentence
2. Extracts 4–6 key takeaways as bullet points — the specific insights or arguments from the episode, not generic topic labels
3. Generates timestamps for major topic shifts if a transcript with timing is provided, or notes the sections if no timestamps are available
4. Formats the guest bio (if provided) in a clean paragraph, adding the recommended social follow and website links
5. Structures the links section: resources mentioned, guest links, show social profiles, sponsor notes
6. Closes with a "Next Step" line recommending what to do with the output: which platform to paste into, whether to run the episode-summary-writer first if content is thin, or whether transcript-cleanup would improve the source material

## Output Format
Complete show notes structured with labeled sections: Episode Description, Key Takeaways, Episode Highlights (with timestamps if available), Guest Bio, Links & Resources. Total length: 350–550 words plus links section. Written for skim-readers: front-loaded value, bullet-point takeaways, clean link formatting. Plain text that pastes cleanly into any platform. Output ends with a brief "Next Step" note specifying the immediate action: paste into podcast host platform, add real URLs to link placeholders, or use episode-summary-writer if the source material was a summary rather than a full transcript.

## Quality Criteria
- [ ] Episode description contains the primary keyword naturally within the first sentence
- [ ] Key takeaways are specific to this episode — not generic topic descriptions
- [ ] Guest bio section is distinct from the main description and includes at least one social link placeholder
- [ ] Links section is cleanly formatted and includes sponsor disclosure if applicable
- [ ] Total show notes text is under 600 words (optimal for platform display and listener scanning)
- [ ] No fabricated quotes or claims from the episode that are not present in the provided summary or transcript
- [ ] Output includes at least one concrete next action the user can take immediately (e.g., paste into platform, fill in link placeholders, run transcript-cleanup for better source material)

## Example

### Input
Episode title: The Sleep Science That's Changing How Doctors Treat Insomnia
Guest: Dr. Yael Kaminsky, sleep medicine researcher and author
Episode summary: The conversation covers: why CBT-I (cognitive behavioral therapy for insomnia) outperforms sleep medication in long-term outcomes but is rarely prescribed; how the brain consolidates memory during REM sleep and what sleep deprivation does to that process; practical sleep hygiene myths vs. what the evidence actually supports; why sleep disorders are dramatically underdiagnosed in women; and the guest's current research into sleep and Alzheimer's risk.
Guest bio: Dr. Yael Kaminsky is a sleep medicine researcher and author of "The Rested Brain." She leads the sleep and cognition laboratory at a major research university and consults with hospitals on insomnia treatment protocols. Instagram: @yaelkaminsky (fictional). Website: yaelkaminsky.com (fictional).
Links: Her book "The Rested Brain," her lab's website
Keyword: CBT-I insomnia treatment
Timestamps available: No

### Output

**Episode Description**

CBT-I — cognitive behavioral therapy for insomnia — consistently outperforms sleep medication in clinical trials, but most patients with insomnia never hear about it. In this episode, sleep medicine researcher Dr. Yael Kaminsky explains why, and what the evidence actually says about how we sleep, why we struggle, and what genuinely helps.

We talk about memory consolidation during REM sleep, why sleep disorders are dramatically underdiagnosed in women, and the growing body of research linking chronic sleep disruption to long-term cognitive risk. Dr. Kaminsky also breaks down which pieces of standard sleep hygiene advice are evidence-based — and which ones aren't.

---

**Key Takeaways**

- CBT-I produces better long-term outcomes for insomnia than medication, but requires a trained provider and takes longer to work — which is why it's under-prescribed despite the evidence
- Sleep deprivation disrupts memory consolidation at the neurological level; a single bad night affects the brain's ability to process and store what it learned that day
- Women are diagnosed with insomnia at lower rates than men despite reporting symptoms at higher rates — a diagnostic gap Dr. Kaminsky attributes partly to how clinical sleep studies have historically been designed
- "Sleep hygiene" is real but over-credited; factors like room temperature and light matter, but they are secondary to the cognitive and behavioral patterns CBT-I addresses
- Emerging research is examining the connection between chronic sleep disruption and Alzheimer's risk — an area Dr. Kaminsky calls "one of the most important questions in sleep science right now"

---

**Episode Highlights**

*(Timestamps unavailable — refer to full episode for segment locations)*
- Why CBT-I is not widely prescribed despite the evidence
- What REM sleep actually does for the brain
- The gender gap in sleep disorder diagnosis
- Sleep hygiene: what works and what doesn't
- The Alzheimer's and sleep research frontier

---

**About Dr. Yael Kaminsky**

Dr. Yael Kaminsky is a sleep medicine researcher and author of *The Rested Brain*. She leads the sleep and cognition laboratory at a major research university and consults with hospitals on insomnia treatment protocols.

Follow her: Instagram @yaelkaminsky | yaelkaminsky.com

---

**Links & Resources**

- *The Rested Brain* by Dr. Yael Kaminsky — [link]
- Dr. Kaminsky's research lab — [link]
- Subscribe to the show: [Apple Podcasts] [Spotify]
- Follow us: [show social handle]

---

## Known Limitations
- Key takeaways are only as specific as the transcript or summary you provide; a vague episode summary produces vague takeaways — the more detail you give, the more useful the output
- Timestamps require either a timestamped transcript or approximate segment timing to be accurate; without this, the skill produces section labels only
- Show notes SEO value is platform-dependent; Spotify and Apple index show notes differently, and optimization for one platform does not guarantee performance on the other
- This skill does not generate the episode title — provide the finished title for accurate keyword alignment in the description

## Related Skills
- [episode-summary-writer](episode-summary-writer.md)
- [guest-research-brief](../pre-production/guest-research-brief.md)
- [transcript-cleanup](transcript-cleanup.md)

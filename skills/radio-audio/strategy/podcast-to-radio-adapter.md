---
name: podcast-to-radio-adapter
status: stable
category: radio-audio
subcategory: strategy
version: 1.0
eval_score: 4.3
tags: [radio, strategy, podcast, adaptation, format, broadcast-standards]
---

# Podcast-to-Radio Adapter

## What This Skill Does
Adapts a podcast episode or series format for broadcast radio, identifying and resolving the structural, editorial, and regulatory differences between on-demand and live scheduled audio.

## When To Use This Skill
- A podcast producer is being approached by a broadcaster to create a radio version of their show
- An independent company wants to pitch an existing podcast to a radio commissioner and needs to articulate what would change
- A broadcaster wants to bring a successful podcast into its schedule and needs a format adaptation document
- A producer who understands podcasting needs to understand how to rework their approach for the broadcast environment

## What You Need To Provide
**Required:** Description of the podcast format (structure, duration, tone, key features), target radio network or station type (public, commercial, regional), and proposed broadcast duration.
**Optional:** Existing podcast episodes to describe as reference, any presenter or talent considerations, regulatory context (e.g. UK Ofcom standards, FCC rules), broadcast slot, and whether the adaptation is for a pilot or a full series.

## How Claude Approaches This
1. Maps the podcast format across five adaptation dimensions: duration (most podcasts are longer than equivalent broadcast slots), structure (broadcast requires hard entry and exit points, ad breaks at fixed positions, and compliance with EPG scheduling), tone (podcast informality often needs calibrating for broadcast, especially for public networks), content standards (broadcast regulation affects language, impartiality, and certain topic categories), and audience relationship (podcast listeners opt in and self-select; broadcast audiences arrive with context and may not stay)
2. For each dimension, identifies what stays the same and what changes — and critically, explains why the change is necessary rather than just listing it
3. Produces a structured adaptation brief that the producer can use to begin re-formatting, with specific recommendations for each episode's structure, a comparison table of podcast vs broadcast conventions, and any regulatory flags

## Output Format
A structured adaptation brief of 600–900 words. Sections: WHAT THIS PODCAST IS (a brief characterisation of the original format), KEY DIFFERENCES: PODCAST VS BROADCAST (a comparison table), ADAPTATION RECOMMENDATIONS (specific structural and editorial changes, by category), CONTENT AND COMPLIANCE FLAGS (any regulatory considerations), and A SAMPLE ADAPTED STRUCTURE (a skeleton structure for one adapted episode). Tone is practical and precise — this is an operational document, not a pitch document. It addresses the producer as a collaborator, not as a student.

## Quality Criteria
- [ ] The comparison table accurately represents the genuine differences between the two formats — not just an exhaustive list but the most consequential differences
- [ ] Each adaptation recommendation explains why the change is necessary, not just what to change
- [ ] The sample adapted structure maps to the broadcast duration specified
- [ ] Compliance flags are specific to the network type provided (public vs commercial obligations differ significantly)
- [ ] The document does not treat all podcast conventions as inferior — it explains which podcast qualities strengthen the broadcast version and should be preserved

## Example

### Input
Podcast: "What Your Doctor Didn't Tell You" — weekly health podcast, 55 minutes per episode. Format: host plus one guest (doctor, researcher, or patient). Informal, conversational. Begins with a 5-minute personal host monologue. Heavy use of listener questions (submitted in advance, 15–20 minutes of the episode). No ads. Language is casual, occasionally blunt about healthcare failures.
Target network: National public radio, daytime schedule
Proposed broadcast duration: 28 minutes
Slot: Weekday, 11am

### Output

---
PODCAST-TO-RADIO ADAPTATION BRIEF
Original: "What Your Doctor Didn't Tell You" (podcast)
Target: National public radio, weekday 11am
Broadcast duration: 28 minutes

---

WHAT THIS PODCAST IS

A weekly 55-minute health conversation format, host-led with a single guest. The show's editorial identity rests on accessibility and honesty about healthcare's limitations. The host's opening monologue functions as a personal editorial statement. Listener questions are an audience-engagement centrepiece. Tone is deliberately informal — close to a trusted conversation rather than an expert briefing.

---

KEY DIFFERENCES: PODCAST VS BROADCAST

| Dimension | Podcast Format | Broadcast Requirement |
|-----------|---------------|----------------------|
| Duration | 55 minutes | 28 minutes (including any ad break) |
| Structure | Organic, conversational flow | Hard in and out points; fixed-time segments |
| Entry | 5-minute host monologue | No listener patience for 5-minute cold open — max 60 secs before interview begins |
| Listener questions | 15–20 minutes (submitted) | Maximum 5–6 minutes, or replaced with a pre-selected single question per episode |
| Language | Casual, occasionally blunt | Calibrated for public radio — accessible but measured; some phrasings will need to be reviewed against Ofcom standards |
| Audience relationship | Opted-in, pre-engaged | Scheduled — listener may be tuning in mid-programme |
| Impartiality | Host-opinion-forward | Public radio requires editorial balance on contested health claims |
| Compliance | Self-regulated | Ofcom broadcast code applies |

---

ADAPTATION RECOMMENDATIONS

**1. Duration: restructure to 28 minutes**
The current format cannot be compressed — it needs to be redesigned. Allocate: 45 seconds (programme open), 18–20 minutes (main interview), 4–5 minutes (one or two listener questions, pre-selected and pre-screened), 2 minutes (guest summary and close), 1–2 minutes (presenter out-link and any trail).

**2. The host monologue: replace with a programme tease**
The personal monologue is a podcast convention that works because podcast listeners have already committed to 55 minutes. At 11am on a public radio network, listeners have not made that commitment. Replace the monologue with a 30–45 second tease that tells the audience who the guest is and what single question the episode will answer. Preserve the host's voice and authority — but deliver it in 30 seconds, not five minutes.

**3. Listener questions: keep one, replace the rest**
The listener question segment is the podcast's most distinctive audience-engagement feature. For broadcast, retain one question — the most broadly applicable — and integrate it at approximately 20 minutes into the episode. The question should be pre-screened and read by the host, not replayed as audio from a listener message (audio quality of submitted questions is rarely broadcast-standard).

**4. Language and tone calibration**
The podcast's casual bluntness is a genuine editorial quality — it is not "unprofessional," it is trust-building. Preserve it where it does not conflict with broadcast standards. Specific watch points: claims about healthcare failings must be attributed, balanced, or framed as personal experience rather than systemic fact where they are contested. Language describing medical treatments should not constitute health advice without appropriate caveats.

**5. Impartiality**
If the host takes a clear editorial position on a contested health topic — e.g. "conventional medicine has failed on this" — the broadcast version must either present a counterpoint or frame the claim as opinion. This is not about softening the editorial voice; it is about ensuring the programme meets Ofcom's due impartiality requirements for health-related content.

---

CONTENT AND COMPLIANCE FLAGS

- Health content on public radio falls under Ofcom Section 5 (due accuracy and impartiality) — medical advice, contested treatment claims, and patient testimony all require careful editorial review before broadcast
- The podcast's blunt characterisations of healthcare failures may require attribution to specific sources or qualification as opinion
- Listener submissions used on air (even read by the host) should be cleared for broadcast use — standard broadcast consent applies
- Any mention of specific medical products, branded treatments, or named practitioners should be reviewed against Ofcom advertising separation rules

---

SAMPLE ADAPTED STRUCTURE (28 minutes)

| ELEMENT | DURATION | NOTES |
|---------|----------|-------|
| Programme open + guest tease | 0:45 | Replace monologue with a punchy tease |
| Main interview — section 1 | 10:00 | Establish the topic and the guest's expertise |
| Main interview — section 2 | 8:00 | Develop the key argument; host pushes back where appropriate |
| Listener question | 4:00 | Single pre-selected question; read by host, answered by guest |
| Summary and guest close | 2:00 | Guest states the one thing they want listeners to take away |
| Presenter out-link and trail | 1:15 | Back anno; trail for next episode |
| **TOTAL** | **26:00** | 2 minutes flex built in |

---

## Known Limitations
- This brief assumes UK Ofcom regulation; US (FCC), Australian (ACMA), or other regulatory frameworks differ — flag the target territory if rules need adjusting
- The adaptation recommendations are structural; the actual re-editing of audio, re-recording of sections, and final timing is production work that cannot be completed by this skill
- Some podcast formats lose their essential quality in broadcast adaptation — if the podcast's core value is its length or its sprawling conversational freedom, a 28-minute broadcast version may not be a satisfying product; the skill cannot tell you whether the adaptation is commercially wise, only how to do it
- Presenter-talent dynamics change significantly between a podcast (where the host has full editorial control) and a broadcast programme (where editorial oversight is external); this adjustment is not covered by a format document alone

## Related Skills
- [pitch-to-broadcaster](./pitch-to-broadcaster.md)
- [programme-brief-writer](../production/programme-brief-writer.md)
- [running-order-builder](../production/running-order-builder.md)

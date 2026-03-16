---
name: dubbing-script-adapter
status: stable
category: tv-documentary
subcategory: localization
version: 1.0
eval_score: 4.5
tags: [documentary, localization, dubbing, lip-sync, narration]
---

# Dubbing Script Adapter

## What This Skill Does
Rewrites a documentary narration script so that translated dialogue or narration fits lip-sync timing constraints and sounds natural when spoken aloud in the target language.

## When To Use This Skill
- You have a finished English narration script and need a version adapted for dubbing into another language
- A translated script has been delivered and the syllable count or rhythm does not match the original recording timings
- A broadcast partner in another country requires a version that passes their dubbing specification (isochrony, lip-flap, mouth-open/mouth-closed compliance)
- You are adapting a self-narrated documentary where the presenter's mouth is visible on screen

## What You Need To Provide
**Required:**
- The original narration script (English) with timecodes or at minimum scene/paragraph labels
- The target language translation (machine or human) of the same script
- Target language name and any regional variant (e.g., European Spanish vs. Latin American Spanish)
- Approximate duration of each narration block in seconds (e.g., paste timecodes or note "this line = 4 seconds")

**Optional:**
- Name and gender of the dubbing voice actor(s), if known
- Whether the narrator is visible on screen (talking-head or off-screen VO)
- Any hard vocabulary the client insists must be preserved verbatim
- Broadcast delivery standard (e.g., "EBU R 128 compliant, no faster than 17 syllables/second")

## How Claude Approaches This
1. Parses each narration block and identifies the target duration from the timecodes or notes provided, then counts the syllable density of the original English line
2. Analyzes the translated text for syllable count, stress patterns, and natural spoken rhythm in the target language — flagging any block that runs more than 10% over or under the available time
3. Rewrites over-long translated blocks by finding synonym contractions, syntactic restructuring, or permitted ellipsis that preserves meaning while hitting the timing window; rewrites under-long blocks by adding natural connective tissue (articles, demonstratives, transitional phrases) where the target language allows it
4. Marks any block where semantic compromise was unavoidable with a bracketed note: `[TIMING NOTE: shortened — confirm with client]`
5. Delivers the adapted script in a two-column format: original translation on the left, adapted dubbing version on the right, with duration target and estimated syllable count for each row

## Output Format
- Two-column table per scene/segment: left column = source translation, right column = adapted dubbing line
- Each row includes: timecode label, duration target (seconds), estimated syllable count of adapted line
- Flagged lines marked `[TIMING NOTE]` with a brief explanation
- Prose summary at the end: number of lines adapted, number flagged, any systemic issue the dubbing editor should know about
- Tone of adapted lines: neutral, authoritative, matching the register of the original narration
- Language: target language throughout, with English only in column headers and notes

## Quality Criteria
- [ ] Every adapted line falls within ±10% of the stated duration target in syllable count
- [ ] No adapted line changes the factual meaning of the original narration
- [ ] Lines visible on screen (if noted) avoid hard plosives at mouth-closed moments
- [ ] The adapted text reads naturally when spoken aloud — no awkward inversions created purely for syllable trimming
- [ ] All timing flags include a specific reason, not a generic warning

## Example

### Input
**Target language:** European Spanish
**Narrator:** Off-screen voice-over (narrator not visible)
**Script excerpt:**

| Label | Timecode | Duration | Original English | Human Translation (ES) |
|-------|----------|----------|-----------------|------------------------|
| NR_01 | 00:02:14 | 5.5 sec | "The collapse of the fishing industry left an entire generation without a future — and the town has never fully recovered." | "El colapso de la industria pesquera dejó a toda una generación sin futuro — y el pueblo nunca se ha recuperado del todo." |
| NR_02 | 00:02:20 | 3.0 sec | "By 1987, the last cannery had closed its doors." | "Para 1987, la última conservera había cerrado sus puertas para siempre." |
| NR_03 | 00:02:24 | 6.0 sec | "What remained was a coastline of empty warehouses, rusting equipment, and the particular silence of a place that remembers prosperity." | "Lo que quedó fue una línea costera de almacenes vacíos, equipos oxidados, y ese silencio particular de un lugar que recuerda la prosperidad." |

### Output

**Adapted Dubbing Script — European Spanish**
*Voice: off-screen VO · Standard: ±10% syllable tolerance · Flagged lines: 1*

| Label | Duration | Source Translation (ES) | Adapted Dubbing Line (ES) | Est. Syllables | Note |
|-------|----------|------------------------|--------------------------|----------------|------|
| NR_01 | 5.5 sec | El colapso de la industria pesquera dejó a toda una generación sin futuro — y el pueblo nunca se ha recuperado del todo. | El colapso pesquero dejó a toda una generación sin futuro — y el pueblo jamás se recuperó del todo. | 28 | Contraction: "industria pesquera" → "pesquero"; "nunca se ha recuperado" → "jamás se recuperó". Meaning preserved. |
| NR_02 | 3.0 sec | Para 1987, la última conservera había cerrado sus puertas para siempre. | En 1987, la última conservera cerró sus puertas. | 15 | [TIMING NOTE: "para siempre" removed — original English has no equivalent phrase; confirm with client] |
| NR_03 | 6.0 sec | Lo que quedó fue una línea costera de almacenes vacíos, equipos oxidados, y ese silencio particular de un lugar que recuerda la prosperidad. | Lo que quedó: almacenes vacíos, maquinaria oxidada, y el silencio particular de un lugar que recuerda la prosperidad. | 32 | Restructured opening for rhythm; "equipos" → "maquinaria" for register consistency. |

**Summary:** 3 lines processed · 1 flagged (NR_02) · No semantic loss in NR_01 or NR_03 · Recommend dubbing editor review NR_02 addition "para siempre" with client before final record.

## Known Limitations
- Claude cannot verify actual spoken duration — syllable counts are estimates and must be confirmed with a stopwatch reading by the dubbing editor or voice actor before final record
- Highly technical or proper-noun-dense scripts (scientific documentaries, historical films with many place names) may require more flags than average because terminology cannot be contracted without client approval
- For languages with radically different morphological density than English (e.g., German compound nouns, agglutinative languages such as Finnish or Turkish), timing overruns may require content cuts that go beyond Claude's authority to decide — flag all such cases for the producer
- This skill does not handle on-screen lip-flap (visible mouth movement) adaptation for interview subjects; it is designed for narrator VO and off-screen dialogue only

## Related Skills
- [festival-synopsis-writer](../localization/festival-synopsis-writer.md)
- [narrator-voice-adapter](../scripting/narrator-voice-adapter.md)
- [scene-breakdown-writer](../scripting/scene-breakdown-writer.md)

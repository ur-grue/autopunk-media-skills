---
name: asset-description-writer
status: beta
category: archive-legal
subcategory: publishing
version: 1.0
eval_score: null
tags: [archive, asset management, description, media library, cataloguing]
---

# Asset Description Writer

## What This Skill Does
Writes a clear, searchable content description for a media asset — video clip, audio file, photograph, or document — suitable for entry into an asset management system or media library.

## When To Use This Skill
- You are archiving raw or finished media and need a consistent description for each asset
- Your team uses a shared media library and descriptions need to be specific enough for colleagues to find assets by searching
- You are batch-processing assets after a shoot, edit, or publication and need descriptions written to a house style
- A new archive or media management system is being set up and you need to populate it with legacy assets

## What You Need To Provide
**Required:**
- Asset type (video clip, still photograph, audio recording, document, graphic)
- A plain description of what the asset contains — who or what appears, what is happening, where and when it was captured or created

**Optional:**
- Duration (for video and audio)
- Technical format (e.g. 4K ProRes, MP3 192kbps, TIFF 300dpi)
- Usage context (e.g. "shot for a documentary on urban transport", "used in print edition cover")
- Rights or restrictions (e.g. "licensed for editorial use only", "talent consent on file")
- House style notes (e.g. "descriptions must be under 100 words", "always include a location field")

## How Claude Approaches This
1. Reads the asset details you provide and identifies the key facts a colleague would need to locate and evaluate this asset: subject, action or content, location, date or period, and any notable visual or audio qualities.
2. Drafts a description in plain, professional language — specific enough to distinguish this asset from similar ones, concise enough to read at a glance.
3. Structures the output so the description can be copied directly into a description or summary field, with any optional technical or rights details presented as separate lines ready to paste into corresponding fields.

## Output Format
A single prose paragraph of 40–80 words for the main description, written in present tense, third person, active voice. Followed by a short block of supplementary field values (format, duration, rights) if that information was provided. No headings inside the description paragraph itself. No bullet points in the main description — this is a text field entry, not a document.

## Quality Criteria
- [ ] The description identifies the subject (person, place, object, or event) without ambiguity
- [ ] A colleague unfamiliar with the asset could assess its usefulness from the description alone
- [ ] No vague filler phrases ("interesting footage of", "great shot showing")
- [ ] Tense, person, and voice are consistent throughout
- [ ] If restrictions or rights are mentioned, they are stated as facts, not opinions ("Licensed for editorial use only" not "probably fine to use")
- [ ] Description fits in a single text field — no markdown formatting inside the description paragraph

## Example

### Input
Asset type: Video clip
Content: Exterior wide shot of a busy fish market at dawn — traders unloading crates from vans, stalls being set up, first customers arriving. Shot handheld.
Duration: 2 minutes 14 seconds
Format: 4K H.264, MOV
Location: Coastal port district, unnamed city
Date: March 2024
Usage context: Shot for a documentary on small-scale fishing economies
Rights: All rights held by production company; no talent releases required (crowd scene, no identifiable individuals)

### Output
**Description:**
Wide handheld shot of an outdoor fish market at dawn. Traders unload crates from vans along the waterfront while vendors arrange stalls and early customers begin to arrive. The scene captures the organised activity of market opening in a coastal port district, March 2024. Shot for a documentary on small-scale fishing economies.

**Supplementary fields:**
- Duration: 2:14
- Format: 4K H.264 / MOV
- Rights: All rights held. No talent releases required (non-identifiable crowd).
- Usage: Documentary — small-scale fishing economies

## Known Limitations
- Claude cannot verify technical metadata (timecode, resolution, file size) — always cross-check these against the actual asset or your asset management system's auto-ingest data.
- Descriptions are written from the information you provide. If your initial description of the asset is vague, the output will be vague. The quality of the input directly determines the quality of the archive entry.
- This skill does not generate keyword tags or category fields — use the `cms-metadata-tagger` skill for that purpose.

## Related Skills
- [cms-metadata-tagger](../archive-legal/cms-metadata-tagger.md)
- [cms-fields-writer](../archive-legal/cms-fields-writer.md)

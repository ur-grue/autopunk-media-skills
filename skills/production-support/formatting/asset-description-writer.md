---
name: asset-description-writer
status: stable
category: production-support
subcategory: formatting
version: 1.0
eval_score: 4.39
tags: [production-support, DAM, metadata, assets, archiving, search]
---

# Asset Description Writer

## What This Skill Does
Writes structured, searchable descriptions for digital assets — photos, videos, audio files, graphics, and documents — enabling accurate retrieval from a digital asset management (DAM) system or media archive.

## When To Use This Skill
- You are ingesting a batch of new assets into a DAM system and need consistent, searchable descriptions for each
- You need to improve descriptions on existing assets that are poorly tagged or described, making them harder to find
- You are building a media archive and want every asset to follow a standardized description format from the start
- A production team needs to catalog footage, audio, or images so that editors and researchers can locate specific assets quickly

## What You Need To Provide
**Required:** A description of the asset (what it shows, contains, or represents — if you cannot share the file, describe it in detail); the asset type (photo, video clip, audio file, graphic, document); the project or collection it belongs to.

**Optional:** The DAM system in use (Adobe Experience Manager, Brandfolder, Bynder, Canto, custom — affects field naming); the organization's metadata schema or field list; keywords or tags the asset should be associated with; technical specifications (resolution, duration, format, color space); licensing or usage rights information; date and location of creation.

## How Claude Approaches This
1. **Identifies the asset's content and purpose.** Determines what the asset depicts or contains, who or what is featured, and the context in which it was created. For visual assets, describes the scene, composition, and notable elements. For audio, describes the content type (interview, ambient sound, music, voiceover) and key identifiers.

2. **Writes a structured description optimized for search.** The description leads with the most distinguishing feature of the asset — the element most likely to be searched for. Uses concrete, specific language (not "a nice landscape" but "aerial view of terraced rice paddies at sunset, central highlands"). Avoids subjective adjectives that do not aid search.

3. **Generates keywords and tags for faceted search.** Produces two layers: broad category tags (e.g., "landscape," "interview," "product shot") and specific content tags (e.g., "solar panels," "rooftop installation," "worker in hard hat"). Tags are formatted for the specified DAM system or in a generic comma-separated format.

4. **Includes technical and rights metadata when provided.** Fills in fields for format, resolution, duration, color space, photographer/creator credit, licensing terms, and usage restrictions. If any of this information is not provided, those fields are marked "Not provided — confirm before use."

5. **Formats output to match the target DAM schema.** If the user specifies a DAM system or provides a field list, output is structured to match that schema exactly. If no schema is specified, uses a generic professional standard that can be adapted to any system.

## Output Format
A structured metadata record with clearly labeled fields. Minimum fields: Asset Title, Description (2–3 sentences), Keywords/Tags (8–15), Asset Type, Collection/Project, Creator Credit, Date, and Rights Status. Additional fields included when the user provides the information or specifies a DAM schema. Each field on its own line. Descriptions are written in the present tense, active voice, factual register — no marketing language.

```
**Asset Title:** [Descriptive title]
**Asset Type:** [Photo / Video / Audio / Graphic / Document]
**Description:** [2-3 sentence factual description]
**Keywords:** [keyword1, keyword2, keyword3, ...]
**Collection:** [Project or collection name]
**Creator:** [Name or "Not provided"]
**Date Created:** [Date or "Not provided"]
**Location:** [Location or "Not provided"]
**Technical Specs:** [Format, resolution, duration, etc. or "Not provided"]
**Rights:** [License type and restrictions or "Not provided — confirm before use"]
```

## Quality Criteria
- [ ] Description leads with the most searchable and distinguishing feature of the asset
- [ ] Language is concrete and specific — no vague or subjective terms that do not aid retrieval
- [ ] Keywords cover both broad category terms and specific content details
- [ ] All user-provided metadata fields are populated; missing information is explicitly marked
- [ ] Description is written in present tense, factual register — no promotional language
- [ ] Output format matches the specified DAM schema or follows a clean generic standard
- [ ] Rights status is included and flagged if not provided by the user

## Example

### Input
**Asset type:** Video clip
**Project:** "Urban Renewal" documentary series (fictional)
**Description of asset:** A 45-second drone shot flying over a derelict industrial complex at dawn. The building is a large brick factory with a collapsed roof section. Surrounding the factory are overgrown lots, a chain-link fence, and a single-lane access road. In the background, the skyline of a mid-sized city is visible. Shot in 4K, LOG color profile, on a DJI Inspire 3.
**Creator:** Camera operator: Tomasz Kowalski
**Date:** February 14, 2026
**Location:** Eastfield Industrial Zone, outskirts of unnamed city (fictional)
**Rights:** Production owns all rights. Not cleared for stock licensing.

### Output

**Asset Title:** Drone aerial — derelict brick factory at dawn, industrial zone with city skyline
**Asset Type:** Video clip
**Description:** Aerial drone shot flying over a large derelict brick factory with a partially collapsed roof, surrounded by overgrown lots and a chain-link perimeter fence. A single-lane access road leads away from the complex. The skyline of a mid-sized city is visible in the background. Dawn light, warm tones, gentle forward camera movement.
**Keywords:** aerial, drone shot, factory, derelict building, industrial zone, dawn, skyline, urban decay, brick building, collapsed roof, overgrown, chain-link fence, establishing shot, documentary b-roll, urban renewal
**Collection:** Urban Renewal documentary series
**Creator:** Tomasz Kowalski (camera operator)
**Date Created:** February 14, 2026
**Location:** Eastfield Industrial Zone (exterior)
**Technical Specs:** 4K resolution, LOG color profile, DJI Inspire 3, 45 seconds duration
**Rights:** Production owns all rights. Not cleared for stock licensing. Do not distribute externally without production approval.

---

**Notes**
- Title written as a search-optimized descriptor rather than a creative title — prioritizes the elements a researcher or editor would search for (shot type, subject, time of day, setting).
- "Documentary b-roll" and "establishing shot" included as keywords because editors searching for this type of footage often filter by shot function, not just subject matter.
- Rights status includes an explicit usage restriction note to prevent accidental external distribution.

## Known Limitations
- Claude cannot view, listen to, or analyze actual media files. All descriptions are based on the user's textual description of the asset. For visual assets, providing specific details (composition, lighting, prominent objects, text visible in frame) produces significantly better descriptions than vague summaries.
- Keyword suggestions are based on common DAM search patterns but cannot account for an organization's specific internal search behavior. Review and adjust keywords based on how your team actually searches for assets.
- This skill does not generate IPTC, EXIF, or XMP metadata that can be embedded directly into file headers. The output is designed for manual entry into a DAM system's metadata fields or for use in a bulk import spreadsheet.

## Related Skills
- [cms-metadata-writer](./cms-metadata-writer.md) — write web publishing metadata (SEO, social sharing fields)
- [fact-sheet-compiler](../reference/fact-sheet-compiler.md) — compile reference material about a topic for editorial use
- [press-kit-generator](../../tv-documentary/post-production/press-kit-generator.md) — generate press kit materials that reference archived assets

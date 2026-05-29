---
name: source-verification
description: "Walks through a structured verification of a source's claims, images, video, or documents using the SIFT framework, reverse-image search, EXIF metadata inspection, deepfake indicators, and C2PA Content Credentials — then produces a verification-trail template the reporter can file with the story."
status: stable
category: magazine-journalism
subcategory: investigation
version: 1.0
eval_score: 4.73
tags: [journalism, verification, SIFT, OSINT, fact-checking, deepfake, EXIF, C2PA]
---
# Source verification

## What this skill does
Walks through a structured verification of a source's claims, images, video, or documents using the SIFT framework, reverse-image search, EXIF metadata inspection, deepfake indicators, and C2PA Content Credentials — then produces a verification-trail template the reporter can file with the story.

## When to use this skill
- A source has sent you a photo, video, or document and you need to confirm it is what they say it is before publishing
- You are fact-checking a claim that rests on visual or documentary evidence
- You want to verify the origin, date, or location of user-generated content found on social media
- You need a paper trail showing your newsroom's verification steps for legal or editorial review

## What you need to provide
**Required:** The claim or material to verify (describe the image, video, document, or assertion); the source's stated provenance (who sent it, when, what they say it shows)
**Optional:** The URL where the material was found; any metadata you have already extracted; the publication deadline (affects how deep the verification can go); whether the material will be used in a legal or regulatory context (triggers the evidence-preservation section)

## How the Assistant Approaches This
1. **Stop.** Restates the claim and the source's provenance in neutral language. Identifies what specifically needs to be true for the material to support the claim.

2. **Investigate the source.** Checks who is making the claim. Prior publication history, organizational affiliation, stated expertise, any known track record of accuracy or fabrication. Flags if the source is anonymous or if provenance is secondhand.

3. **Find the original.** Guides the reporter through reverse-image search (Google Images, TinEye, Yandex), video keyframe extraction and search, or document-hash comparison to locate the earliest known version of the material. Notes whether the version the source provided matches the original or has been cropped, compressed, re-encoded, or altered.

4. **Trace the claim.** Maps the claim's spread: where else has it appeared, who published it first, how did it reach the source? Flags circular sourcing (multiple outlets citing each other with no independent origin).

5. **Inspect metadata.** Walks through EXIF data extraction for images (camera model, GPS coordinates, timestamp, software edits), video container metadata (encoding date, device, duration vs. file size anomalies), and document metadata (author field, revision count, creation vs. modification dates). Flags inconsistencies between metadata and the source's stated provenance.

6. **Check for manipulation.** Runs through deepfake and tampering indicators: for images — clone-stamp artefacts, inconsistent lighting or shadows, edge blending around spliced elements, error-level analysis guidance; for video — lip-sync mismatches, unnatural blinking patterns, temporal artefacts at cut points, audio-visual desync; for documents — font inconsistencies, misaligned formatting, metadata suggesting different authoring tools than claimed. Notes C2PA Content Credentials if present — checks the credential chain, signing authority, and whether the manifest has been stripped or modified.

7. **Produce the verification trail.** Fills in a structured template documenting every step taken, what was found, what remains unverified, and the reporter's confidence level. This template becomes the editorial record.

## Output format
Two parts. First: a narrative verification report (400–800 words) walking through findings in the order above, written in direct factual language. Second: a filled verification-trail template (structured form) the reporter can attach to the story file. The template uses the following fields:

```
VERIFICATION TRAIL
Material type: [image / video / document / claim]
Source: [who provided it, when, through what channel]
Claimed provenance: [what the source says it shows]
---
SIFT steps completed:
  Stop: [claim restated, what must be true]
  Investigate source: [findings]
  Find original: [search methods used, earliest version found, match status]
  Trace claim: [spread map, original publication, circular sourcing flags]
Metadata inspection:
  Method: [EXIF / container metadata / document properties]
  Key findings: [timestamps, GPS, device, edit history]
  Inconsistencies: [list, or "none detected"]
Manipulation check:
  Deepfake indicators: [findings, or "none detected"]
  Tampering indicators: [findings, or "none detected"]
  C2PA credentials: [present/absent, chain status, signing authority]
Unverified elements: [what could not be confirmed and why]
Confidence level: [HIGH / MEDIUM / LOW — with one-line rationale]
Verified by: [reporter name]
Date: [verification date]
```

## Quality criteria
- [ ] Every SIFT step is addressed — no step skipped without explanation
- [ ] Reverse-image search guidance names specific tools and explains what to look for in results
- [ ] EXIF and metadata guidance is specific enough for a reporter who has never inspected metadata before
- [ ] Deepfake and tampering indicators are concrete and observable, not abstract warnings
- [ ] C2PA section explains what Content Credentials are, not just whether they exist
- [ ] Verification trail template is filled in, not left as a blank form
- [ ] Confidence level is justified by specific findings, not hedged generically
- [ ] Output is free of generic AI-template phrasing — no "delve into," "navigate the complexities of," Latinate filler verbs, restate-the-question intros, summary-of-the-summary closes, or em-dash overuse

## Example

### Input
Material: A photograph showing what appears to be a chemical spill along a riverbank, with dead fish visible on exposed mud. Source says the image was taken yesterday morning at approximately 7:15 a.m. along the Millford River, downstream from an industrial park. Source is a local angler who contacted the newsroom by email, attaching the image and a brief statement. No prior contact with this source. Publication deadline: tomorrow evening edition.

### Output

**Verification report**

The claim: a photograph shows a chemical spill on the Millford River downstream from an industrial park, taken yesterday morning around 7:15 a.m. by a local angler. If true, this is evidence of an unreported pollution event at a specific, identifiable location.

**Source check.** The sender has no prior relationship with the newsroom. A name search returns a local fishing-club membership list from three years ago — consistent with the angler claim but not proof. No social media accounts found under that name in a quick search. The email address uses a consumer provider, not a burner domain. Nothing flags this source as unreliable, but nothing independently confirms their identity either. Treat as single-source until corroborated.

**Finding the original.** A reverse-image search on Google Images and TinEye returned no matches. Yandex returned no matches. This is consistent with a newly taken photograph rather than a recycled image. Search terms "Millford River spill" and "Millford River dead fish" returned no news coverage, social media posts, or forum threads as of this morning. The image does not appear to be in circulation.

**Tracing the claim.** No other outlet or social account has published this image or a similar claim. The source's email is the only known origin point. There is no circular sourcing to flag. The regional environmental agency's incident log (publicly available online) shows no reported spill for the Millford River in the past seven days — which could mean the event is unreported, or that it did not happen.

**Metadata inspection.** EXIF data extraction (using ExifTool or an online viewer such as Jeffrey's EXIF Viewer) should yield:

- **Camera model and lens:** Check whether the device is consistent with what a casual angler would carry (phone camera vs. professional DSLR). The source did not mention photography equipment.
- **Timestamp:** Look for the DateTimeOriginal field. If it reads yesterday's date at approximately 07:15, that supports the claimed timeline. If it reads a different date, or if the field is absent (common with screenshots or images saved from messaging apps), flag that.
- **GPS coordinates:** If present, compare to the Millford River's course downstream from the industrial park. A mismatch of more than a few hundred metres is significant. If GPS data is absent, the location cannot be confirmed through metadata alone.
- **Software field:** If this field shows editing software (Photoshop, Snapseed, GIMP), the image was processed after capture. Cropping or exposure adjustment is normal; content-aware fill or layer work warrants follow-up.

For this image: EXIF shows an iPhone 14, DateTimeOriginal yesterday at 07:12, GPS coordinates placing the camera 340 metres downstream from the Acme Chemical complex on the Millford River. No software editing field. All metadata is consistent with the source's account.

**Manipulation check.** Visual inspection: lighting and shadows are consistent across the frame. No visible clone-stamp repetition in the mud or water. The dead fish show natural variation in size and position — not copy-pasted. Error-level analysis (via FotoForensics or similar) shows uniform compression across the image with no regions of anomalous quality, consistent with a single-capture JPEG. No C2PA Content Credentials are embedded. This is expected — consumer iPhones do not currently write C2PA manifests by default.

**What remains unverified.** The source's identity is unconfirmed. The substance in the water has not been identified — the brown discolouration could be a chemical discharge, but it could also be sediment runoff after heavy rain. The cause of the fish deaths is not established by the photograph alone.

---

```
VERIFICATION TRAIL
Material type: image
Source: local angler, email to newsroom, no prior contact
Claimed provenance: chemical spill, Millford River, yesterday ~07:15
---
SIFT steps completed:
  Stop: photo must show Millford River, yesterday morning, with visible pollution
  Investigate source: name consistent with local fishing club; no red flags, no independent confirmation
  Find original: no matches on Google Images, TinEye, Yandex — image not in prior circulation
  Trace claim: no other outlet or social account has published this; no agency report filed
Metadata inspection:
  Method: EXIF extraction (ExifTool)
  Key findings: iPhone 14, 07:12 yesterday, GPS 340m downstream of Acme Chemical complex
  Inconsistencies: none detected
Manipulation check:
  Deepfake indicators: not applicable (still image)
  Tampering indicators: none — consistent lighting, no clone artefacts, uniform ELA
  C2PA credentials: absent (expected for consumer iPhone)
Unverified elements: source identity; substance identification; cause of fish deaths
Confidence level: MEDIUM — metadata and image analysis support the location and timing claim; substance and source identity unconfirmed
Verified by: [reporter name]
Date: [today's date]
```

## Known limitations
- The assistant cannot run reverse-image searches, extract EXIF data, or perform error-level analysis. This skill tells the reporter what tools to use and what to look for in the results — the reporter must run those tools themselves.
- Deepfake detection guidance covers observable indicators a reporter can check visually. It does not replace forensic analysis software for sophisticated manipulations.
- C2PA Content Credentials are still rare in consumer media. The absence of credentials is not evidence of manipulation — it is the current default for most devices and platforms.
- This skill does not verify the source's identity. It verifies whether the material is consistent with the source's claims about it. Identity verification is a separate reporting step.
- Metadata can be stripped or forged. EXIF data that matches the claim is supporting evidence, not proof.

## Related skills
- [document-analysis-summary](../document-analysis-summary/SKILL.md)
- [investigation-timeline-builder](../investigation-timeline-builder/SKILL.md)
- [social-media-intelligence](../social-media-intelligence/SKILL.md)

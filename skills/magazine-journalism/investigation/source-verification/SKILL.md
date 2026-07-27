---
name: source-verification
description: "Walks through structured verification of sources, claims, images, video, and documents across five verification modes — visual media, documents, anonymous sources, expert credentials, and social media content — using the SIFT framework, forensic metadata inspection, deepfake indicators, C2PA Content Credentials, and open-source intelligence techniques. Produces a verification-trail template the reporter can file with the story."
status: stable
category: magazine-journalism
subcategory: investigation
version: 2.0
eval_score: 4.73
tags: [journalism, verification, SIFT, OSINT, fact-checking, deepfake, EXIF, C2PA, anonymous-sources, document-forensics, expert-verification]
---
# Source Verification

## What This Skill Does
Walks through structured verification of sources, claims, images, video, and documents across five verification modes — then produces a verification-trail template the reporter can file with the story or submit to legal review.

## When To Use This Skill
- A source has sent you a photo, video, or document and you need to confirm it is what they say it is before publishing
- You are fact-checking a claim that rests on visual or documentary evidence
- You want to verify the origin, date, or location of user-generated content found on social media
- An anonymous source has provided information and you need to assess credibility without revealing their identity
- Someone is presented as an expert and you need to verify their credentials, affiliations, and track record before quoting them
- You received a document (memo, contract, letter, report) and need to determine whether it is authentic
- You need a paper trail showing your newsroom's verification steps for legal or editorial review

## What You Need To Provide

### For visual media verification (images, video)
**Required:** Description of the image or video; the source's stated provenance (who sent it, when, what they say it shows)
**Optional:** The file itself or a URL where it was found; any metadata already extracted; the publication deadline; whether the material will be used in a legal or regulatory context

### For document verification
**Required:** Description of the document (type, date, issuing body); the source's stated provenance; why you believe it may need verification (unsolicited, unexpected content, anonymous origin)
**Optional:** The document file; known reference documents from the same issuing body; any prior correspondence with the source

### For anonymous source verification
**Required:** The claim the source is making; what the source says about their access to the information (position, proximity, how they obtained it); any corroborating material they have provided
**Optional:** The channel through which the source made contact; any pattern of prior contact; whether the source has asked for specific protections (legal, physical safety)

### For expert source verification
**Required:** The person's name and stated credentials; the specific claim or opinion they are offering; the field in which they claim expertise
**Optional:** Their institutional affiliation; publications or media appearances; who recommended them as a source

### For social media content verification
**Required:** The post or content to verify (screenshot, URL, or description); the platform; the account that posted it; what the content claims to show or prove
**Optional:** The date the content first appeared; any replies, quote-posts, or threads that add context; whether the account has been suspended or the content removed since you found it

## How the Assistant Approaches This

The verification method depends on the mode. All five modes follow the SIFT framework (Stop, Investigate the source, Find the original, Trace the claim) as their backbone, then add mode-specific forensic steps.

---

### Mode 1: Visual Media Verification (Images and Video)

1. **Stop.** Restates the claim and the source's provenance in neutral language. Identifies what specifically must be true for the material to support the claim — location, date, subject, event.

2. **Investigate the source.** Checks who provided the material. Prior publication history, organizational affiliation, stated expertise, any known track record of accuracy or fabrication. Flags if the source is anonymous or if provenance is secondhand ("a friend sent me this").

3. **Find the original.** Guides the reporter through reverse-image search (Google Images, TinEye, Yandex) or video keyframe extraction and search to locate the earliest known version. Notes whether the source's version matches the original or has been cropped, compressed, re-encoded, or altered. For video, recommends extracting keyframes at 1-second intervals and running each through reverse-image search independently.

4. **Trace the claim.** Maps the claim's spread: where else has it appeared, who published it first, how did it reach the source? Flags circular sourcing — multiple outlets citing each other with no independent origin.

5. **Inspect metadata.** Walks through EXIF data extraction for images or container metadata for video (see Metadata Fields Reference below). Flags inconsistencies between metadata and stated provenance.

6. **Check for manipulation.** Runs through the Visual Manipulation Indicators checklist (see reference table below). Notes C2PA Content Credentials if present — checks the credential chain, signing authority, and whether the manifest has been stripped or modified.

7. **Assess geolocation.** If the material claims to show a specific location, guides the reporter through geolocation cross-checks: visible landmarks, signage (language, style), vegetation and terrain, sun angle relative to claimed time and latitude, shadow direction, weather conditions compared to historical weather data for the claimed date and location.

8. **Produce the verification trail.** Fills in the structured template documenting every step taken, what was found, what remains unverified, and the reporter's confidence level.

---

### Mode 2: Document Verification

1. **Stop.** Restates what the document purports to be, who provided it, and what the reporter plans to use it for. Identifies what must be true: the document was created by the stated author or institution, on or near the stated date, and has not been altered since creation.

2. **Investigate the source.** Determines how the document reached the reporter. Unsolicited documents from unknown sources carry higher risk than documents obtained through official channels. Checks whether the source has provided authentic documents before.

3. **Check document metadata.** Guides the reporter through extracting document properties:
   - **PDF files:** Author field, creation date, modification date, producing application (Adobe Acrobat, Microsoft Word, LaTeX, etc.), PDF version, whether the file has been linearized (web-optimized — unusual for internal memos)
   - **Word documents (.docx):** Author, last modified by, revision count, total editing time, company field, template name
   - **Scanned documents:** Resolution, scanner software, whether OCR has been applied, whether the scan is a scan of a photocopy (generational loss indicates the original may have passed through multiple hands)

4. **Compare against known exemplars.** If the document claims to come from a specific institution, compare against authentic documents from the same source:
   - **Letterhead:** Logo placement, resolution, colour values, font choices. Forged letterhead often uses slightly wrong proportions, outdated logos, or consumer-grade fonts in place of custom typefaces
   - **Formatting:** Margin widths, line spacing, paragraph indentation, page numbering style, header/footer content. Institutional documents follow house style — deviations suggest the document was created outside the institution
   - **Language and register:** Vocabulary, abbreviations, internal jargon, reference-number formats. Every institution has phrasing habits. A document that uses the wrong internal terminology for the claimed issuing office is suspect
   - **Signatures:** Compare ink density, pen pressure patterns, character spacing. Digital signatures should be verifiable through the issuing certificate authority

5. **Check internal consistency.** Look for:
   - Dates that fall on weekends or holidays (for documents that should have been created on business days)
   - Reference numbers that do not match the issuing body's known numbering scheme
   - Names or titles that were not in use at the claimed date (a person who held the title "Deputy Director" in 2024 may have been "Assistant Director" in 2022)
   - Legal citations, statutory references, or regulatory codes that did not exist at the claimed date

6. **Produce the verification trail.**

---

### Mode 3: Anonymous Source Verification

Anonymous source verification does not attempt to identify the source. It assesses whether the source's claims are credible, consistent, and independently corroborable — without requiring the source to reveal who they are.

1. **Stop.** Restates the claim the anonymous source is making. Identifies what must be true for the claim to hold, and what evidence — independent of the source — could confirm or refute it.

2. **Assess claimed access.** The source says they have access to the information. Evaluate whether the claimed position, role, or proximity is plausible:
   - Does the type of information match what someone in the claimed position would actually see?
   - Is the level of detail consistent with direct access (firsthand knowledge) or indirect access (heard it from someone, saw a summary)?
   - Does the source describe processes, systems, or internal procedures accurately? Someone who has actually worked inside an organization will reference specifics — file naming conventions, approval chains, internal software — that outsiders cannot easily fake

3. **Test internal consistency.** Ask the source the same question in different ways across multiple conversations. Fabricated accounts tend to drift in details: dates shift, numbers change, the sequence of events varies. Authentic accounts stay consistent on facts even when the phrasing changes. Note: consistent does not mean rehearsed. A source who repeats the same sentences verbatim may be reciting a script.

4. **Seek independent corroboration.** Identify at least one element of the claim that can be verified without the source:
   - Public records that would confirm the underlying event (filings, permits, contracts, court records)
   - Physical evidence (the building exists, the meeting happened, the document is filed where the source said it would be)
   - Other sources who can confirm elements of the claim independently (they do not need to confirm the source's identity — only that the event or condition described is real)
   - Circumstantial corroboration (the timing fits with known events, the claim explains something that was previously unexplained)

5. **Evaluate motivation.** Why is this source talking? Motivations do not disqualify a source, but they shape how you weight the information:
   - **Whistleblower motivation** (outrage at wrongdoing): often credible on facts, may overstate severity
   - **Grievance motivation** (fired, passed over, personal conflict): often accurate on specifics they witnessed, may omit context that casts a more balanced picture
   - **Strategic motivation** (wants to influence a decision, damage a rival, shape public opinion): facts may be accurate but selectively presented
   - **Financial motivation** (selling information): verify independently before any payment discussion; financially motivated sources are not inherently less reliable, but the incentive to fabricate is higher

6. **Assess risk to the source.** If publishing could expose the source to retaliation, determine:
   - How many people would have access to this information? (If only three people knew, publishing any detail may identify the source by elimination)
   - Does the source understand the risk? Have they given informed consent?
   - Can the story be told without details that narrow the pool of possible sources?

7. **Produce the verification trail.** The trail for anonymous sources must be stored securely and separately from the story file. It should document the verification steps taken but not contain any information that could identify the source if the trail is subpoenaed or leaked.

---

### Mode 4: Expert Source Verification

1. **Stop.** Restates what the expert is claiming and in what capacity. Identifies the specific field of expertise required and the level of authority the story will attribute to this person.

2. **Verify credentials.** Check each claimed credential independently:
   - **Academic degrees:** Confirm the degree, institution, and year through the institution's alumni directory or registrar (not the expert's own CV alone). Diploma mills are common — check the institution against accreditation databases
   - **Professional licenses:** Verify through the relevant licensing board (state medical boards, bar associations, engineering boards). A license can be current, expired, suspended, or revoked — each status matters
   - **Institutional affiliation:** Confirm current employment or affiliation through the institution's directory, not just the expert's LinkedIn profile. People who left an institution years ago sometimes still list it
   - **Job title:** Confirm through the institution. "Senior Research Fellow" and "Adjunct Lecturer" carry different weight. Some people inflate titles

3. **Assess publication record.** Search for the expert's published work in the claimed field:
   - Peer-reviewed papers in indexed journals (Google Scholar, PubMed, Scopus) — not self-published books or blog posts
   - Conference presentations at recognized professional conferences
   - Citations by other researchers in the field (a high paper count with near-zero citations suggests the work has not been adopted by peers)
   - Whether the expert publishes in the specific subfield relevant to the story, or in a related but different area. A cardiologist is not an epidemiologist. A constitutional law professor is not a criminal defense expert

4. **Check for conflicts of interest.**
   - Financial ties: consulting fees, board memberships, patent holdings, industry funding. Check disclosure statements on recent papers, financial disclosure databases, and corporate filings
   - Advocacy positions: does the expert serve on the board of an advocacy organization related to the topic? This does not disqualify them but must be disclosed
   - Litigation history: has the expert served as a paid expert witness? In what capacity? Expert witnesses are not neutral — they were hired to support a position. Check court records (PACER for federal cases)
   - Prior public statements: has the expert publicly committed to a position on this topic before? Someone who has staked their reputation on a particular conclusion may not offer a balanced assessment

5. **Cross-check the specific claim.** Does the expert's opinion on this specific topic align with the established consensus in their field?
   - If yes, the expert is functioning as a representative voice. Standard sourcing applies
   - If the expert is offering a contrarian view, that is not automatically disqualifying — but the story must note it as a minority position and explain the basis for the mainstream view
   - If the expert is speaking outside their specific field (a physicist commenting on biology, an economist commenting on public health), flag this explicitly. Cross-disciplinary commentary is not expertise

6. **Produce the verification trail.**

---

### Mode 5: Social Media Content Verification

1. **Stop.** Restates what the social media content claims to show and what the reporter wants to use it for. Identifies the platform, the account, and the date of posting.

2. **Verify the account.** Assess whether the account is what it claims to be:
   - **Account age:** When was it created? Accounts created days before a major event and posting "eyewitness" content are suspect
   - **Posting history:** Does the account have a consistent posting pattern over months or years, or was it dormant until this one post? Check for gaps that suggest a purchased or hijacked account
   - **Follower/following ratio:** Authentic personal accounts typically have a follower count roughly proportional to their social circle. An account with 12 followers that suddenly posts viral content is not necessarily fake — but it warrants closer scrutiny
   - **Bio and self-description:** Does it match the account's posting history? An account claiming to be a nurse in Portland whose prior posts are all about cryptocurrency trading in Lagos raises questions
   - **Verification status:** Platform verification badges confirm identity, not credibility. A verified account can still post false information

3. **Archive the content.** Before any further verification, archive the post and surrounding context:
   - Screenshot the post with visible timestamp, account name, and engagement metrics
   - Use the Wayback Machine (web.archive.org/save) or Archive.today to create a permanent copy if the content is on a public web page
   - Save the URL, even if the content may be deleted — cached versions and archival services may retain it
   - If the content includes a video, download the original file before the platform compresses or removes it

4. **Check for prior circulation.** Run reverse-image search on images and keyframes. Search the text of the post (in quotes) across platforms. Check whether the same content appeared elsewhere earlier — recycled content from old events is one of the most common forms of misinformation.

5. **Verify claimed location and time.**
   - Cross-reference visible details (weather, light conditions, signage, vehicles, clothing) with the claimed location and date
   - Check weather archives for the claimed location and date — if the post shows sunshine but historical records show rain, investigate
   - Look for platform-specific metadata: some platforms embed location data in the original upload (often stripped from screenshots or re-uploads)

6. **Assess the context around the post.** Who is amplifying it? Early replies and quote-posts often reveal whether the content is being shared organically or pushed by coordinated accounts. Signs of coordination:
   - Multiple accounts posting the same content within minutes of each other
   - Accounts using identical or near-identical wording
   - Amplification by accounts with no prior interest in the topic
   - Sudden spikes in engagement that do not match the account's normal reach

7. **Produce the verification trail.**

---

## Output Format

### For all modes
Two parts. First: a narrative verification report (400–1,000 words depending on complexity) walking through findings in the order described above, written in direct factual language. Second: a filled verification-trail template (structured form) the reporter can attach to the story file.

The verification trail template adjusts its fields to the mode used:

```
VERIFICATION TRAIL
Mode: [visual media / document / anonymous source / expert source / social media content]
Material type: [image / video / document / claim / social media post]
Source: [who provided it, when, through what channel]
Claimed provenance: [what the source says it shows or means]
---
SIFT steps completed:
  Stop: [claim restated, what must be true]
  Investigate source: [findings]
  Find original: [search methods used, earliest version found, match status]
  Trace claim: [spread map, original publication, circular sourcing flags]
Mode-specific checks:
  [For visual media] Metadata inspection:
    Method: [EXIF / container metadata]
    Key findings: [timestamps, GPS, device, edit history]
    Inconsistencies: [list, or "none detected"]
  [For visual media] Manipulation check:
    Deepfake indicators: [findings, or "none detected"]
    Tampering indicators: [findings, or "none detected"]
    C2PA credentials: [present/absent, chain status, signing authority]
  [For visual media] Geolocation: [cross-checks performed, result]
  [For documents] Metadata: [author, dates, producing application, revision count]
  [For documents] Exemplar comparison: [letterhead, formatting, language — match/mismatch]
  [For documents] Internal consistency: [dates, references, names, titles — findings]
  [For anonymous sources] Access assessment: [claimed access, plausibility]
  [For anonymous sources] Consistency: [tested across conversations — stable/drifting]
  [For anonymous sources] Independent corroboration: [what was corroborated, how]
  [For anonymous sources] Motivation: [assessed type, implications]
  [For expert sources] Credentials verified: [degrees, licenses, affiliation — confirmed/unconfirmed]
  [For expert sources] Publication record: [field match, citation count, peer recognition]
  [For expert sources] Conflicts of interest: [financial ties, advocacy, litigation, prior positions]
  [For expert sources] Claim vs. consensus: [aligned / contrarian / outside field]
  [For social media] Account assessment: [age, history, patterns, verification status]
  [For social media] Archival: [methods used, permanent URLs]
  [For social media] Prior circulation: [found / not found, earliest version]
  [For social media] Location/time verification: [weather, signage, metadata — consistent/inconsistent]
  [For social media] Amplification pattern: [organic / coordinated / inconclusive]
Unverified elements: [what could not be confirmed and why]
Confidence level: [HIGH / MEDIUM / LOW — with one-line rationale]
Verified by: [reporter name]
Date: [verification date]
```

---

## Verification Tools Reference

The assistant cannot run these tools. It tells the reporter which tools to use, what to look for in the results, and how to interpret what they find.

| Tool | What It Does | Cost | URL |
|------|-------------|------|-----|
| Google Reverse Image Search | Finds visually similar images across the indexed web. Best for widely shared images | Free | images.google.com |
| TinEye | Reverse-image search with date-sorting — shows the earliest known appearance of an image | Free (limited) / Paid | tineye.com |
| Yandex Images | Reverse-image search with strong coverage of Eastern European, Central Asian, and Russian-language sources | Free | yandex.com/images |
| ExifTool | Command-line tool for extracting EXIF, IPTC, and XMP metadata from images and video files | Free | exiftool.org |
| Jeffrey's EXIF Viewer | Web-based EXIF viewer — upload or paste a URL | Free | exif.regex.info |
| FotoForensics | Error-level analysis (ELA) for detecting image manipulation | Free | fotoforensics.com |
| InVID / WeVerify | Browser plugin for video verification — extracts keyframes, runs reverse searches, checks metadata | Free | weverify.eu |
| Wayback Machine | Web archival — saves and retrieves historical versions of web pages | Free | web.archive.org |
| Archive.today | Creates permanent snapshots of web pages, independent of the original site | Free | archive.today |
| Google Scholar | Searches academic publications — use for verifying expert publication records | Free | scholar.google.com |
| PACER | Public Access to Court Electronic Records — federal court filings, including expert witness testimony | $0.10/page | pacer.uscourts.gov |
| SunCalc | Calculates sun position, shadow direction, and golden hour for any date, time, and location — use for geolocation cross-checks | Free | suncalc.org |
| Wolfram Alpha | Weather history lookups — "weather in [city] on [date]" returns historical observations | Free (limited) | wolframalpha.com |
| C2PA Content Credentials Verify | Checks whether a file contains a C2PA manifest and validates the credential chain | Free | contentcredentials.org/verify |
| CrowdTangle / Meta Content Library | Tracks sharing patterns and amplification of content across Meta platforms | Restricted access | (apply through Meta) |
| Bellingcat Online Investigation Toolkit | Curated collection of OSINT tools for journalists and investigators | Free | bit.ly/bcattools |
| OpenCorporates | Company registry search across 140+ jurisdictions — use for verifying corporate affiliations | Free (limited) / Paid | opencorporates.com |

---

## Red Flags Reference

Quick-reference table of warning signs organized by verification mode. A single red flag does not prove fabrication — but each one demands a specific follow-up action.

### Visual Media Red Flags

| Indicator | What It Suggests | Follow-up Action |
|-----------|-----------------|------------------|
| EXIF timestamp does not match claimed date | Image may be from a different event | Search for the image in connection with other events on the EXIF date |
| GPS coordinates missing or do not match claimed location | Image may have been taken elsewhere, or metadata was stripped | Attempt geolocation through visible landmarks, signage, sun angle |
| Software field shows editing application | Image was processed after capture | Ask the source what edits were made; run ELA to check for content changes vs. exposure adjustments |
| Image found in reverse search with earlier date | Image is recycled from a previous event | Identify the original context; the image cannot be used to illustrate the claimed event |
| Inconsistent shadows or lighting across the frame | Possible composite — elements from different images spliced together | Run ELA; examine edges of each element at high zoom |
| Repeating pixel patterns in background | Clone-stamp tool was used to duplicate or remove elements | Examine the region at 200%+ zoom; look for mirrored texture |
| Unusually low resolution in one area of an otherwise sharp image | A region may have been pasted in from a lower-quality source | Compare resolution uniformly across the frame |
| Video lip-sync mismatch | Possible deepfake or audio replacement | Watch at 0.25x speed; check jaw movement against phoneme shapes |
| Unnatural blinking pattern in video | Older deepfake models produce irregular blink rates | Count blinks per minute (normal range: 15–20); note any segments without blinking |
| Audio-visual desynchronization | Audio may have been added or replaced after recording | Check mouth movements against specific consonant sounds (p, b, m are most visible) |
| C2PA manifest present but signing authority is unknown | Credentials may have been self-issued or issued by an unrecognized entity | Check the signing authority against the C2PA trust list at contentcredentials.org |

### Document Red Flags

| Indicator | What It Suggests | Follow-up Action |
|-----------|-----------------|------------------|
| Author metadata field does not match the claimed author | Document may have been created by someone else | Check "last modified by" field; compare with known documents from the claimed author |
| Creation date and modification date are identical | Document was created in a single session with no revision — unusual for complex official documents | Check revision count; authentic institutional documents typically show multiple saves |
| Revision count of 1 on a multi-page document | Same concern as above | Compare with authentic documents from the same institution |
| Producing application does not match the institution's known tools | Document may have been created outside the institution | Example: a government memo produced in Google Docs when the agency uses Microsoft Word exclusively |
| Font does not match the institution's house style | Document may be fabricated using a template the forger built | Obtain authentic exemplars and compare font choices character by character |
| Reference number does not fit the known numbering scheme | Number may be invented | Check other documents from the same office for the numbering pattern |
| Date falls on a weekend or public holiday | Unusual for official correspondence created during business hours | Not dispositive — some offices work weekends — but worth verifying |
| Signature appears digitally placed (uniform ink density, no pen pressure variation) | Signature may be a pasted graphic, not a wet-ink signature | Compare with known authentic signatures; note whether the institution uses digital signatures as standard practice |

### Anonymous Source Red Flags

| Indicator | What It Suggests | Follow-up Action |
|-----------|-----------------|------------------|
| Source cannot describe internal processes | Source may not have the access they claim | Ask about specific procedures someone in their claimed role would know (filing systems, approval chains, meeting cadence) |
| Details shift across conversations | Account may be partially or entirely fabricated | Document each version; ask the source to reconcile the differences |
| Source provides only conclusions, never raw evidence | Source may be repeating secondhand information or speculation | Ask for specific documents, dates, names — anything that can be independently checked |
| Source contacted multiple news organizations simultaneously with the same story | May be running a campaign rather than whistleblowing | Contact other newsrooms (carefully) to compare notes; does not disqualify the source but changes the dynamic |
| Source demands specific framing or editorial angle | Source may be trying to weaponize the story | The story must be framed by reporting, not by the source's preferences |
| Source refuses to provide any corroborating material | Reduces the chance of independent verification | Explain that you cannot publish an uncorroborated anonymous claim; offer to verify material without revealing the source |
| Source has a known active dispute with the subject of the story | Grievance motivation — facts may be accurate but selectively presented | Seek independent corroboration for every specific claim; present the full picture, not only the source's framing |

### Expert Source Red Flags

| Indicator | What It Suggests | Follow-up Action |
|-----------|-----------------|------------------|
| Claimed degree cannot be verified through the institution | Degree may be fabricated or from a diploma mill | Check the institution against accreditation databases; contact the registrar directly |
| Expert has no peer-reviewed publications in the relevant field | May not be recognized by peers as an authority | Search Google Scholar, PubMed, Scopus for publications in the specific subfield |
| Expert's view contradicts the established consensus without acknowledgment | May be a contrarian or advocate rather than a representative expert | Note the consensus position; seek a second expert; disclose the minority position to readers |
| Expert has undisclosed financial ties to an interested party | Conflict of interest | Check disclosure statements, corporate filings, board memberships; ask the expert directly |
| Expert is commenting outside their specific subfield | Credentialed in one area does not confer authority in another | Identify the correct subfield; find an expert who works in it |
| Expert's institutional affiliation is outdated | May be trading on a former position for current credibility | Confirm current affiliation through the institution's directory |

---

## Credibility Indicators — Positive Signals

Not every verification is about finding problems. These indicators support a source's credibility:

| Indicator | What It Signals |
|-----------|----------------|
| Source provides raw material (original files, unedited footage, documents with metadata intact) | Confidence in the material's authenticity — people who forge material usually strip metadata |
| Source identifies limitations of their own knowledge | Honest self-assessment — fabricators tend to claim certainty about everything |
| Source's account is consistent across multiple conversations without being rehearsed | Stable recall of genuine experience |
| Source's claims are corroborated by independent public records | Facts check out through channels the source does not control |
| Expert has been cited by other recognized researchers in the field | Peer recognition in the relevant area |
| Expert discloses conflicts of interest without being asked | Transparency — does not guarantee neutrality but indicates professional standards |
| Document metadata is internally consistent and matches the claimed issuing institution | Supports authenticity — not proof, but absence of red flags is itself a positive signal |
| Social media account has years of consistent posting history matching the claimed identity | Account is likely authentic, not recently created for a specific purpose |
| Image EXIF data (timestamp, GPS, device) matches the source's stated provenance in every field | Strong supporting evidence for the claimed origin |

---

## Example 1: Visual Media Verification

### Input
Material: A photograph showing what appears to be a chemical spill along a riverbank, with dead fish visible on exposed mud. Source says the image was taken yesterday morning at approximately 7:15 a.m. along the Millford River, downstream from an industrial park. Source is a local angler who contacted the newsroom by email, attaching the image and a brief statement. No prior contact with this source. Publication deadline: tomorrow evening edition.

### Output

**Verification report**

The claim: a photograph shows a chemical spill on the Millford River downstream from an industrial park, taken yesterday morning around 7:15 a.m. by a local angler. If true, this is evidence of an unreported pollution event at a specific, identifiable location.

**Source check.** The sender has no prior relationship with the newsroom. A name search returns a local fishing-club membership list from three years ago — consistent with the angler claim but not proof. No social media accounts found under that name in a quick search. The email address uses a consumer provider, not a burner domain. Nothing flags this source as unreliable, but nothing independently confirms their identity either. Treat as single-source until corroborated.

**Finding the original.** A reverse-image search on Google Images and TinEye returned no matches. Yandex returned no matches. This is consistent with a newly taken photograph rather than a recycled image. Search terms "Millford River spill" and "Millford River dead fish" returned no news coverage, social media posts, or forum threads as of this morning. The image does not appear to be in circulation.

**Tracing the claim.** No other outlet or social account has published this image or a similar claim. The source's email is the only known origin point. There is no circular sourcing to flag. The regional environmental agency's incident log (publicly available online) shows no reported spill for the Millford River in the past seven days — which could mean the event is unreported, or that it did not happen.

**Metadata inspection.** EXIF data extraction (using ExifTool or Jeffrey's EXIF Viewer) should yield:

- **Camera model and lens:** Check whether the device is consistent with what a casual angler would carry (phone camera vs. professional DSLR). The source did not mention photography equipment.
- **Timestamp:** Look for the DateTimeOriginal field. If it reads yesterday's date at approximately 07:15, that supports the claimed timeline. If it reads a different date, or if the field is absent (common with screenshots or images saved from messaging apps), flag that.
- **GPS coordinates:** If present, compare to the Millford River's course downstream from the industrial park. A mismatch of more than a few hundred metres is significant. If GPS data is absent, the location cannot be confirmed through metadata alone.
- **Software field:** If this field shows editing software (Photoshop, Snapseed, GIMP), the image was processed after capture. Cropping or exposure adjustment is normal; content-aware fill or layer work warrants follow-up.

For this image: EXIF shows an iPhone 14, DateTimeOriginal yesterday at 07:12, GPS coordinates placing the camera 340 metres downstream from the Acme Chemical complex on the Millford River. No software editing field. All metadata is consistent with the source's account.

**Geolocation cross-check.** SunCalc for the GPS coordinates on yesterday's date at 07:12 shows the sun at 14 degrees elevation, bearing 72 degrees (east-northeast). Shadows in the photograph fall toward the west-southwest, consistent with the calculated sun position. Weather archives show clear skies at the nearest station yesterday morning — consistent with the even lighting in the photograph.

**Manipulation check.** Visual inspection: lighting and shadows are consistent across the frame. No visible clone-stamp repetition in the mud or water. The dead fish show natural variation in size and position — not copy-pasted. Error-level analysis (via FotoForensics) shows uniform compression across the image with no regions of anomalous quality, consistent with a single-capture JPEG. No C2PA Content Credentials are embedded. This is expected — consumer iPhones do not currently write C2PA manifests by default.

**What remains unverified.** The source's identity is unconfirmed. The substance in the water has not been identified — the brown discolouration could be a chemical discharge, but it could also be sediment runoff after heavy rain. The cause of the fish deaths is not established by the photograph alone.

---

```
VERIFICATION TRAIL
Mode: visual media
Material type: image
Source: local angler, email to newsroom, no prior contact
Claimed provenance: chemical spill, Millford River, yesterday ~07:15
---
SIFT steps completed:
  Stop: photo must show Millford River, yesterday morning, with visible pollution
  Investigate source: name consistent with local fishing club; no red flags, no independent confirmation
  Find original: no matches on Google Images, TinEye, Yandex — image not in prior circulation
  Trace claim: no other outlet or social account has published this; no agency report filed
Mode-specific checks:
  Metadata inspection:
    Method: EXIF extraction (ExifTool)
    Key findings: iPhone 14, 07:12 yesterday, GPS 340m downstream of Acme Chemical complex
    Inconsistencies: none detected
  Manipulation check:
    Deepfake indicators: not applicable (still image)
    Tampering indicators: none — consistent lighting, no clone artefacts, uniform ELA
    C2PA credentials: absent (expected for consumer iPhone)
  Geolocation: sun angle and shadow direction consistent with GPS coordinates and timestamp; weather archives confirm clear skies
Unverified elements: source identity; substance identification; cause of fish deaths
Confidence level: MEDIUM — metadata, geolocation, and image analysis support the location and timing claim; substance and source identity unconfirmed
Verified by: [reporter name]
Date: [today's date]
```

**Next Step:** Contact the regional environmental agency directly to ask whether a spill has been reported. Send a photographer or reporter to the GPS coordinates to confirm the scene independently. If the scene is confirmed, file a public records request for inspection reports on the industrial complex upstream (see the FOIA Request Writer skill). Do not publish the image as showing a "chemical spill" — publish it as showing "dead fish and discolouration on the Millford River" until the substance is identified by a lab or agency.

---

## Example 2: Anonymous Source Verification

### Input
A person contacted the newsroom through an encrypted messaging app claiming to be a mid-level procurement officer at a metropolitan transit authority. The source says the transit authority awarded a $14 million bus maintenance contract to a company whose owner is the sibling of a senior transit official — and that the winning bid was $3.2 million higher than the next-lowest bid. The source has provided a photograph of what they say is the bid evaluation scoresheet, taken with a phone camera. The source will not meet in person and asks to be identified only as "a current employee with direct knowledge of the procurement process."

### Output

**Verification report**

The claim: a transit authority awarded a $14 million contract through a rigged or improperly influenced procurement process, favouring a company with a family connection to a senior official. The key assertions to verify: (1) the contract exists and is worth approximately $14 million, (2) the winning company's owner is related to a transit official, (3) the winning bid was significantly higher than a competing bid, (4) the bid evaluation scoresheet is authentic.

**Access assessment.** The source claims to be a mid-level procurement officer. A person in this role would have direct access to bid evaluations, scoring sheets, and vendor information. The level of detail provided — a specific dollar amount, a specific cost differential, and a reference to the scoresheet — is consistent with someone who works in or adjacent to the procurement office. The source describes the bid evaluation process using language specific to public procurement (scoring matrix, technical evaluation, cost weighting) — consistent with professional familiarity.

**Independent corroboration — contract existence.** Public procurement records for the transit authority should be available through the authority's website, board meeting minutes, or a public records request. Search for: board resolutions approving contracts over $10 million in the relevant fiscal year, vendor award notices published on the authority's procurement portal, and any local news coverage of the bus maintenance contract. If a $14 million bus maintenance contract exists and was awarded to the company the source named, the first element of the claim is confirmed through public records.

**Independent corroboration — family relationship.** The source claims the winning company's owner is the sibling of a senior transit official. Verify: corporate filings (search the state's business registry for the company's registered agent and officers), the transit authority's website or annual report for the names and titles of senior officials, and any public records (property records, court filings, voter registration) that would confirm a family relationship between the company owner and the transit official. This is not an intrusion into privacy — it is verification of a claimed conflict of interest in a public contract.

**Independent corroboration — bid differential.** Public procurement law in most jurisdictions requires the disclosure of bid tabulations after contract award. File a public records request for the bid tabulation sheet for this specific contract. If the bid tabulation confirms a $3.2 million differential, that corroborates the source's numerical claim.

**Document verification — scoresheet photograph.** The source provided a phone photograph of what they say is the bid evaluation scoresheet. Inspect:

- **EXIF data:** Does the camera timestamp place the photograph during business hours at a location consistent with the transit authority's offices?
- **Document formatting:** Compare the scoresheet's layout, fonts, and headers against other public procurement documents from the same authority (budget documents, board packets, previously released bid evaluations). Do they match?
- **Content consistency:** Do the scores, weightings, and company names on the scoresheet match what the publicly available bid tabulation shows?

For this photograph: EXIF shows a phone camera, timestamp during business hours two weeks ago, GPS coordinates consistent with the transit authority's administrative building. The scoresheet format matches procurement documents in the authority's last three board packets. The company names and total contract amounts match the publicly posted bid tabulation. The scoresheet adds detailed scoring categories that are not in the public tabulation — consistent with an internal document the public would not normally see.

**Motivation assessment.** The source has not expressed personal grievance — they describe the situation in procedural terms ("the scoring was done before the bids came in") rather than emotional terms. They have not demanded a specific editorial angle. They are not seeking payment. The motivation appears to be concern about a procurement irregularity. This does not eliminate the possibility of a personal agenda, but the profile is consistent with a principled disclosure rather than a vendetta.

**Consistency check.** The source was asked across three separate conversations to describe the procurement timeline. The sequence of events remained consistent: RFP issued in March, bids due in May, evaluation committee scored in June, board approved in July. The dollar figures did not change. When asked about details they would not know (the exact date of the board vote), the source said they did not remember the exact date — an honest limitation rather than a fabrication to fill the gap.

**What remains unverified.** The source's identity. Whether the scoring was actually manipulated (the scoresheet shows the winning company scored highest, but high scores could reflect genuine evaluation rather than rigging). Whether the family relationship, if confirmed, was disclosed to the procurement office as required by the authority's conflict-of-interest policy.

---

```
VERIFICATION TRAIL
Mode: anonymous source
Material type: claim + document (scoresheet photograph)
Source: anonymous, encrypted messaging app, claims to be procurement officer at transit authority
Claimed provenance: $14M bus maintenance contract awarded improperly; scoresheet photograph taken at transit authority offices
---
SIFT steps completed:
  Stop: must verify contract exists, family relationship exists, bid differential is accurate, scoresheet is authentic
  Investigate source: cannot identify; access claim is plausible based on language and detail level
  Find original: scoresheet not found in public domain — consistent with internal document
  Trace claim: no media coverage found; claim has not appeared elsewhere
Mode-specific checks:
  Access assessment: claimed role is consistent with detail provided; uses procurement-specific terminology accurately
  Consistency: three conversations, consistent timeline and figures; acknowledged gaps in knowledge
  Independent corroboration: contract confirmed via public procurement records; bid tabulation matches source's dollar figures; corporate registry and authority directory can confirm family relationship (pending)
  Motivation: procedural concern, no personal grievance expressed, no payment sought, no editorial demands
Unverified elements: source identity; whether scoring was manipulated vs. legitimate; whether family relationship was properly disclosed
Confidence level: MEDIUM-HIGH — core facts (contract, amount, bid differential) corroborated through public records; document formatting and metadata consistent; family relationship and scoring manipulation not yet independently confirmed
Verified by: [reporter name]
Date: [today's date]
```

**Next Step:** File a public records request for the full bid evaluation file, including the conflict-of-interest disclosure forms filed by evaluation committee members. Search corporate filings and property records to confirm the family relationship. Contact the transit authority's public affairs office for comment — do not reveal the source or the scoresheet. Ask the authority to confirm the contract amount, the winning vendor, and whether any conflict-of-interest disclosures were filed for this procurement. Consult with your editor and the newsroom's legal counsel about what additional corroboration is needed before publication.

---

## Example 3: Expert Source Verification

### Input
A producer is preparing a segment on microplastics in drinking water. A researcher named Dr. Elena Marchetti has been recommended as a guest expert by a public relations firm representing a water filtration company. Dr. Marchetti says she is an associate professor of environmental toxicology at a mid-size state university and has published on microplastic contamination. The PR firm says she is "one of the leading voices on microplastic health effects."

### Output

**Verification report**

The claim to verify: Dr. Elena Marchetti is a credible, independent expert on microplastic contamination in drinking water and is an appropriate source for an on-air segment on this topic.

**Credential verification.** The university's faculty directory lists Dr. Marchetti as an assistant professor (not associate professor) of environmental science (not environmental toxicology). The distinction matters: assistant professor is a tenure-track position that has not yet received tenure, and environmental science is a broader field than toxicology. The claimed title and department name are inflated. This does not disqualify her, but it must be corrected in any on-air identification.

Degree verification: the university's directory shows she holds a Ph.D. from a recognized research university, conferred seven years ago. The degree is in environmental chemistry — related to but not identical to toxicology. Her doctoral institution is accredited and well-regarded in the environmental sciences. No red flags on the credentials themselves.

**Publication record.** Google Scholar shows 18 publications under her name. Eight are in peer-reviewed environmental science journals. Of these eight, three specifically address microplastic detection methods, two address microplastic prevalence in freshwater systems, and three address unrelated topics (agricultural runoff, soil contamination). None of the 18 publications address microplastic health effects in humans.

Citation count: her three microplastic detection papers have been cited 47, 31, and 12 times respectively — reasonable for a mid-career researcher. She has presented at two recognized conferences on environmental monitoring. Her work is recognized by peers in the detection and prevalence space.

The gap: the PR firm described her as a leading voice on "microplastic health effects." Her publications address detection and prevalence, not health effects. Microplastic health effects is a different subfield — primarily addressed by toxicologists and epidemiologists. Dr. Marchetti's published expertise qualifies her to speak about where microplastics are found and how they are measured, not about their biological effects on humans.

**Conflict-of-interest check.** Dr. Marchetti was recommended by a PR firm representing a water filtration company. Disclosure statements on her most recent publications list no industry funding. However: a search of the university's grants database shows she received a $45,000 research grant from a water filtration industry trade association 18 months ago to study microplastic filtration efficacy. This does not appear in her publication disclosures because the funded study has not yet been published.

This is a direct financial relationship with the industry that benefits from public concern about microplastics in drinking water. It does not mean her research is wrong, but it must be disclosed to the audience, and the editorial team should consider whether a researcher without industry ties is available.

**Claim vs. consensus.** The broad scientific consensus (as reflected in review articles in major environmental and public health journals) is that microplastics are present in drinking water systems worldwide, that current detection methods are improving but not standardized, and that the health effects of microplastic ingestion on humans are not yet well established. Dr. Marchetti's published work on detection and prevalence aligns with the consensus. She has not published on health effects, so there is no position to evaluate in that area.

The risk: if the segment asks her about health effects, she will be speaking outside her published expertise. She may offer responsible speculation or she may overstate what is known — either way, the audience will perceive her as an authority on health effects because she is introduced as an expert on microplastics. The introduction must be precise about the scope of her expertise.

**What remains unverified.** Whether Dr. Marchetti has additional financial relationships not captured in grants databases or publication disclosures. Whether she has served as a paid expert witness or consultant in litigation related to water contamination.

---

```
VERIFICATION TRAIL
Mode: expert source
Material type: expert credentials and claims
Source: recommended by PR firm representing a water filtration company
Claimed provenance: associate professor of environmental toxicology; "leading voice on microplastic health effects"
---
SIFT steps completed:
  Stop: must verify credentials, publication record, independence, and scope of expertise
  Investigate source: recommended by industry PR firm — not independently sourced
  Find original: credentials traced to university directory
  Trace claim: "leading voice" characterization originates from PR firm, not from peer recognition
Mode-specific checks:
  Credentials verified: Ph.D. confirmed at accredited institution; title is assistant professor (not associate); department is environmental science (not toxicology)
  Publication record: 18 publications, 8 peer-reviewed; 5 relevant to microplastics (detection and prevalence, not health effects); reasonable citation count; no publications on health effects
  Conflicts of interest: $45,000 research grant from water filtration industry trade association, not disclosed in publications; recommended by industry PR firm
  Claim vs. consensus: published work aligns with consensus on detection/prevalence; no basis to evaluate health effects claims because she has not published on them
Unverified elements: additional financial relationships; expert witness history; full scope of industry consulting
Confidence level: MEDIUM — credentials are legitimate but inflated by the PR firm; expertise is real but narrower than represented; undisclosed industry funding creates an appearance of conflict
Verified by: [reporter name]
Date: [today's date]
```

**Next Step:** If using Dr. Marchetti, correct the title and department in all on-air identifications. Disclose the industry research grant and the PR firm connection to the audience. Do not ask her about health effects — keep questions within her published expertise (detection and prevalence). Consider seeking a second expert — a toxicologist or epidemiologist with no industry ties — to address health effects separately. If the segment cannot be restructured to separate detection from health effects, find a different primary expert who covers both and has no industry relationship.

---

## Known Limitations

- The assistant cannot run any verification tools itself. It cannot perform reverse-image searches, extract EXIF data, run error-level analysis, query court databases, search corporate registries, or check academic publication indexes. This skill tells the reporter exactly which tools to use, where to find them, what to enter, and what to look for in the results — but the reporter must run those tools themselves.

- Deepfake detection guidance covers visual and auditory indicators a reporter can check manually (lip-sync, blinking, shadow consistency, audio desync). It does not replace forensic analysis software. Sophisticated deepfakes made with current-generation models may pass all manual checks. If the stakes are high and the material is video, consider sending the file to a forensic lab or a university digital forensics program before publishing.

- C2PA Content Credentials are still uncommon in consumer media as of mid-2026. Most consumer cameras, phones, and social media platforms do not write C2PA manifests by default. The absence of credentials is not evidence of manipulation — it is the current baseline. Expect this to change as C2PA adoption increases, but do not treat missing credentials as a red flag today.

- Anonymous source verification assesses credibility without identifying the source. It cannot guarantee that the source is who they claim to be. A sophisticated actor could fabricate consistent accounts, use accurate procedural terminology from publicly available sources, and provide documents that are internally consistent but fabricated. Independent corroboration through public records is the strongest counter to this risk — never rely on the source's internal consistency alone.

- Expert verification checks credentials, publications, and disclosed conflicts. It cannot detect undisclosed relationships. Financial ties that are not recorded in grants databases, publication disclosures, or corporate filings will not surface through the methods described here. Direct questioning of the expert is the primary tool for undisclosed conflicts — and it depends on the expert's honesty.

- Document verification through metadata and formatting comparison can detect many forgeries but not all. A skilled forger with access to authentic exemplars and the correct software can produce documents that pass metadata and formatting checks. Physical forensic examination (ink analysis, paper analysis, printer identification through tracking dots) is beyond the scope of this skill and requires a forensic document examiner.

- Social media account verification assesses authenticity through account age, posting history, and behaviour patterns. It cannot definitively identify sophisticated sock-puppet accounts that have been maintained over months or years with consistent personas. State-sponsored information operations have created accounts that pass all the checks described here. If the stakes of a story depend on the authenticity of a single social media account, seek additional corroboration through off-platform channels.

- This skill is designed for editorial verification before publication. It is not a forensic evidence protocol for use in legal proceedings. If material may be used as evidence in court, consult with legal counsel about chain-of-custody requirements, forensic authentication standards, and admissibility rules that go beyond journalistic verification.

- Geolocation cross-checks depend on visible landmarks, environmental conditions, and metadata. Indoor photographs, photographs taken in featureless terrain, or images of common-looking urban environments may not contain enough visual information to geolocate. In these cases, metadata (if present and trustworthy) is the only location indicator — and metadata can be stripped or altered.

- The credibility indicators listed in this skill are signals, not proof. A source can display every positive signal and still be providing false information. Conversely, a source that triggers several red flags may be entirely truthful. Verification is a process of accumulating evidence, not a checklist that produces a binary pass/fail.

## Quality Criteria

- [ ] The verification mode is correctly selected for the material and source type
- [ ] Every SIFT step is addressed — no step skipped without explanation
- [ ] Mode-specific checks are completed for every applicable item (metadata, credentials, account history, etc.)
- [ ] Reverse-image search guidance names specific tools (Google Images, TinEye, Yandex) and explains what to look for in results (earliest date, different context, cropping differences)
- [ ] EXIF and metadata guidance names specific fields (DateTimeOriginal, GPSLatitude, Software, Author, Revision Count) and explains what each value means — not just "check the metadata"
- [ ] Deepfake and tampering indicators are concrete and observable ("lip-sync mismatch at 0.25x speed," "shadow falls northwest when sun position requires southwest") — not abstract warnings ("be aware of potential manipulation")
- [ ] C2PA section explains what Content Credentials are, names the verification tool (contentcredentials.org/verify), and explains what a valid vs. invalid chain means
- [ ] Document verification compares against known exemplars on at least three dimensions (letterhead, formatting, language)
- [ ] Anonymous source verification tests internal consistency across multiple conversations — not a single interview
- [ ] Anonymous source verification identifies at least one element that can be corroborated independently through public records
- [ ] Expert source verification checks credentials through the institution itself, not only the expert's self-reported CV
- [ ] Expert source verification distinguishes between the expert's published subfield and the subfield the story requires
- [ ] Conflict-of-interest checks go beyond published disclosures to include grants databases, corporate filings, and direct questioning
- [ ] Social media verification includes archival of the content before further analysis
- [ ] Verification trail template is filled in with specific findings, not left as a blank form
- [ ] Confidence level is justified by specific findings and gaps — not hedged generically ("there is some uncertainty")
- [ ] Every example ends with a concrete "Next Step" section telling the reporter what to do immediately
- [ ] Output is free of banned AI-template phrasing — no restate-the-question intros, summary-of-the-summary closes, or Latinate filler verbs

## Related Skills
- [foia-request-writer](../foia-request-writer/SKILL.md) — for filing public records requests identified during verification
- [document-analysis-summary](../document-analysis-summary/SKILL.md) — for in-depth analysis of documents after verification
- [investigation-timeline-builder](../investigation-timeline-builder/SKILL.md) — for building timelines from verified source material
- [source-credibility-scorer](../../fact-checking/source-credibility-scorer/SKILL.md) — for scoring source credibility after verification is complete
- [claim-verification-checklist](../../fact-checking/claim-verification-checklist/SKILL.md) — for systematic fact-checking of specific claims

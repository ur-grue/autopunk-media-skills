---
name: creative-commons-explainer
status: beta
category: archive-legal
subcategory: legal
version: 1.0
eval_score: null
tags: [creative-commons, licensing, rights, open-content, attribution]
---

# Creative Commons Explainer

## What This Skill Does
Translates a specific Creative Commons licence into plain language — explaining exactly what you can and cannot do with a piece of content, and what you must do to stay compliant.

## When To Use This Skill
- You find an image, article, audio clip, or video marked with a Creative Commons licence and need to know whether your intended use is permitted
- You are selecting images from platforms like Wikimedia Commons, Flickr, or Unsplash and need to understand the restrictions before publishing
- You are advising a colleague or contributor on whether a CC-licensed asset can be used in a commercial publication, broadcast, or social post
- You are publishing your own content and want to understand what a particular CC licence would allow others to do with it

## What You Need To Provide
**Required:** The Creative Commons licence identifier — either the full name (e.g. "Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International") or the short code (e.g. "CC BY-NC-SA 4.0"). The intended use: what you plan to do with the content (publish in a magazine, use in a broadcast documentary, post on social media, adapt into a new work, use in a commercial product, etc.).

**Optional:** Whether the use is commercial or non-commercial, whether you intend to modify or adapt the content, the platform or publication where it will appear.

## How Claude Approaches This
1. Parses the licence identifier to confirm it is a recognised Creative Commons licence and identifies which version (2.0, 3.0, 4.0) applies, noting any meaningful differences.
2. Explains each element of the licence code in plain terms: what BY (attribution), NC (non-commercial), ND (no derivatives), and SA (share-alike) each mean in practice.
3. Applies the licence conditions directly to the stated intended use — giving a clear yes/no verdict on whether the use is permitted, and listing exactly what is required to comply.
4. Highlights any edge cases or common misconceptions relevant to that licence — for example, what counts as "commercial," whether embedding counts as adaptation, or how SA interacts with a publication's own copyright.
5. Provides a ready-to-use attribution line formatted correctly for the medium (print, digital, broadcast).

## Output Format
A plain-language explanation of 300–450 words, structured under three headings: **What This Licence Allows**, **What This Licence Prohibits or Restricts**, and **What You Must Do To Comply**. Followed by a short **Attribution Example** block. Tone is direct and editorial — written for a journalist, producer, or picture editor who needs a practical answer quickly. No legal jargon without an immediate plain-language translation.

## Quality Criteria
- [ ] Correctly identifies and explains every element of the licence code
- [ ] Gives a clear, direct verdict on whether the stated intended use is permitted
- [ ] Lists every compliance requirement specific to that licence (attribution format, share-alike conditions, etc.)
- [ ] Addresses at least one common misconception or edge case for that licence type
- [ ] Provides a correctly formatted attribution line appropriate for the medium
- [ ] Uses no unexplained acronyms or legal terms

## Example

### Input
I want to use a photograph I found on Wikimedia Commons. It is marked CC BY-SA 4.0. I plan to publish it in a digital news article on a commercial website. I will crop the image but not otherwise alter it.

### Output

**What This Licence Allows**

CC BY-SA 4.0 — Creative Commons Attribution-ShareAlike, version 4.0 International — is one of the more permissive Creative Commons licences. It allows you to use the photograph for any purpose, including commercial publication on a news website. Cropping counts as adaptation under most interpretations, so you are technically creating a modified version of the work. This is permitted under this licence, but it triggers the ShareAlike condition (see below).

**What This Licence Prohibits or Restricts**

The licence has no non-commercial restriction, so publishing on a commercial website is fine. However, it does carry two firm requirements: you must credit the creator (BY), and if you publish an adapted version — which a crop qualifies as — the resulting work must be released under the same CC BY-SA licence or a compatible one (SA). For a news article on a commercial site, this ShareAlike condition is the element that requires the most attention: it means the photograph as it appears in your article must itself be available for others to reuse under CC BY-SA terms. This does not affect the copyright of your surrounding article text — only the image.

**What You Must Do To Comply**

1. **Attribute correctly.** Include the creator's name, the title of the work if known, the source (e.g. Wikimedia Commons), and the licence name with a link to the licence deed.
2. **Note the modification.** Because you are cropping the image, state that the image has been cropped from the original.
3. **Apply the ShareAlike condition.** The cropped version of the image you publish must be made available under CC BY-SA 4.0. In practice, for a news article, this typically means a clear credit line noting the licence — it does not require you to upload the image to a separate repository.

**Attribution Example**

> Photo: Marina Okafor / Wikimedia Commons, cropped from original. CC BY-SA 4.0.

For a digital article, link "CC BY-SA 4.0" to `https://creativecommons.org/licenses/by-sa/4.0/`.

## Known Limitations
- Creative Commons licences do not cover all rights issues. A CC-licensed photograph may still contain third-party elements (identifiable people, trademarked objects, artworks in the background) that require separate clearance.
- The definition of "commercial use" under NC licences is contested and has not been definitively resolved in case law in most jurisdictions. If your use is borderline, seek legal advice.
- This skill explains the standard international licence versions. Ported or jurisdiction-specific versions (e.g. CC BY 3.0 DE) may have minor differences not captured here.
- This skill is not a substitute for qualified legal advice. For high-stakes or commercially sensitive uses, consult a media lawyer.

## Related Skills
- [copyright-holder-finder](copyright-holder-finder.md)
- [gdpr-note-writer](gdpr-note-writer.md)

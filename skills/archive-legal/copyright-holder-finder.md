---
name: copyright-holder-finder
status: beta
category: archive-legal
subcategory: legal
version: 1.0
eval_score: null
tags: [copyright, rights, archive, clearance, licensing]
---

# Copyright Holder Finder

## What This Skill Does
Produces a structured rights-tracing framework for a specific piece of content — identifying who is likely to hold copyright, where to look, and what to ask — so a journalist or producer can pursue formal clearance through the correct channels.

## When To Use This Skill
- You want to republish, quote, embed, or adapt a photograph, article, film clip, or audio recording and need to know who controls the rights
- An archive asset has no obvious attribution and you need a starting point for tracing its origin
- You are producing a documentary, news package, or long-form feature and need to clear third-party material before publication or broadcast
- Rights information is ambiguous — for example, the original creator is deceased, the publication has folded, or the work has changed hands through a merger or acquisition

## What You Need To Provide
**Required:** A description of the content — what it is (photograph, article, film clip, sound recording, illustration), its approximate date of creation, any creator name or publication credit visible on the asset, and where you found it.

**Optional:** Country of first publication, name of any organisation associated with the asset, whether the work was commissioned or created by an employee, any licensing marks already visible on the asset.

## How Claude Approaches This
1. Identifies the type of work and applies the relevant legal framework — photograph, written work, audiovisual recording, and music each follow different rights chains and have different default ownership rules.
2. Determines the most likely category of rights holder based on the information provided: individual creator, commissioning publication, production company, estate, collecting society, or rights aggregator.
3. Maps out the specific steps and sources to check — registries, archives, publisher imprints, collecting societies, estate contacts — in order of likelihood and efficiency.
4. Flags any complications that may affect clearance: orphan works status, multiple rights holders (e.g. separate image rights and caption rights), rights reversion clauses, or content that may have entered the public domain.
5. Produces a concise action plan with suggested contact points and the key questions to ask at each stage.

## Output Format
A structured plain-language document of 350–500 words, organised under four headings: **Most Likely Rights Holder**, **Where To Look**, **Questions To Ask**, and **Complications To Watch For**. Tone is practical and editorial — written for a researcher or commissioning editor, not a lawyer. No legal jargon without a plain-language explanation alongside it.

## Quality Criteria
- [ ] Correctly identifies the type of work and applies the relevant rights framework
- [ ] Provides at least two specific, actionable places to search or contact
- [ ] Distinguishes clearly between who created the work and who owns the rights (these are often different)
- [ ] Flags whether the work may be in the public domain, and if so, why
- [ ] Includes at least one honest complication or caveat specific to the content described
- [ ] Uses no unexplained legal terms

## Example

### Input
I have a black-and-white news photograph showing striking dock workers outside a warehouse. The image is stamped on the reverse: "Photo: R. Carlisle / The Harbour Gazette, 1971." The Harbour Gazette ceased publication in 1988. I found the image in a box of prints purchased at an estate sale. I want to use it in a documentary about labour history.

### Output

**Most Likely Rights Holder**

For a commissioned press photograph taken in 1971, the copyright most likely rests with the publication that assigned the shoot — in this case, The Harbour Gazette — rather than with the photographer, R. Carlisle. When a photographer was employed by or commissioned by a publication, the publication typically held the copyright under the law as it stood in most countries at the time. However, this is not universal: some photographers retained rights under their contracts, and practices varied by country and employer.

**Where To Look**

- **Successor publications and archive services.** When newspapers fold, their photo archives are frequently acquired by a regional competitor, a media group, or a specialist press archive agency. Search for any successor title that covered the same region, and check whether a newspaper archive service holds The Harbour Gazette's library.
- **National press photo agencies.** Agencies such as national wire services or regional picture libraries sometimes absorbed folded titles' back catalogues. Search by publication name in their online catalogues.
- **Companies House or equivalent business registry.** If the company that owned The Harbour Gazette was a registered entity, its dissolution records may name the liquidator or asset purchaser, which can lead you to whoever acquired the intellectual property.
- **The photographer directly.** If R. Carlisle held their own rights — or if the publication's rights have lapsed or been abandoned — the photographer or their estate may be the current holder. An internet search, freelance union membership directories, or obituary records may help locate them.

**Questions To Ask**
- Did The Harbour Gazette's parent company sell its photo archive when the paper closed, and if so, to whom?
- Did R. Carlisle work as a staff photographer or as a freelancer on commission?
- Does the archive agency or successor publication hold a searchable index of images from The Harbour Gazette?
- Is there a paper trail — invoice, contract, or credit agreement — linking R. Carlisle to the image?

**Complications To Watch For**

The physical print you purchased confers no copyright. Owning the object is not the same as owning the rights to reproduce it. Additionally, if the rights holder cannot be located after documented reasonable effort, this image may qualify as an orphan work under legislation in some jurisdictions — which may allow limited use under specific conditions. Check whether your country has an orphan works scheme before assuming you can proceed.

This skill provides a starting framework only. Confirm all rights in writing before publication. This is not legal advice.

## Known Limitations
- Claude cannot access live rights databases, copyright registries, or company records. The framework identifies where to look — the actual search must be done by the user.
- Rights histories can be extremely complex, especially for content that is decades old or has passed through acquisitions and mergers. This skill provides a starting framework, not a definitive answer.
- Copyright law varies significantly by country and by decade. The guidance reflects general principles; specific rules for a given jurisdiction or era may differ.
- This skill is not a substitute for qualified legal advice. For high-value, high-risk, or commercially significant clearances, consult a media lawyer.

## Related Skills
- [creative-commons-explainer](creative-commons-explainer.md)
- [gdpr-note-writer](gdpr-note-writer.md)

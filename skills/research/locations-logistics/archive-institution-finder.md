---
name: archive-institution-finder
status: beta
category: research
subcategory: locations-logistics
version: 1.0
eval_score: null
tags: [archive, research, documentary, journalism, historical-footage, libraries, museums]
---

# Archive Institution Finder

## What This Skill Does
Identifies which museums, national archives, libraries, film institutes, or specialist collections are most likely to hold historical material relevant to your story or documentary subject.

## When To Use This Skill
- You are researching a documentary or long-form feature and need archival photos, film footage, documents, or objects
- You have a subject, time period, or geographic region in mind but don't know which institutions to contact first
- You need to build a research list before approaching archives for access or licensing
- Your initial web search has returned too many vague results and you need a ranked, prioritised starting point

## What You Need To Provide
**Required:** The topic, subject matter, time period, or event you are researching — be as specific as you can (e.g. "labour strikes in northern England, 1970s" rather than just "history of work").

**Optional:**
- Country or region of focus
- Type of material you need most (film footage, still photographs, official documents, audio recordings, physical artefacts)
- Language constraints for the material
- Whether the production is commercial or non-commercial (affects licensing expectations)

## How Claude Approaches This
1. Identifies the core subject, geographic scope, and era from your brief, then maps these against the types of institutions most likely to hold relevant holdings — national archives, specialist libraries, regional collections, film institutes, university repositories, or sector-specific bodies (e.g. labour history archives, medical museums, military collections).
2. Ranks institutions by probability of holding relevant material, starting with the most comprehensive national or specialist collections and working down to regional and niche repositories, noting what each institution is known for and why it fits your subject.
3. For each institution, provides: full name, country, a plain-language description of its holdings relevant to your topic, the type of material most likely available, and a practical first step (online catalogue, written enquiry, or direct phone contact).
4. Flags licensing considerations where known — for example, whether an institution charges commercial rates, requires broadcaster accreditation, or has known restrictions on certain holdings.

## Output Format
A numbered list of 5–10 institutions, ordered by relevance. Each entry is 4–6 sentences covering: institution name and location, what it holds, why it matches this subject, what type of material to expect, and the recommended first contact step. Ends with a short "What to say when you contact them" paragraph — a plain-language template the researcher can adapt for their first enquiry. Total length: 400–700 words. Tone: practical and direct, like advice from an experienced research producer.

## Quality Criteria
- [ ] Every institution listed is a real, named type of body (not generic terms like "your local library")
- [ ] Each entry explains specifically why this institution matches the stated subject — not just that it "may have relevant material"
- [ ] The list is ordered by likelihood of yield, not alphabetically or randomly
- [ ] At least one specialist or non-obvious institution is included beyond the obvious national archive
- [ ] The "first contact" step for each institution is specific and actionable
- [ ] Licensing expectations are noted where they are likely to affect production planning

## Example

### Input
I'm producing a documentary about the history of passenger shipping in the North Atlantic, focusing on the period 1900–1960. I need archival film footage, passenger photographs, ship manifests, and promotional posters. The documentary is a commercial production for a broadcast network.

### Output

**Archive and Institution Research: North Atlantic Passenger Shipping, 1900–1960**

Here are the collections most likely to hold material relevant to your documentary, ranked by expected yield.

---

**1. National Maritime Museum (Greenwich, UK)**
One of the world's largest maritime heritage collections, with holdings spanning ship plans, passenger records, promotional material, and thousands of photographic prints from the steam era. For your period, their collections on transatlantic liners are particularly strong for British-flagged vessels. Expect still photographs, posters, and documentary records; moving image is limited here. First step: search the online catalogue at collections.rmg.co.uk before submitting a research enquiry — the catalogue is detailed enough to assess yield before making contact.

**2. Ellis Island and the Statue of Liberty National Monument (New York, USA)**
Holds an extensive archive of passenger manifests, arrival photographs, and documentary records relating to immigration through the Port of New York — the primary destination for most North Atlantic crossings in your period. The collection is managed by the National Park Service; for commercial licensing, contact the NPS Media and Licensing office directly. This is the single best source for passenger-level human stories and arrival documentation.

**3. Swedish National Maritime Museum / Sjöhistoriska museet (Stockholm, Sweden)**
Strong holdings on Scandinavian shipping lines, including the significant emigrant traffic from northern Europe. Holds photographic collections, ship interiors, and some promotional material. Relevant if your documentary covers the emigrant experience from northern Europe. Contact: info@sjohistoriska.se; they have experience handling international broadcaster enquiries.

**4. BFI National Archive (London, UK)**
The primary UK moving image archive. Holds newsreel footage, promotional films produced by British shipping companies, and documentary material covering ports and departures from the 1900s onward. This is your best starting point for commercial archival footage from British sources. Licensing is well-established for broadcasters; contact the BFI footage sales team directly and specify broadcast territory and usage.

**5. Internet Archive / Prelinger Archives (USA, open access)**
A large collection of digitised industrial and promotional films, including material produced by shipping companies for exhibition purposes. Much of this is in the public domain and free for commercial use — verify rights on a case-by-case basis. Useful as a supplementary source and for early contextual material.

**6. Cunard Archive, University of Liverpool (UK)**
The corporate archive of the Cunard Line, one of the dominant North Atlantic carriers of your period. Holds company records, voyage logs, promotional photography, and internal documentation. Access is by appointment; the archive has worked with documentary producers before. Contact the Special Collections team at the University of Liverpool Library.

**7. Le Havre City Archives / Archives municipales du Havre (France)**
If your documentary includes the French perspective — the port of Le Havre was the primary French departure point for North Atlantic crossings — this municipal archive holds departure records, port photographs, and some promotional material relating to Compagnie Générale Transatlantique (the French Line).

---

**What to say when you contact them**

A brief, direct first enquiry works best with most archives. You can adapt this:

*"I am a researcher working on a commercial documentary series for [broadcaster/network], covering the history of North Atlantic passenger shipping between 1900 and 1960. I am writing to enquire whether your collection holds [film footage / photographs / passenger records / promotional material] from this period that may be available for research access and potential licensing. Could you point me to the relevant collections catalogue or advise on the process for a research visit?"*

Send this in writing (email is fine for most institutions) before phoning — it gives archivists time to check holdings before your conversation.

## Known Limitations
- Claude cannot access live archive catalogues or databases, so holdings descriptions are based on general knowledge of each institution's known strengths, not a live search. Always verify current holdings directly with the institution before committing production time.
- Licensing fees, access conditions, and digitisation status change. A collection that was accessible three years ago may now have restrictions, or material that was undigitised may now be online — and vice versa.
- For highly specialised or regional subjects, smaller archives may hold the most relevant material but be harder to identify without specialist knowledge. A professional archive researcher or specialist fixeur may be worth engaging for deep or complex subjects.
- Claude does not have access to private or corporate archives (e.g. a shipping company's internal records that have not been deposited with a public institution).

## Related Skills
- [location-brief-writer](../../tv-documentary/pre-production/location-brief-writer.md)
- [research-brief-creator](../../magazine-journalism/ideation/research-brief-creator.md)
- [document-analysis-brief](../../magazine-journalism/investigation/document-analysis-brief.md)

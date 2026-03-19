---
name: cultural-context-brief
status: beta
category: research
subcategory: facts-context
version: 1.0
eval_score: null
tags: [culture, religion, context, background, sensitivity]
---

# Cultural Context Brief

## What This Skill Does
Produces a concise, reporter-ready briefing note explaining the cultural, religious, or social context a journalist needs before covering a community, practice, or event they are not already familiar with.

## When To Use This Skill
- You are assigned to cover a community, religious observance, or cultural tradition that is outside your direct experience
- You need background before an interview so you can ask informed questions without giving offence
- Your editor asks for a sensitivity note to accompany a pitch or draft
- You are writing a caption, explainer box, or sidebar that needs accurate cultural framing
- You are approaching a story from outside and want to identify assumptions you may be carrying into it

## What You Need To Provide
**Required:** The cultural or religious group, practice, or tradition you are covering; the angle or focus of your story (e.g., a specific ceremony, dispute, policy, celebration).
**Optional:** The country or region where the story is set; the intended audience and publication; any specific terms, images, or customs that have already come up in your reporting; whether the brief needs to flag editorial sensitivities (language, imagery, representation).

## How Claude Approaches This
1. Identifies the core cultural or religious concept at the centre of the story and establishes what a non-specialist reporter must understand before making contact with sources
2. Notes the internal diversity of the group or tradition — avoiding the single-story trap — and flags where terminology, practices, or beliefs vary significantly across communities or regions
3. Summarises relevant history that shapes how this community relates to media coverage, including past misrepresentation or high-profile controversies involving press
4. Calls out specific language pitfalls: preferred terms, terms considered offensive, and where usage is contested
5. Lists three to five practical dos and don'ts for reporting and interviewing within this context

## Output Format
600–900 words. Structured with clear subheadings: Overview, Key Terms, Internal Diversity, Relationship with Media Coverage, Language Guide, Practical Dos and Don'ts. Tone is briefing-document professional — direct and factual, not academic. Written for a working journalist, not a scholar. No footnotes. Any contested claims are flagged explicitly.

## Quality Criteria
- [ ] The Overview gives a reporter enough foundation to begin interviews without embarrassing gaps
- [ ] Internal diversity within the community is acknowledged — no monolithic portrayal
- [ ] At least one specific language pitfall or preferred term is identified
- [ ] The media relationship section reflects documented tensions or history, not generalisations
- [ ] Practical dos and don'ts are specific enough to change a reporter's behaviour, not generic advice
- [ ] No real-world organisations, publications, or individuals are named in a way traceable to an actual production

## Example

### Input
I'm reporting on the mourning rituals observed by a West African Muslim community during Ramadan, specifically the nights of intense prayer in the final ten days. My story angle is how second-generation immigrants maintain these practices in a northern European city. Audience is a general-interest national newspaper. I need background before I visit the community centre next week.

### Output

**Cultural Context Brief: Laylat al-Qadr and the Final Ten Days of Ramadan**
*Prepared for: newspaper feature · Audience: general readership · Region: West African Muslim diaspora, northern Europe*

---

**Overview**

The final ten days of Ramadan hold particular significance in Islamic practice. Muslims believe that Laylat al-Qadr — translated variously as the Night of Power, the Night of Decree, or the Night of Destiny — falls within this period, most commonly observed on the 27th night. It is considered the holiest night of the Islamic year: the night on which the first verses of the Quran were revealed to the Prophet Muhammad. Observant Muslims spend these nights in extended prayer (qiyam al-layl), Quranic recitation, and supplication. Many intensify their fasting practices and some enter a period of spiritual retreat (itikaf) within the mosque, sleeping there for the full ten days.

For the communities you are covering, this is not a public celebration — it is a period of private devotion. Arriving with cameras or recording equipment without prior agreement from community leaders will almost certainly close doors.

---

**Key Terms**

- **Laylat al-Qadr** — Night of Power/Decree. Do not abbreviate or translate loosely.
- **Qiyam al-layl** — voluntary night prayer during Ramadan. Pronounced roughly "kee-YAM al-LAYL."
- **Itikaf** — spiritual retreat within the mosque during the final ten days.
- **Tarawih** — additional nightly prayers specific to Ramadan, distinct from the final-ten-days intensification.
- **Ramadan** — not "the Ramadan." Use "during Ramadan" not "during the Ramadan."

---

**Internal Diversity**

West African Muslim communities encompass multiple traditions: Tijaniyya, Qadiriyya, and Mouride brotherhoods each have distinct liturgical practices, communal structures, and relationships with religious authority. Observance of Laylat al-Qadr may vary in form between these traditions — the night chosen, the specific prayers recited, whether the gathering is gender-mixed or separated. Do not assume the community you visit is representative of "West African Muslim practice" as a whole. Ask your key contact which tradition the community follows before your visit, and reflect that specificity in your copy.

Second-generation immigrants may also practise differently from their parents: some are more orthodox, some less so, some are navigating between the community's expectations and their own interpretation. Avoid framing this as conflict unless sources describe it that way.

---

**Relationship with Media Coverage**

Muslim communities in northern Europe have a well-documented experience of media coverage that emphasises security, extremism, or cultural incompatibility. A reporter arriving to cover a moment of private devotion may be received with suspicion, even if their intentions are respectful. Community gatekeepers — imams, community centre chairs, women's group leaders — will assess whether you can be trusted before allowing access to more candid settings.

It is worth being transparent about your publication and the story angle before your first contact, not after. Communities that have been burned by past coverage will check your previous work.

---

**Language Guide**

- Use "Muslim" not "Islamic" when referring to people (Islamic refers to the religion or civilisation as a concept).
- "Practising Muslim" is acceptable if sources use it; do not apply it as a label without context.
- Avoid "devout" as a descriptor unless a source uses it about themselves — it carries an implication of exceptionalism.
- "Mosque" is the standard English term and is preferred over "masjid" in general-readership copy unless you are quoting a source directly.
- Do not describe prayer as "chanting" — this is inaccurate and has condescending connotations.

---

**Practical Dos and Don'ts**

- Do make initial contact through the imam or community centre leadership, not by showing up unannounced.
- Do ask explicitly whether photography is welcome at any gathering you attend, and whether women may be photographed. Get permission in advance, not on the spot.
- Do offer to share your draft with a community contact for factual review before publication. This is good practice, not a concession.
- Don't schedule your visit for the 27th night itself without explicit invitation — this is the most sacred night and attendance by outsiders may not be appropriate.
- Don't conflate the final ten days of Ramadan with Eid al-Fitr (the celebration at the end of Ramadan). They are distinct in character: one is solemn and private, the other is communal and festive.

## Known Limitations
- This skill draws on Claude's training data, which has a knowledge cutoff. Religious practices evolve, community dynamics shift, and terminology preferences change — verify current usage with a community contact or a specialist academic before publication.
- For communities with limited English-language documentation, Claude's knowledge may be shallower and more prone to generalisation. This is most likely for smaller or more geographically isolated communities.
- The brief cannot replace direct consultation with community members. It is preparation for conversation, not a substitute for it.

## Related Skills
- [topic-background-brief](topic-background-brief.md)
- [political-landscape-brief](political-landscape-brief.md)
- [legal-framework-brief](legal-framework-brief.md)
- [source-cross-referencer](source-cross-referencer.md)

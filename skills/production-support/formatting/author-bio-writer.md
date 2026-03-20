---
name: author-bio-writer
status: stable
category: production-support
subcategory: formatting
version: 1.0
eval_score: 4.33
tags: [production-support, bio, author, publishing, formatting, byline]
---

# Author Bio Writer

## What This Skill Does
Writes a concise, publication-ready author bio in the appropriate register and length for the target outlet — from a one-line byline tag to a full contributor page paragraph.

## When To Use This Skill
- You need an author bio for an article submission and the publication specifies a format or word count
- You are setting up contributor profiles on a website and need consistent bios across multiple authors
- You need different versions of the same bio for different contexts (short byline, medium contributor box, long "about the author" page)
- A new contributor has joined your publication and you need to write their bio from their CV or a brief conversation

## What You Need To Provide
**Required:** The author's name; their professional role or title; 2–5 key facts about them (areas of expertise, notable career highlights, current affiliation, relevant credentials); the target length (one-line, short 30–50 words, medium 80–120 words, or long 150–250 words).

**Optional:** The publication or platform where the bio will appear; the register (formal third-person, conversational third-person, first-person); whether to include contact information, social media handles, or a personal website; a previous bio to use as a starting point; any facts to exclude (e.g., a former employer the author does not want mentioned); the article topic (so the bio can emphasize the most relevant credentials).

## How Claude Approaches This
1. **Selects the most relevant facts for the context.** A bio accompanying an article about climate policy should lead with the author's environmental reporting credentials, not their cookbook. Prioritizes the 2–3 facts that establish the author's authority on the topic at hand, then fills remaining space with broader career context.

2. **Matches the register to the publication.** A bio for a broadsheet newspaper is formal third-person ("Maria Santos is a senior correspondent..."). A bio for a personal newsletter is warm first-person ("I've spent 15 years covering..."). A bio for a digital magazine sits in between — professional but approachable. Claude matches the register to the specified publication or defaults to formal third-person if unspecified.

3. **Writes to the exact target length.** One-line bios (under 20 words) state name, title, and one distinguishing fact. Short bios (30–50 words) add the most relevant credential and current beat. Medium bios (80–120 words) include career highlights and areas of expertise. Long bios (150–250 words) can include education, awards, previous publications, and a personal detail.

4. **Avoids filler and cliches.** No "passionate about storytelling," no "award-winning" without specifying the award, no "when not writing, enjoys hiking." Every sentence conveys concrete, specific information. If the user has not provided enough facts for the target length, Claude writes the strongest bio possible at a shorter length rather than padding.

5. **Provides multiple length variants when useful.** If the user requests a medium bio, Claude also provides a one-line version as a bonus — since authors frequently need both and the one-line version can be derived directly from the medium version's most important sentence.

## Output Format
The bio text, formatted as plain prose in the specified register and length. If multiple lengths are provided, each is labeled (One-line / Short / Medium / Long). Character and word counts are noted after each version. No commentary or explanation within the bio text itself — any notes on choices made appear in a separate "Notes" section after the bio(s). Tone of the bio: professional, specific, and confident without being boastful.

## Quality Criteria
- [ ] The bio is within 10% of the requested word count — no significant over- or under-length
- [ ] The most relevant credential for the article's topic appears in the first sentence
- [ ] Register matches the target publication (formal, conversational, first-person as specified)
- [ ] No filler phrases, vague superlatives, or unsubstantiated claims ("acclaimed," "leading voice")
- [ ] Every fact in the bio was provided by the user — nothing invented or assumed
- [ ] The bio works as a standalone piece — a reader encountering only the bio understands who this person is
- [ ] Contact information and social handles are included only if the user provided them

## Example

### Input
**Author name:** Nadia Ferreira
**Role:** Freelance investigative journalist
**Key facts:**
- Covers financial crime and corporate accountability for multiple outlets
- Previously staff reporter at a national broadsheet for eight years
- Won the national press award for investigative reporting in 2023
- Currently based in Lisbon
- Holds a master's degree in journalism from a European university

**Target length:** Medium (80–120 words)
**Register:** Formal third-person
**Publication:** A general-interest magazine
**Article topic:** Corporate tax avoidance in the technology sector

### Output

**Medium bio (98 words)**

Nadia Ferreira is a freelance investigative journalist specializing in financial crime and corporate accountability. Her reporting on tax avoidance, offshore structures, and regulatory enforcement has appeared in multiple national and international publications. Before going freelance, she spent eight years as a staff reporter at a national broadsheet, where she led a series of investigations into corporate financial misconduct. In 2023, she won the national press award for investigative reporting. Ferreira holds a master's degree in journalism and is based in Lisbon. She is currently reporting on corporate tax practices in the European technology sector.

**One-line bio (16 words)**

Nadia Ferreira is a freelance investigative journalist covering financial crime and corporate accountability from Lisbon.

---

**Notes**
- The medium bio leads with "financial crime and corporate accountability" rather than a generic "investigative journalist" — this immediately establishes relevance to the article on corporate tax avoidance.
- "National broadsheet" and "national press award" kept generic as the user did not provide specific names. If the publication and award can be named, replacing these with specifics would strengthen the bio.
- The final sentence ("currently reporting on corporate tax practices in the European technology sector") ties the bio directly to the article topic, reinforcing the author's authority for this specific piece.

## Known Limitations
- Claude writes bios only from facts provided by the user. It will not invent credentials, awards, or career history. If the user provides too few facts for the requested length, the bio will be shorter than requested rather than padded with filler.
- For bios that include legal claims (e.g., "award-winning," "bestselling author"), the user is responsible for verifying the accuracy of these claims. Claude includes them as provided but cannot confirm their truthfulness.
- Author bios are inherently subjective in emphasis. Two editors might prioritize different facts from the same career. Claude makes a best-judgment selection based on the article topic and publication context, but the author should always review and approve the final version.

## Related Skills
- [manuscript-formatter](./manuscript-formatter.md) — format the full submission that accompanies this bio
- [cms-metadata-writer](./cms-metadata-writer.md) — write the metadata for the article this bio accompanies
- [press-kit-generator](../../tv-documentary/post-production/press-kit-generator.md) — generate a full press kit that may include extended bios
- [media-kit-generator](../../youtube/business/media-kit-generator.md) — create a media kit for a content creator, including bio sections

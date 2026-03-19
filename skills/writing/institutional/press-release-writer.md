---
name: press-release-writer
status: beta
category: writing
subcategory: institutional
version: 1.0
eval_score: null
tags: [press release, pr, announcement, media relations, news wire]
---

# Press Release Writer

## What This Skill Does
Drafts a complete, wire-ready press release in standard inverted-pyramid format — headline, dateline, body copy, boilerplate, and media contact block — based on the key facts you provide.

## When To Use This Skill
- You need to announce a publication, broadcast premiere, award, appointment, partnership, event, or organisational development to the press.
- You want a document a journalist can publish from with minimal rewriting, not a promotional brochure.
- You need a first draft quickly that you can then tailor to specific outlets or wire services.

## What You Need To Provide
**Required:**
- The announcement in plain language: what happened, who is involved, when it takes effect or when it is public
- The organisation or production making the announcement
- City and date of release (for the dateline)
- At least one attributed quote from a named spokesperson or participant
- Media contact details: name, email, phone number

**Optional:**
- A second quote from a partner, collaborator, or institutional figure
- Embargo date and time, if the release is not for immediate use
- Boilerplate text ("About [Organisation]") — if not provided, Claude will write a placeholder for you to complete
- Relevant links, award citations, or supporting data
- Target audience or tone guidance (trade press, general public, broadcast industry)

## How Claude Approaches This
1. Constructs a headline that states the news in one active sentence — no adjectives, no superlatives, no vague "announces exciting new."
2. Writes the opening paragraph to answer who, what, when, where, and why in under 50 words, following inverted-pyramid structure so editors can cut from the bottom.
3. Develops the body with supporting detail, integrates the provided quotes naturally (never force-fitting them), and places the most important information first throughout.
4. Closes with a boilerplate paragraph, a standard "###" end mark, and a formatted media contact block.

## Output Format
- Length: 400–600 words (headline to end mark, not counting contact block)
- Structure: Headline → Dateline → Opening paragraph (five W's) → Body paragraphs (supporting detail, quotes) → Boilerplate → ### → Media Contact block
- Tone: objective news writing register — factual, direct, no marketing language
- Language register: formal; appropriate for wire distribution and reprinting by a journalist without changes
- Formatting: all caps headline; bold dateline city; quotes in double quotation marks; "###" on its own line to signal end of release

## Quality Criteria
- [ ] The headline contains no promotional adjectives and could appear as a news headline without editing.
- [ ] The first paragraph answers who, what, when, where, and why without requiring the reader to continue.
- [ ] All quotes are attributed to a named individual with their title — no anonymous quotes, no "the organisation said."
- [ ] Body copy follows inverted-pyramid order: most newsworthy information first.
- [ ] The document ends with "###", followed by the media contact block on a new line.
- [ ] No sentence begins with "We are pleased to" or equivalent promotional phrasing.

## Example

### Input
Announcement: A documentary series about post-industrial urban regeneration has been acquired by a public broadcaster for national broadcast. Six episodes. Premiere in September.
Organisation: Groundwork Films (independent production company)
Dateline: London, 19 March 2026
Quote 1: Groundwork Films executive producer Daniela Hartmann — "This series took four years and three cities. We're glad it's finally reaching the audience it was made for."
Quote 2: Commissioning editor at the broadcaster, Yusuf Al-Rashid — "Groundwork Films brought us something rare: a story about place that is actually about people."
Boilerplate: Groundwork Films is an independent documentary production company founded in 2014, specialising in long-form social and environmental journalism. Based in London.
Media contact: Priya Menon, Head of Communications, p.menon@groundworkfilms.example.com, +44 20 7946 0031
Target audience: Broadcast trade press and general entertainment media

### Output
**GROUNDWORK FILMS' SIX-PART DOCUMENTARY SERIES ON URBAN REGENERATION ACQUIRED FOR NATIONAL BROADCAST**

**London**, 19 March 2026 — Independent production company Groundwork Films has secured a national broadcast deal for its six-part documentary series examining post-industrial urban regeneration in three British cities. The series will premiere on public television this September.

The acquisition marks the first major broadcast deal for Groundwork Films since the company's founding in 2014. Filmed over four years across communities in the north of England and the Midlands, the series follows residents, planners, and local politicians navigating the social and economic consequences of industrial decline and redevelopment.

"This series took four years and three cities," said Daniela Hartmann, Executive Producer at Groundwork Films. "We're glad it's finally reaching the audience it was made for."

The series was commissioned following an extended development process that included early support from a regional screen fund and a co-production arrangement with a European documentary broadcaster. A full broadcast schedule, including episode titles and premiere date, will be announced by the broadcaster in the coming weeks.

Yusuf Al-Rashid, Commissioning Editor at the broadcaster, said: "Groundwork Films brought us something rare: a story about place that is actually about people. The series works as journalism and as television."

Groundwork Films retains international distribution rights. Discussions with streaming platforms and festival programmers are ongoing.

---

*Groundwork Films is an independent documentary production company founded in 2014, specialising in long-form social and environmental journalism. Based in London.*

###

**Media Contact**
Priya Menon, Head of Communications
p.menon@groundworkfilms.example.com
+44 20 7946 0031

## Known Limitations
- Quotes must be provided by you — Claude will not invent quotes, even as placeholders. A press release with fabricated attribution is a professional and legal liability.
- Does not know your organisation's house style, wire service requirements (AP, Reuters, PA), or specific outlet formatting rules. Review the output against the target outlet's style guide before sending.
- If the announcement involves legal, financial, or regulatory information (share prices, clinical trial outcomes, legal proceedings), the output must be reviewed by qualified legal or compliance staff before distribution. Claude does not provide legal advice.
- For embargoed releases, Claude will add an embargo notice if you provide the time, but responsibility for managing embargo compliance rests with your communications team.

## Related Skills
- [media-advisory-writer](./media-advisory-writer.md)
- [press-kit-generator](../../tv-documentary/post-production/press-kit-generator.md)
- [press-release-writer](../../media-business/distribution/press-release-writer.md)

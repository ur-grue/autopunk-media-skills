---
name: boilerplate-writer
status: stable
category: pr-communications
subcategory: press-office
version: 1.0
eval_score: 4.6
tags: [pr, boilerplate, press-office, about, organisation]
---

# Boilerplate Writer

## What This Skill Does
Writes a standard "About [Organisation]" boilerplate paragraph for use at the foot of press releases, media statements, and all official communications materials.

## When To Use This Skill
- You are creating a press release and need a consistent "About" paragraph for the first time
- Your existing boilerplate has become outdated (new CEO, expanded territory, changed mission)
- You need multiple boilerplates at different lengths — long (for press kits), standard (for press releases), short (for social media bios and email signatures)
- A new subsidiary, product line, or partner organisation needs its own boilerplate

## What You Need To Provide
**Required:** Organisation name; what the organisation does (one sentence); when it was founded; where it operates (geography); size or scale indicator (number of employees, clients served, revenue, locations — at least one concrete figure); website URL.

**Optional:** Mission statement or founding purpose; notable clients, partners, or certifications; recent recognition or awards; parent company or subsidiary relationship; stock ticker if publicly listed; tone guidance (formal / conversational / mission-driven).

## How Claude Approaches This
1. Opens with the full legal or trading name of the organisation, followed immediately by a one-clause description of what it does and for whom.
2. Adds concrete scale indicators (founding year, geographic reach, headcount, revenue range, or clients served) to give the boilerplate credibility and prevent it from reading as empty marketing.
3. Closes with the website URL in parentheses or as a standalone line, formatted consistently with standard wire-service conventions.
4. If multiple lengths are requested, produces all variants from the same input, ensuring each is a complete standalone sentence — not a truncated longer version.

## Output Format
Three variants delivered as standard unless otherwise specified: **Standard** (40–60 words, one paragraph, full description); **Short** (20–30 words, for footnotes and email signatures); **Long** (80–120 words, for press kit About pages). All in third person. No first-person language. No exclamation marks. No "world-leading" or "industry-leading" unless a source is given. Tone: professional, factual, unexcited.

## Quality Criteria
- [ ] Organisation name appears in full on first use
- [ ] What the organisation does is clear in the first clause
- [ ] At least one concrete scale indicator (date, size, geography, or volume)
- [ ] Website URL is present
- [ ] No unsupported superlatives
- [ ] Third person throughout
- [ ] Standard version is 40–60 words

## Example

### Input
Organisation name: Fernwood Institute
What it does: Provides professional development training for public sector managers across the United Kingdom
Founded: 2004
Geography: UK-wide; some international delivery in Ireland and Canada
Size: 220 staff, 18,000 professionals trained per year
Website: www.fernwoodinstitute.example.co.uk
Tone: Professional but accessible — not dry and corporate
Notable: Accredited by the Chartered Management Institute

### Output
**Standard (52 words)**
Fernwood Institute is a UK-based professional development organisation that trains public sector managers at all career levels. Founded in 2004 and accredited by the Chartered Management Institute, Fernwood delivers programmes to more than 18,000 professionals each year across the United Kingdom, Ireland, and Canada. (www.fernwoodinstitute.example.co.uk)

**Short (26 words)**
Fernwood Institute is a UK professional development organisation training more than 18,000 public sector managers annually. Accredited by the Chartered Management Institute. (www.fernwoodinstitute.example.co.uk)

**Long (98 words)**
Fernwood Institute is a UK-based professional development organisation dedicated to strengthening leadership capability across the public sector. Founded in 2004, Fernwood delivers accredited management training to more than 18,000 professionals per year at every career stage — from new team leaders to senior directors. Programmes are delivered in person and online across the United Kingdom, with international delivery in Ireland and Canada. Fernwood is accredited by the Chartered Management Institute and employs 220 staff across its UK offices. (www.fernwoodinstitute.example.co.uk)

## Known Limitations
- Claude cannot verify whether stated figures (employee count, clients served, accreditations) are current — all boilerplate text must be approved by the communications team before use.
- If the organisation has changed significantly (merger, rebrand, leadership change, new geography), the output will only reflect what is provided in the input; outdated inputs produce outdated boilerplate.
- For publicly listed companies, the boilerplate may need a legal review to ensure it does not constitute a forward-looking statement or selective disclosure.

## Related Skills
- [press-release-writer](./press-release-writer.md)
- [media-alert-writer](./media-alert-writer.md)

---
name: grant-proposal-writer
status: stable
category: tv-documentary
subcategory: business
version: 1.0
eval_score: 4.4
tags: [documentary, business, funding, grants, development-finance]
---

# Grant Proposal Writer

## What This Skill Does
Writes a competitive grant proposal narrative for a documentary project, structured to match the stated criteria of a documentary fund or foundation brief.

## When To Use This Skill
- You are applying to a documentary development or production fund and need a written proposal narrative
- You have a project concept but are unsure how to frame it in the specific language that grant committees respond to
- You need to translate your creative vision into the impact, public-interest, and editorial-value language that funders require
- You have applied before and been rejected; you want a fresh approach to the narrative

## What You Need To Provide
**Required:**
- Project title and a clear description of the film (subject, approach, structure)
- The funder name and, if available, their stated funding priorities or criteria (paste directly from their guidelines)
- Format and runtime
- Your production company name (or "independent producer")
- Stage of production you are applying for (development, pre-production, production, post-production)

**Optional:**
- Budget or amount being requested
- What is already in place (access, talent, co-finance, prior development support)
- The social, cultural, or editorial case for the film (why this matters beyond the story itself)
- Word limit or specified sections from the fund's application form
- Any previous feedback received from this or similar funds

## How Claude Approaches This
1. Reads the funder's stated priorities and maps the project's strongest attributes against those criteria — identifying the best alignment points before writing a single word of proposal copy
2. Frames the project opening around the funder's language: if the fund prioritizes "public interest journalism," leads with that; if it prioritizes "underrepresented voices," leads with access and character; if it prioritizes "innovation in form," leads with approach
3. Builds the core proposal narrative: what the film is, why it is needed, how it will be made, what it will achieve — structured so each section answers an implied evaluator question
4. Closes with a credibility and feasibility section: what is already in place, why this team can deliver, and what the grant enables that would otherwise not happen
5. Flags any areas where the user has not provided enough information to write a strong section, suggesting what evidence or language would strengthen the case

## Output Format
- Length: 600–900 words (unless fund specifies a different limit — if so, user should state the limit)
- Structure: Project Statement → Why Now / Why This Funder → The Film → Approach & Form → Impact & Audience → Credibility & Feasibility → Use of Funds
- Tone: serious, evidence-oriented, specific — not breathless or promotional
- Written in first person plural ("we are developing," "our approach") unless the fund specifies otherwise
- No headers required in the final output — proposal text should flow as connected paragraphs unless the application form requires section headers

## Quality Criteria
- [ ] The opening paragraph names the project, the subject, and the public-interest case in the first three sentences
- [ ] Every major claim about the film's importance is followed by a specific piece of evidence or context (not assertion alone)
- [ ] The proposal uses at least one phrase or framing directly drawn from the funder's stated priorities
- [ ] The credibility section is specific: names real attachments, real prior support, or real access — not generic capability claims
- [ ] The closing paragraph states clearly what the grant will make possible — not just what the project is, but what the money does

## Example

### Input
- **Title:** Parallel Lines
- **Description:** A documentary following three public defenders in an overloaded urban court system over two years. The film examines systemic underfunding of public defense through the daily experience of individual lawyers — not through policy argument but through the texture of their working lives: the cases they lose they shouldn't, the clients they cannot adequately serve, the personal cost of doing this work indefinitely.
- **Funder:** Sundance Institute Documentary Fund
- **Fund priorities stated:** "We support documentary films with compelling characters, strong cinematic vision, and the potential to deepen public understanding of urgent social issues."
- **Format:** Single film, 90 minutes
- **Stage:** Development
- **Production company:** Riverfront Films
- **In place:** Director attached, two of three subjects confirmed with signed release agreements, one development workshop slot already awarded by a regional film center
- **Budget requested:** $35,000 development grant
- **Word limit:** Not specified

### Output

**PARALLEL LINES — Grant Proposal Narrative**
*Submitted to the Sundance Institute Documentary Fund · Development Stage · Riverfront Films*

---

*Parallel Lines* is a feature documentary about three public defenders working in the same overburdened urban courthouse — and about what it looks like, in granular human detail, when a foundational institution of democratic justice runs out of time and money for the people it is supposed to protect.

The film does not begin with a policy argument. It begins with a Monday morning. Three lawyers, three case files already too large to read before the hearing starts, and a system that will require each of them to make decisions today that no lawyer should be asked to make. Over two years, *Parallel Lines* follows these three figures through the full arc of cases that arrive, proceed, and resolve — or do not — and through the personal accumulation of a job that asks everything and funds almost nothing.

The public-interest case for this film is specific: the underfunding of public defense in the United States is among the least visible structural failures in the justice system, not because it is obscure but because it is chronic. Chronic failures rarely generate the narrative clarity that moves public understanding. *Parallel Lines* provides that clarity — not through argument or advocacy, but through the kind of long-form character access that allows an audience to understand a system by inhabiting the experience of the people who hold it together.

Cinematically, the film operates in the observational tradition: real time, real rooms, real decisions. There is no reconstruction, no expert commentary, no didactic narration. The camera earns access through sustained presence — the two confirmed subjects have signed release agreements following an eight-month relationship-building process led by the director. A third subject is in final negotiation. The film's approach is demanding precisely because it refuses shortcuts: the audience understands the system because they have spent ninety minutes watching three people navigate it.

Riverfront Films brings this project to the Sundance Institute Documentary Fund at development stage with meaningful structural foundations already in place. The director has a prior feature documentary credit and a demonstrated track record of long-term observational access work. The project received a development workshop slot from [regional film center] in the prior cycle, validating both the concept and the team's capacity to execute it. Two of three subjects have confirmed participation in writing.

The requested $35,000 in development funding will enable three specific deliverables: completion of subject access for the third public defender; production of a 10-minute development cut for use in co-production and broadcast conversations; and development of the film's visual approach through a two-week observational shooting period with confirmed subjects. Without this funding, the project cannot move from confirmed concept to demonstrable film — the development cut is the essential instrument for every subsequent financing conversation.

We are developing *Parallel Lines* because we believe documentary film remains one of the few forms capable of making systemic failure legible at the level of individual human experience. This is a film that can deepen public understanding of an urgent social issue — and we are asking the Sundance Institute Documentary Fund to help us build the foundation that makes it possible.

## Known Limitations
- Claude does not know the specific application history or current priorities of real funders — statements like "this fund responds to X" should be verified against the actual current cycle guidelines before submission
- Grant proposals require specific evidence of access, prior funding, and team credibility; Claude will write strong narrative around what the user provides, but cannot invent credentials — vague inputs produce vague credibility sections
- Word limits and required section headers vary widely by fund; the default output may need to be restructured to match the actual application form
- This skill produces the narrative section of a proposal, not the full application package (budget forms, CVs, technical specifications)

## Related Skills
- [broadcaster-pitch-writer](../business/broadcaster-pitch-writer.md)
- [co-production-brief](../business/co-production-brief.md)
- [pitch-treatment-writer](../development/pitch-treatment-writer.md)

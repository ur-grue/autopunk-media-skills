---
name: coverage-report-writer
status: stable
category: screenwriting
subcategory: revision
version: 1.0
eval_score: 4.5
tags: [screenwriting, revision, coverage, script-notes, development]
---

# Coverage Report Writer

## What This Skill Does
Writes a structured script coverage report — logline, synopsis, breakdown scores, and written evaluation of premise, structure, character, dialogue, and marketability — in the industry-standard format used by development executives and script readers.

## When To Use This Skill
- You are a producer, development exec, or reader who needs to produce coverage for a script under consideration
- You are a screenwriter who wants to self-generate coverage as a development tool before submitting to a company
- You are running a screenwriting lab, fellowship, or competition and need standardized reader reports
- You want to benchmark a draft against professional reader criteria before the draft goes out to industry contacts

## What You Need To Provide
**Required:** Full script synopsis or detailed act-by-act breakdown; title, writer, format (feature/pilot/series), draft date; brief description of the script's genre and premise
**Optional:** The target company or slate (informs marketability assessment); comparable titles mentioned in the script or by the writer; any prior feedback the writer has received; the reader's recommendation context (is this unsolicited or a requested read?)

## How Claude Approaches This
1. Produces the standard header block used across the industry: title, writer, format, pages (if known), genre, draft date, date of coverage, reader (left blank or as specified), and the grid of one-word ratings (Pass / Consider / Recommend) for premise, structure, character, dialogue, and overall
2. Writes a one-sentence logline, then a synopsis of approximately 400 words covering the full story including the ending — unlike a one-pager, coverage is an internal document and always spoils the resolution
3. Writes a comments section structured as: premise evaluation, structural analysis, character assessment, dialogue quality, marketability/commercial context, and overall recommendation — each as a short, headed paragraph
4. Closes with the final recommendation box: **Pass**, **Consider**, or **Recommend**, with one sentence of justification

## Output Format
Standard industry coverage format. Header grid (title/writer/format/pages/genre/draft/date/reader), logline (1 sentence), synopsis (~400 words, present tense, full spoilers), comments section (5–6 headed paragraphs, 80–120 words each), final recommendation box. Total length: approximately 900–1,100 words. Tone: professional, direct, critical but constructive. The comments section should be honest enough to be useful to a development executive deciding whether to pursue a project, and specific enough to be useful to a writer in revision.

## Quality Criteria
- [ ] Header block includes all standard fields (title, writer, format, genre, draft date, coverage date, reader)
- [ ] Rating grid covers all five standard categories: premise, structure, character, dialogue, overall
- [ ] Synopsis covers the full story including Act 3 resolution — no "see attached" or deliberate omissions
- [ ] Each comments paragraph addresses its stated topic specifically — structural notes must cite specific acts or turning points, not general impressions
- [ ] Recommendation is Pass, Consider, or Recommend — no hedged fourth options
- [ ] The overall recommendation is consistent with the tone and content of the comments section

## Example

### Input
**Title:** THE QUIET INHERITANCE
**Writer:** Marcus Lee
**Format:** Feature film
**Draft:** Third draft, January 2026
**Genre:** Drama / Family
**Pages:** 98
**Synopsis:** Elliot, 42, returns to his childhood home in rural Ontario after his father's death to discover his father had been secretly supporting a second family — a woman named Ruth and her adult son, Daniel, who believes he is entitled to an equal share of the estate. The story follows Elliot and Daniel's antagonism, their gradual recognition of shared grief, and a final mediation scene in which neither gets what they came for but both understand something they didn't before.

**Act breakdown:**
- Act 1: Elliot arrives, meets the solicitor, discovers the second family's existence. His sister, Petra, already knew and has been protecting him.
- Act 2: Elliot confronts Daniel; Daniel is combative and legally informed; the family home becomes the central object of contest. Ruth stays silent. Petra reveals she met their father's second family six years ago and chose not to tell Elliot.
- Act 3: Legal mediation. The estate is split. Elliot doesn't fight it. He asks Daniel one question about their father. The answer is the same answer Elliot would have given. The film ends before either leaves the room.

**Comparable titles:** Ordinary People, The Descendants, Winter's Bone (emotional register, not plot)
**Your reading context:** Requested read — submitted to consider for a co-production development slate

### Output

---

**COVERAGE REPORT**

| | |
|---|---|
| **Title** | THE QUIET INHERITANCE |
| **Writer** | Marcus Lee |
| **Format** | Feature Film |
| **Pages** | 98 |
| **Genre** | Drama / Family |
| **Draft Date** | January 2026 |
| **Coverage Date** | March 2026 |
| **Reader** | — |

| Premise | Structure | Character | Dialogue | Overall |
|---------|-----------|-----------|----------|---------|
| Consider | Consider | Recommend | Recommend | Consider |

---

**Logline**
When a man returns home to settle his estranged father's estate, he discovers a second family he never knew about — and finds that the half-brother contesting the inheritance is grieving the same man he is, just differently.

---

**Synopsis**
ELLIOT, 42, drives to his childhood home in rural Ontario three days after his father's death. He expects a straightforward probate process. What he finds instead is a solicitor who is managing two separate estate claims: Elliot's, and that of RUTH, 58, a woman who lived with Elliot's father in a house forty minutes away for the past nineteen years, and her adult son DANIEL, 28, who is articulate, prepared, and legally informed.

Elliot's sister PETRA was already at the house when he arrived. She already knew. She has known for six years. She chose not to tell him.

The first confrontation between Elliot and Daniel establishes the dynamic: Daniel is not aggressive but he is not soft. He believes he has a legitimate claim. He does. Elliot is rattled not by the legal dispute but by the evidence that his father built a full life alongside the one Elliot thought was the real one. Ruth is present but almost entirely silent. She made her peace with the situation before the will was read.

Act Two is the contest for the house — the childhood home that Elliot associates with his own history and Daniel has apparently visited multiple times. A structural engineer's report becomes a plot object; an old photograph surfaces; Petra confesses that she found the second family not by accident but because she was looking, having suspected something for years. The revelation changes how Elliot understands the last decade of his relationship with his father: the distance, the incomplete conversations, the sense that he was being handled.

The legal mediation takes place in a solicitor's boardroom. The estate is divided equally. Elliot does not contest it. He is not defeated — he simply stops fighting a legal battle to avoid an emotional one. Before they leave, he asks Daniel a single question: *"What did he talk about when he talked about the future?"* Daniel's answer — that their father talked about going back to the lake where he grew up, and teaching someone to fish properly — is the same answer Elliot would have given. The film ends before either man leaves the room.

---

**Comments**

**Premise**
The setup is strong and the thematic territory — plural grief, the secrets that hold families together and the secrets that fracture them — is rich. The complication of Petra knowing in advance adds a second layer of betrayal that is more interesting than the second-family revelation itself. The premise earns its Consider: it is genuinely compelling but the story as structured does not fully exploit the Petra element. Her choice to protect Elliot is the most ethically complex act in the script and it is resolved too quietly in Act Two.

**Structure**
The three-act structure is clean and the page-count economy is tight for a drama of this emotional density. The Midpoint is correctly located: the photograph scene lands at page 51 and genuinely reframes what has come before. The single structural weakness is the Act Two low point — Elliot's isolation scene following Petra's confession is underwritten and functions more as a pause than a beat. It is the one moment in the script where the writer appears to have held back.

**Character**
The script's primary strength. Elliot is not a passive protagonist — his apparent passivity is the character's chosen strategy, and the script is aware of this distinction throughout. Daniel is the most difficult character to write in this type of story (the antagonist the writer wants the audience to sympathize with) and Lee achieves it: Daniel is genuinely right, and genuinely in pain, and these two facts are not softened into each other. Ruth's near-silence is a deliberate choice that mostly works; there is one scene in Act Two where she should speak and does not, and the script feels it.

**Dialogue**
The script's cleanest achievement. Every character has a distinct register. Daniel speaks in complete sentences, with precision; Elliot speaks in short clauses that avoid completion; Petra speaks too quickly and too brightly, which is its own form of evasion. The mediation scene dialogue is excellent — specific, controlled, and without the sentimentality that this type of climax often collapses into.

**Marketability**
This is a mid-budget co-production drama that would perform well in the festival circuit and with specialist theatrical distributors. The comparables cited by the writer are appropriate in emotional register if not in commercial scale. The material is not difficult; it is quiet, which is a different challenge in the marketplace. A strong lead performance in the Elliot role would be the determining commercial factor. Suitable for a development slate targeting prestige drama with awards ambitions.

**Recommendation**

**CONSIDER**

THE QUIET INHERITANCE is a carefully written, emotionally mature drama with exceptional dialogue and at least two characters — Elliot and Daniel — who are working at a high level. The script's weakest element is structural: the Petra subplot is under-exploited given the weight it is asked to carry thematically. Recommend to writer for one further pass focused on Act Two's low point and the Petra resolution before external submission.

---

## Known Limitations
- Coverage quality is directly proportional to synopsis quality — a vague or incomplete act breakdown will produce coverage with similarly vague structural analysis; the skill cannot evaluate a script it has not been given
- The marketability section reflects general industry patterns, not a specific company's current slate priorities; writers submitting to a company with a known focus (e.g., horror genre, international co-productions) should specify this context to get a relevant marketability note
- The skill produces coverage in a standard format; some production companies use proprietary formats with different sections, rating systems, or length requirements — check the target company's house style before submitting

## Related Skills
- [script-notes-writer](./script-notes-writer.md)
- [one-pager-writer](../production/one-pager-writer.md)
- [treatment-writer](../development/treatment-writer.md)

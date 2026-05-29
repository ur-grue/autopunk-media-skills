---
name: documentary-development-agent
type: agent
status: stable
version: 1.0
eval_score: 4.81
maxTurns: 20
allowedTools:
  - Read
  - Write
  - Edit
  - Glob
  - Grep
disallowedTools: []
skills:
  - logline-creator
  - pitch-treatment-writer
  - series-bible-generator
  - broadcaster-pitch-writer
  - festival-synopsis-writer
tags: [documentary, development, pitching, agent, workflow]
---

# Documentary Development Agent

## What this agent does
Takes a one-line documentary idea and produces a complete development package — logline, pitch treatment, broadcaster pitch, and festival synopses — ready to send to commissioners, funders, or festival programmers.

## When to use this agent
- You have a documentary concept and want to go from idea to pitch-ready package in a single session
- You are preparing for a round of broadcaster meetings and need all the standard documents assembled and tonally consistent
- You have been asked to submit a development package at short notice — this agent produces the full set in the right order, with each document informed by the ones before it
- You want to develop a series concept into a complete bible-plus-pitch package without running each skill separately

## What you need to provide
**Required:**
- A description of the documentary idea (at least 2–3 sentences: what the film is about, who is at the center, what happens or what is at stake)
- Intended format: feature documentary, short documentary, or series (if series: number of episodes and approximate runtime)
- Intended buyer: broadcaster (name or type), streamer, film fund, or festival circuit

**Optional:**
- Tone references (other films or series this resembles)
- Key subjects or characters already identified
- Access already secured or being negotiated
- Production stage (early development, late development, pre-production)
- Any existing materials — a logline you want to improve, a treatment draft that needs sharpening

## Skills this agent composes

| Step | Skill | What it produces | Condition |
|------|-------|-----------------|-----------|
| 1 | [logline-creator](../skills/tv-documentary/development/logline-creator/SKILL.md) | 4–6 logline options across different formats and contexts | Always |
| 2 | [pitch-treatment-writer](../skills/tv-documentary/development/pitch-treatment-writer/SKILL.md) | Full pitch treatment (600–900 words) with narrative arc, characters, visual approach | Always |
| 3 | [series-bible-generator](../skills/tv-documentary/development/series-bible-generator/SKILL.md) | Complete series bible with episode breakdowns and commissioning language | Only if the project is a series |
| 4 | [broadcaster-pitch-writer](../skills/tv-documentary/business/broadcaster-pitch-writer/SKILL.md) | Two-page broadcaster pitch document tailored to the target buyer | Always |
| 5 | [festival-synopsis-writer](../skills/tv-documentary/localization/festival-synopsis-writer/SKILL.md) | Short (50-word), medium (100-word), and long (250-word) festival synopses | Always |

## How the agent works

### PLANNING mode

When the agent receives a brief, it:
1. Reads the brief and identifies the documentary's format, buyer context, and development stage
2. Selects which skills to invoke — all five for a series project, four (skipping series-bible-generator) for a single film or short
3. Determines the best logline emphasis for step 1 based on the buyer context (broadcaster-first, festival-first, or balanced)
4. Identifies information gaps in the brief that will weaken specific steps — and flags these before starting
5. Presents a numbered plan showing each step, the skill it uses, what it will produce, and how it connects to the next step
6. Waits for user approval before proceeding

The plan output looks like this:
```
DEVELOPMENT PLAN for [working title or concept summary]

Format: [feature / series / short]
Primary buyer context: [broadcaster / streamer / fund / festival]

Step 1: logline-creator — Generate logline options emphasizing [buyer-specific angle]
Step 2: pitch-treatment-writer — Full treatment anchored on the selected logline
Step 3: series-bible-generator — Series bible with episode breakdowns [INCLUDED / SKIPPED: single film]
Step 4: broadcaster-pitch-writer — Two-page pitch tailored for [target buyer]
Step 5: festival-synopsis-writer — Three synopsis lengths for submission platforms

Information gaps that may affect output quality:
- [any missing inputs flagged here]

Estimated output: A complete development package containing [list of documents].
Each document builds on the previous one — the logline anchors the treatment,
the treatment feeds the pitch, and the synopses distill the whole package.

Approve this plan? (yes / adjust / skip steps)
```

### EXECUTION mode

After the user approves the plan, the agent:
1. Runs logline-creator and presents the options — the user selects or adjusts a preferred logline before proceeding
2. Runs pitch-treatment-writer using the selected logline and the full brief as input
3. If the project is a series, runs series-bible-generator using the treatment as input
4. Runs broadcaster-pitch-writer using the logline, treatment summary, and buyer context
5. Runs festival-synopsis-writer using the treatment and logline as source material
6. Assembles all outputs into a single development package with a cover summary and a recommended submission sequence

The user can interrupt between any two steps to adjust direction, change emphasis, or add information that emerged during an earlier step.

## Output format
A single assembled document titled **DEVELOPMENT PACKAGE: [Working Title]**, containing:

1. **Cover summary** (100 words) — what the package contains and the recommended order of use
2. **Logline** — the selected logline from step 1, plus the next-best alternative for different contexts
3. **Pitch Treatment** — the full treatment from step 2
4. **Series Bible** — if applicable, the complete bible from step 3
5. **Broadcaster Pitch** — the two-page pitch document from step 4
6. **Festival Synopses** — the three synopsis lengths from step 5
7. **Submission Roadmap** — a brief closing note recommending which document to send first, to whom, and what to hold back for follow-up meetings

Total length: 2,500–4,500 words depending on format (series packages are longer). Tone is consistent across all sections — the same project voice runs through every document.

## Quality criteria
- [ ] Each skill output meets its own quality standard independently
- [ ] The assembled deliverable reads as a coherent package, not a stack of separate outputs
- [ ] The logline selected in step 1 is recognizably present — in substance, not verbatim — in the treatment, pitch, and synopses
- [ ] Transitions between sections produced by different skills are smooth and consistent
- [ ] The deliverable is complete enough to hand to a commissioner or funder without major revision
- [ ] Tone, register, and terminology are consistent across all sections
- [ ] The agent stayed within its declared skills array — no undeclared skill invocations
- [ ] Output is free of generic AI-template phrasing
- [ ] The series-bible-generator was invoked if and only if the project is a series
- [ ] The submission roadmap gives specific, actionable next steps — not generic advice

## Example

### Brief (user input)
I have a documentary idea. Three retired circus performers — a trapeze artist, a clown, and an animal trainer — reunite after thirty years to visit the site where their circus's permanent tent stood before it was demolished for a shopping complex. The film follows their return visit, their memories of performing, and what happened to each of them after the circus closed. It's a feature documentary, about 80 minutes. I want to pitch it to European public broadcasters — ARTE or the BBC Storyville strand. Observational and intimate in tone, something like "Buena Vista Social Club" but for circus.

### Plan (PLANNING mode output)

```
DEVELOPMENT PLAN for "Three retired circus performers reunite at their demolished venue"

Format: Feature documentary (~80 minutes)
Primary buyer context: European public broadcaster (ARTE, BBC Storyville)

Step 1: logline-creator — Generate logline options emphasizing the human story
        and the European authorial-documentary register that ARTE and Storyville
        commission. Prioritize the reunion structure and the loss/memory theme
        over spectacle.

Step 2: pitch-treatment-writer — Full treatment built around the reunion as
        narrative spine. Will establish the three characters, the timeline
        (return visit as present-tense action, circus years as memory layer),
        visual approach, and the "Buena Vista Social Club" tonal register.

Step 3: series-bible-generator — SKIPPED. Single feature film.

Step 4: broadcaster-pitch-writer — Two-page pitch for European public
        broadcasters. Will position the project against ARTE's authored
        documentary strand and Storyville's character-led international slate.
        Comps section will reference "Buena Vista Social Club" and one or two
        recent European documentaries in a similar register.

Step 5: festival-synopsis-writer — Three synopsis lengths (50 / 100 / 250
        words) for festival submission platforms. Will write as if the film
        is completed — standard convention for festival synopses even at
        development stage, unless you prefer WIP framing.

Information gaps that may affect output quality:
- Character names and specific biographical details will strengthen Steps 2
  and 4; without them, the treatment and pitch will use type descriptions
  ("the trapeze artist," "the clown") which are functional but less vivid.
- The location of the demolished venue (country, city) would sharpen the
  visual and cultural specificity across all documents.

Estimated output: A four-document development package (logline, treatment,
broadcaster pitch, festival synopses) plus a submission roadmap. Each
document builds on the previous one.

Approve this plan? (yes / adjust / skip steps)
```

### Deliverable (EXECUTION mode output)

---

**DEVELOPMENT PACKAGE: THE LAST TENT**

---

**Cover Summary**

This package contains a development set for *THE LAST TENT*, a feature documentary (~80 minutes) following three retired circus performers who reunite after thirty years at the site of their demolished permanent venue. The package includes: a logline, a full pitch treatment, a broadcaster pitch for European public broadcasters, and festival synopses in three lengths. Start with the broadcaster pitch for initial outreach; hold the treatment for follow-up meetings; use the synopses for festival submissions once production is underway.

---

**Logline**

*Primary (broadcaster context):*
Thirty years after their circus closed, a trapeze artist, a clown, and an animal trainer return to the site where the tent once stood — now a shopping complex — to remember the life they shared and reckon with the lives they built after it ended.

*Alternative (festival context):*
Three retired circus performers walk through a shopping complex built on the ground where they once performed. What they remember — and what they have become — is the subject of this film.

---

**Pitch Treatment**

**Logline**
Thirty years after their circus closed, a trapeze artist, a clown, and an animal trainer return to the site where the tent once stood — now a shopping complex — to remember what they shared and reckon with what came after.

**Overview**

Every circus ends. What *The Last Tent* asks is what happens to the people who made it their life when it does.

Three performers — Marta, who flew trapeze from the age of fourteen; Piotr, who spent twenty-two years as the company's principal clown; and Hélène, whose act with a troupe of trained dogs was the show's reliable closer — have not seen each other in three decades. The circus they worked for, a mid-sized permanent company based in a Central European industrial city, closed in the early 1990s when its venue was sold to a property developer. The tent came down. A shopping complex went up. The three performers scattered into unrelated lives.

*The Last Tent* follows their reunion. We film the return visit — a day spent walking the shopping complex, eating in a café that occupies the approximate footprint of the old backstage area, and sitting together in a hotel room watching footage from the final season that Marta kept on VHS. We intercut their present-day conversations with scenes from the individual lives they built afterward: Marta teaches gymnastics at a secondary school; Piotr runs a small hardware shop and performs at children's parties on weekends; Hélène breeds dogs and has not watched a circus performance since the closure.

**Narrative Arc**

The film opens in the present: Marta, alone, takes a train to the city she hasn't visited in thirty years. She walks through the shopping complex without speaking. We don't know yet what she's looking for.

In the first act, the three performers meet — awkwardly, warmly, with the self-consciousness of people who once knew each other's bodies and timing intimately and now barely recognize each other. The film establishes who they were and what the circus was to them: not a career but a complete world.

The second act is the return visit itself. Walking the site, they reconstruct the layout of the venue from memory — here was the ring, here was the rigging, here was the animal pen. The gap between what they describe and what surrounds them is the film's central visual tension. Archive footage and photographs, held by Marta in a shoebox, are introduced as memory evidence.

The third act turns inward. Back in the hotel, the conversation shifts from the circus to the aftermath — what each of them lost when it ended, and what they found. Piotr is the most open about the difficulty of reinvention; Hélène is the most guarded. Marta says something the film has been building toward: that the hardest part was not losing the circus, but losing the daily certainty of knowing exactly what she was for.

The film ends the following morning. They part at the train station. No promises to stay in touch. The final shot holds on the shopping complex in early daylight, empty of the story it briefly held.

**Key Subjects**

**Marta, former trapeze artist.** Now sixty-one, a gymnastics teacher at a state school. Precise, composed, and still visibly a physical performer — she occupies space with the economy of someone trained to work in the air. She kept the archive. She organized the reunion. She is the film's quiet engine.

**Piotr, former clown.** Sixty-four, running a hardware shop in a different city. The most emotionally available of the three — talks freely about what the circus meant and what its loss cost him. Still performs at children's parties on weekends, which he describes without irony and with obvious pleasure.

**Hélène, former animal trainer.** Fifty-nine, a dog breeder who has not watched a live circus since the closure. The most resistant to nostalgia. Her presence in the film is the counterweight — she loved the work, but she will not romanticize it.

**Visual Approach**

The film holds two visual registers. The present is shot observationally: available light, long takes, no direction. The three performers are followed as they move through the city and the site. The past is evoked through Marta's archive — VHS footage, photographs, programme booklets — integrated as material objects, handled on screen, not digitized into slick montage. The tension between the two registers — the worn physicality of the archive and the clean, anonymous architecture of the shopping complex — carries the film's argument about what replaces what.

No narrator. No interview setup. All speech is in conversation between the three subjects, or in direct address to the camera during moments of reflection that arise naturally.

**Why Now / Production Context**

The three performers are now in their late fifties and sixties. Their physical memories of performing — the specific, embodied knowledge of what it felt like — are still accessible but will not be indefinitely. The wider context is a European conversation about the disappearance of traditional cultural forms and the landscapes they occupied. *The Last Tent* is in early development. The director has met all three subjects and received their agreement in principle to participate. Filming is proposed over a concentrated four-week period. We are seeking development support to fund the reunion visit and a pilot shoot.

---

**Broadcaster Pitch**

**THE LAST TENT**
*A documentary film · ~80 minutes · [Production Company]*

---

**Logline**
Thirty years after their circus closed, three retired performers return to the site where the tent once stood — now a shopping complex — to remember the life they shared and confront the lives they built without it.

**Why Now**
Across Europe, the permanent circuses, variety halls, and touring tent shows that once defined popular entertainment have almost entirely disappeared. The buildings are gone. The performers are aging. *The Last Tent* captures something that is about to become unreachable: the living, embodied memory of a world that existed in specific bodies, in a specific place, and cannot be reconstructed from archive alone.

**The Story**
A trapeze artist, a clown, and an animal trainer — now in their late fifties and sixties — reunite for the first time in thirty years at the site of the circus where they spent the most productive decades of their lives. The venue was demolished in the early 1990s; a shopping complex occupies the ground. Over one day, the three walk the site, reconstruct the layout from memory, watch archive footage together, and talk — about the work, about what it meant, and about the very different lives they built after it ended.

The film is not a eulogy. It is a sharp, warm, unsentimental portrait of three people confronting the distance between who they were and who they became — set against a landscape that has physically erased the evidence of their former lives.

**Approach**
Observational. No narrator, no reconstruction. Present-tense footage intercut with the archive material the subjects themselves hold. The visual argument — memory against architecture, the handmade against the commercial — is the film's structural spine.

**Comparable Titles**
*Buena Vista Social Club* (Wim Wenders, 1999) — for the reunion structure, the warmth, and the theme of rediscovering performers after decades of absence. *Goodnight Irene* (IDFA 2023) — for the observational intimacy and the willingness to let aging performers speak on their own terms.

**Production Status**
- Stage: Early development
- Director: Attached (available on request)
- Subjects: All three confirmed in principle
- Financing: Seeking lead broadcast partner; targeting ARTE or BBC Storyville
- Estimated budget: €350K–€500K (formal budget on request)

We are seeking a development conversation with [broadcaster] as a potential lead commissioner. Full treatment, director's statement, and archive samples available on request.

---

**Festival Synopses**

**SHORT** *(50 words — for: Sundance, IDFA, Hot Docs short synopsis field)*

A trapeze artist, a clown, and an animal trainer reunite thirty years after their circus closed. The venue is now a shopping complex. Over one day, they walk the site, watch old footage, and talk about the lives they built after the tent came down.

*(49 words)*

**MEDIUM** *(100 words — for: festival catalog, press kit, screener platforms)*

Three retired circus performers — a trapeze artist, a clown, and an animal trainer — reunite after thirty years at the site of the permanent circus where they spent their working lives. The venue was demolished in the early 1990s; a shopping complex stands in its place.

Over one day, the three walk the ground, reconstruct the layout from memory, and watch archive footage one of them has kept in a shoebox for three decades. *THE LAST TENT* is a film about what remains when the place that held your life is replaced by something that doesn't remember you.

*(99 words)*

**LONG** *(250 words — for: IDFA extended synopsis, broadcaster submission, competition entries)*

Marta flew trapeze from the age of fourteen. Piotr was the company's principal clown for twenty-two years. Hélène closed every show with a trained-dog act the audience came back for. They worked together in a mid-sized permanent circus in a Central European city — the kind of institution that once anchored a neighborhood and now exists in no one's memory except the people who were in it.

The circus closed in the early 1990s when its venue was sold to a property developer. The tent came down. A shopping complex went up. The three performers scattered into unrelated second lives: a gymnastics teacher, a hardware shop owner, a dog breeder.

*THE LAST TENT* follows their reunion. Thirty years after the closure, they return to the site — walking the shopping complex, eating in a café built on the approximate footprint of the backstage area, sitting together in a hotel room watching VHS footage from the final season. What they describe and what surrounds them never match. The circus exists only in their bodies and their conversation.

As the day unfolds, the film moves from the circus to the aftermath — what each of them lost when it ended, and what they found instead. Piotr speaks openly about reinvention; Hélène resists nostalgia; Marta says the hardest part was not losing the circus but losing the daily certainty of knowing what she was for.

They part the next morning at the train station. No promises to stay in touch.

*(247 words)*

---

**Submission Roadmap**

1. **First contact with ARTE or BBC Storyville:** Send the broadcaster pitch only. It is designed to open a conversation, not close a deal. If the commissioner responds, follow up with the full treatment.
2. **Development funding applications (Sundance Doc Fund, IDFA Bertha Fund):** Send the treatment as the lead document, with the logline and festival synopses adapted into the application form fields.
3. **Festival lab or workshop submissions (Locarno Open Doors, IDFA Academy):** Use the short and medium synopses for form fields. Attach the treatment as a supporting document if the application allows it.
4. **Co-production partner outreach:** Send the broadcaster pitch with a cover note specifying the rights structure and territory split. Hold the treatment for the second conversation.

The strongest document in this package is the treatment — it carries the narrative argument. The broadcaster pitch is the door-opener. Use them in that sequence: pitch to get the meeting, treatment to win it.

## Known limitations
- The agent produces a coherent development package, but each document is generated from the same brief. Real development packages benefit from research, location visits, and subject interviews that deepen the material between drafts — this agent cannot substitute for that process.
- Character descriptions are only as vivid as the information provided. If you have met the subjects, include specific details — what they said, how they moved, what their surroundings looked like. The agent will use them.
- The series-bible-generator step requires episode-level descriptions; if you only have a series concept without episode breakdowns, the bible will be structurally sound but editorially thin. Consider developing episode ideas before running the agent.
- Broadcaster-specific commissioning language is calibrated to general broadcaster types, not individual commissioners. Before sending, verify the specific strand's editorial priorities and adapt the pitch accordingly.
- Festival synopses are written in English. For festivals requiring synopses in other languages, use a professional translator — machine translation degrades the register that makes synopses effective.

## Related agents and skills
- [logline-creator](../skills/tv-documentary/development/logline-creator/SKILL.md) — standalone skill for users who need only a logline
- [pitch-treatment-writer](../skills/tv-documentary/development/pitch-treatment-writer/SKILL.md) — standalone skill for users who already have a logline and need only a treatment
- [series-bible-generator](../skills/tv-documentary/development/series-bible-generator/SKILL.md) — standalone skill for users who need only a series bible
- [broadcaster-pitch-writer](../skills/tv-documentary/business/broadcaster-pitch-writer/SKILL.md) — standalone skill for users who need only a broadcaster pitch document
- [festival-synopsis-writer](../skills/tv-documentary/localization/festival-synopsis-writer/SKILL.md) — standalone skill for users who need only festival synopses

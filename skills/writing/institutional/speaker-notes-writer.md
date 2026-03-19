---
name: speaker-notes-writer
status: beta
category: writing
subcategory: institutional
version: 1.0
eval_score: null
tags: [presentation, public-speaking, conference, speaker-notes, slides]
---

# Speaker Notes Writer

## What This Skill Does
Writes full speaker notes for each slide in a conference or panel presentation, giving the speaker natural, spoken-word language that expands on the slide content without simply reading it aloud.

## When To Use This Skill
- You have completed your slide deck and need to write the verbal script that goes with it
- You are preparing someone else to present — an editor, executive, or colleague — and they need a clear script to follow
- You are presenting on a topic where precision matters and you cannot risk an ad-libbed explanation going off-message
- You have a hard time limit (a 15-minute conference slot, a 5-minute panel contribution) and need the notes timed to fit
- You want notes that sound natural when spoken aloud, not like written prose read from a page

## What You Need To Provide
**Required:**
- The content of each slide — either the full text, bullet points, or a plain-language description of what is on screen
- The presentation context: event type (conference keynote, panel, workshop, pitch), audience (journalists, academics, industry professionals, general public), and approximate speaking time available
- The presenter's voice register: formal and authoritative, conversational and accessible, or somewhere between

**Optional:**
- A brief bio of the presenter — helps calibrate how much to explain versus assume
- Key messages the presentation must land, if specific points need emphasis
- Any slides where the speaker wants to pause for questions or audience interaction
- Whether the presenter will use an autocue / teleprompter or read from printed notes

## How Claude Approaches This
1. Reviews all slide content together to understand the narrative arc of the presentation before writing any notes — speaker notes work best when each slide connects naturally to the next
2. Writes notes for each slide that start with a cue tied to what the slide shows, so the speaker always knows where they are in the flow
3. Expands on each slide's content with spoken-language explanation, context, or examples — never just reading the bullet points back
4. Builds in natural transitions between slides, so the speaker does not pause awkwardly or announce "next slide"
5. Keeps pacing in mind throughout: shorter notes for slides that need to pass quickly, fuller notes for slides carrying the most important arguments
6. Flags any slide where the presenter may need a moment (a complex chart, an audience question, a video clip) with a brief direction note in brackets

## Output Format
One section per slide, labelled clearly (Slide 1, Slide 2, etc.). Each section begins with a one-line cue summarising what is on screen, followed by the spoken notes in full sentences. Notes are written in the first person, as the speaker would actually say them. Total word count calibrated to the speaking time provided (approximately 130 words per minute of speaking time). Tone matches the register specified by the user. Bracketed stage directions included where relevant — for example: [pause] [click to next] [refer to chart].

## Quality Criteria
- [ ] Notes are written in spoken English — they sound natural when read aloud, not like a written document
- [ ] Each slide section begins with a clear on-screen cue so the speaker is never lost
- [ ] The notes expand on the slide content — they do not simply restate what is already visible on screen
- [ ] Transitions between slides are written in, so the speaker does not need to improvise connections
- [ ] Total length is consistent with the stated speaking time (roughly 130 words per minute)
- [ ] Bracketed stage directions are included for any slide requiring a pause, interaction, or non-verbal action

## Example

### Input
Presentation context: 12-minute keynote slot at a journalism industry conference. Audience: editors and news directors from regional and national newsrooms. Topic: The business case for structured audience feedback programmes. Speaker: a news editor with ten years of experience. Voice register: authoritative but accessible — not academic.

Slides (summary):
- Slide 1: Title — "Listening as a Business Strategy"
- Slide 2: The problem — newsrooms that do not collect structured reader feedback are making decisions based on traffic data alone. Traffic data tells you what people clicked; it does not tell you why they came back or why they left.
- Slide 3: What structured feedback actually is — short surveys (3–5 questions), post-publication, tied to specific story types. Not comment sections. Not social media sentiment. Closed-loop, actionable data.
- Slide 4: One example of results — a regional newsroom that ran a 90-day feedback programme saw subscriber retention improve by 14% and editorial planning meetings become shorter because there was actual evidence to discuss instead of opinion.
- Slide 5: What it costs — a lean feedback programme can run on existing tools (email platforms, Google Forms) for under £200 a month. The real cost is editorial time: approximately 2 hours per week to review and act on results.
- Slide 6: Call to action — start with one story type, one question, one month. Then review.

### Output

**Slide 1 — Title: "Listening as a Business Strategy"**

Good morning. I want to talk to you today about something we all believe we do — listening to our audiences — and why most of us are doing it wrong.

That is not a criticism. It is a structural problem. And it has a practical fix.

---

**Slide 2 — The problem with traffic data**

Most editorial decisions in this room are shaped, consciously or not, by analytics dashboards. Page views. Time on site. Click-through rates.

That data is useful. But it answers a very narrow question: what did people click on? It does not tell you why a loyal reader cancelled their subscription. It does not tell you what a first-time visitor was hoping to find. And it does not tell you whether the story you spent three weeks investigating actually landed with the people you made it for.

Traffic data tells you what happened. Structured feedback tells you why.

---

**Slide 3 — What structured feedback actually is**

I want to be specific here, because "reader feedback" means very different things to different people.

I am not talking about comment sections. I am not talking about social media. Those environments are not representative, and they are not designed to give you actionable information.

What I am describing is simple: a short survey — three to five questions — sent to readers after a specific story type is published. Closed-loop. Designed to produce data you can actually bring into an editorial meeting.

It does not require specialist technology. It requires a clear question and the discipline to ask it consistently.

---

**Slide 4 — What the results can look like**

[Pause briefly here — let the number land.]

One regional newsroom I have been following ran a 90-day structured feedback programme. By the end of it, subscriber retention had improved by 14%. Their monthly editorial planning meetings were running 20 minutes shorter — because instead of arguing from instinct, they were working from evidence.

That is not a guarantee. Every newsroom is different. But it is a proof of concept that the investment can pay back in ways that matter commercially, not just editorially.

---

**Slide 5 — What it actually costs**

Here is where I expect some of you to relax a little.

A lean feedback programme does not require a new platform or a new hire. Most newsrooms can run it using tools they already have — an email platform, a simple form builder. The direct cost is typically under £200 a month.

The real cost is editorial time. Expect around two hours a week to review results, flag patterns, and bring findings into the room. That is it.

The question is not whether you can afford to do this. The question is whether you can afford to keep making decisions without it.

---

**Slide 6 — Where to start**

I am going to give you one instruction to take away from today.

Pick one story type. Ask one question. Run it for one month. Then look at what you have.

Do not try to build a feedback system across your entire operation from day one. Start narrow, prove the value internally, and scale from there.

If anyone wants to talk through what that looks like in practice, I will be around for the rest of the day. Thank you.

[Pause for applause — do not rush to leave the lectern.]

## Known Limitations
- Claude does not know the slide deck's visual design, so it cannot write notes tied to specific graphics, colours, or layout unless these are described in the input
- For highly technical presentations (scientific data, complex financial analysis), the speaker will need to verify that the spoken explanations are accurate — Claude works from the description provided, not independent expertise
- The pacing estimate of 130 words per minute is an average; speakers who pause frequently or take questions mid-presentation should expect the notes to run long and should trim accordingly
- The skill produces notes for a single, uninterrupted presentation — it is not designed for panel formats where speaking time is unpredictable

## Related Skills
- [management-briefing-writer](./management-briefing-writer.md)
- [collaboration-proposal-writer](./collaboration-proposal-writer.md)

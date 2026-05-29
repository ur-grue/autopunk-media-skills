# Newsletter Outreach — Pitch Templates

Personal, short, one specific angle per recipient. No generic press blast.

---

## Wave 1 — Media / Journalism newsletters

### NiemanLab

**To:** tips@niemanlab.org (or specific reporter covering AI for journalism)

**Subject:** A free Claude-skills library for newsrooms, eval-tested

```
Hi —

I'm a commissioning editor in public broadcasting. I open-sourced a library
of 394 Claude skills built for media professionals: TV producers, journalists,
podcasters, YouTubers, radio producers, newsletter writers, PR teams.

What makes it Nieman-worthy is the evaluation framework. Most "AI for
journalism" tools have no quality bar. This one ships an explicit seven-
dimension G-Eval rubric with a hard floor on "Editorial Naturalness" — the
output has to read like a working journalist, not a chatbot.

393 of the 394 skills are at the stable threshold (≥ 4.0/5). Full eval data is in the
repo.

There is an angle here about what evaluation looks like when AI tools are
built specifically for newsroom work — happy to write a guest piece on it,
or just point you at the data.

Repo: https://github.com/ur-grue/autopunk-media-skills
Eval framework: tests/EVAL_FRAMEWORK.md

Ur-grue
```

---

### Press Gazette

**To:** newsdesk@pressgazette.co.uk

**Subject:** Free open-source Claude skills for journalists — UK angle

```
Hi —

Quick pitch. I open-sourced 394 Claude skills designed for working
journalists: pitch development, interview question building, transcript
cleanup, foi-request drafting, fact-check checklists, methodology
explainers for data journalism.

UK-specific angle if it helps: the library includes house-style enforcement,
defamation-risk checking, and FOI request templates. MIT licensed, no paid
tier.

It is built by a commissioning editor in public broadcasting, not a tech
company. Each skill passes a documented quality eval before it ships as
"stable."

Repo: https://github.com/ur-grue/autopunk-media-skills

If you want a working journalist quote-source to test some of the skills,
I can put you in touch with the reviewers.
```

---

### The Rebooting (Brian Morrissey)

**To:** Brian's typical contact channels (newsletter reply or LinkedIn)

**Subject:** Media-business angle: open-source skill library, no monetization

```
Brian —

Long-time reader. Pitch:

I open-sourced 394 Claude skills for media work. Not a SaaS, not a paywall,
not a "premium tier coming soon." MIT licensed. The library is built by an
editor in public broadcasting, not a startup pretending to know newsrooms.

What's interesting for The Rebooting: this is a counter-pattern to the
current AI-for-newsrooms market, which is mostly closed-platform plays
charging $X per seat per month for tools that produce chatbot-sounding
output. There is room for an argument that the open-source, eval-tested,
maintainer-owned approach is better-suited to how media organizations
actually adopt tooling.

Happy to talk on background or contribute a short piece if it fits.

Repo: https://github.com/ur-grue/autopunk-media-skills
```

---

### Garbage Day (Ryan Broderick)

**To:** Ryan via newsletter reply or social

**Subject:** The most useful AI-for-creators thing I've seen open-sourced

```
Ryan —

Not the usual pitch. I open-sourced 394 Claude skills for media people:
YouTubers, podcasters, journalists, newsletter writers, screenwriters.

It is not a startup, not a SaaS, no "join the waitlist." It is one editor's
library after 15 years in broadcasting, MIT licensed, with a documented
quality framework. Each skill has a working example so you can see what
it actually produces.

If you want a Garbage Day angle, here is one: AI tooling for creators is
mostly being built by people who have never made anything for an audience.
This is the opposite. The output reads like a person who has been in the
edit suite, not a tech demo.

Repo: https://github.com/ur-grue/autopunk-media-skills

No pressure either way, just thought it fits.
```

---

### Today in Tabs (Rusty Foster)

**To:** Rusty via newsletter reply

**Subject:** Open-source AI tools that don't sound like AI

```
Rusty —

Pitch for Tabs: 394 Claude skills, MIT licensed, built by a working
broadcaster, with an explicit quality bar that screens out chatbot prose.

It is the rare AI-for-media project where the output actually sounds like
a person who knows the format. Examples and the eval framework are in the
repo.

If it fits a Tabs item I owe you one.

https://github.com/ur-grue/autopunk-media-skills
```

---

## Wave 2 — AI / tech newsletters

### Latent Space (Swyx)

**To:** swyx via X DM or newsletter

**Subject:** Skill library with a 7-dimension eval rubric, MIT

```
Swyx —

I open-sourced 394 Claude skills for media professionals. The piece you may
care about: every skill ships against a documented seven-dimension G-Eval
rubric. 4.0/5 threshold to reach "stable," with a hard floor on Editorial
Naturalness (the skill outputs must score against four lists of AI tells —
lexical, structural, tonal, genre).

393 of 394 currently stable. Full eval data + framework in tests/.

There is a Latent Space angle here on what skill evaluation looks like when
the domain is editorial output rather than code. Happy to write something
or just chat.

Repo: https://github.com/ur-grue/autopunk-media-skills
Eval framework: tests/EVAL_FRAMEWORK.md
```

---

### Ben's Bites

**To:** Ben via newsletter reply / form

```
Hi Ben —

For tomorrow's Tools section if it fits:

autopunk-media-skills — 394 free Claude skills built specifically for media
professionals (TV producers, journalists, podcasters, YouTubers). Each one
turns Claude into a specialist for a specific writing task. Quality-tested
with a documented eval framework. MIT licensed.

→ https://github.com/ur-grue/autopunk-media-skills
```

---

### The Neuron

**To:** tips@theneurondaily.com

```
Hi —

Tool-of-the-day candidate:

autopunk-media-skills — 394 free Claude skills for media work. Built by a
commissioning editor with 15+ years in broadcasting. Quality-tested with a
seven-dimension eval framework. Covers journalism, documentary, YouTube,
podcast, radio, newsletter, PR, screenwriting, data journalism, and image
prompting. MIT licensed.

→ https://github.com/ur-grue/autopunk-media-skills
```

---

## Sending discipline

- One pitch per outlet. Do not BCC. Do not send simultaneously to people at the same outlet.
- Send Tuesday or Wednesday morning local-time for each recipient.
- Track sends + responses in `docs/marketing/outreach-log.md` (created when Wave 1 fires).
- If no response in 5 business days, do not bump. Move on.

## Owner

Drafts owned by Developer Advocate + Outbound Strategist (per AUT-20 plan).
Sends owned by maintainer unless SMTP credentials are provided to a Paperclip agent.

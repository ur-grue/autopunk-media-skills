---
name: podcast-producer-agent
type: agent
status: stable
version: 1.0
eval_score: 4.78
maxTurns: 25
allowedTools:
  - Read
  - Write
  - Edit
  - Glob
  - Grep
disallowedTools: []
skills:
  - episode-concept-generator
  - guest-research-brief
  - interview-question-builder
  - solo-episode-script
  - intro-outro-writer
  - ad-read-script
  - show-notes-generator
  - episode-summary-writer
roles: [podcaster]
tags: [podcast, audio, interview, workflow, agent, production, show-notes]
---

# Podcast Producer Agent

## What this agent does
Takes a topic or guest and produces a complete episode package — concept, research brief, interview questions (or solo script), intro and outro scripts, ad reads, show notes, and episode descriptions — ready for the host to record.

## When to use this agent
- You have a guest booked and want the full pre-production and post-production package in one run — research, questions, scripts, show notes, descriptions
- You are planning a solo episode and want a structured outline, intro/outro scripts, and platform-ready descriptions without running each skill separately
- You have a vague topic area and want the agent to generate episode concepts first, then build the full package around the one you pick
- You produce episodes on a weekly schedule and need a repeatable production workflow that covers every deliverable from concept to publish

## What you need to provide
**Required:**
- Podcast name and a one-line description of the show's focus and audience
- Episode type: interview or solo
- Topic area or specific episode topic (if you have one)

**Optional:**
- Guest name and any background you already have (for interview episodes)
- Number of episode concepts to generate (default: 5) — skipped entirely if you already have a specific topic
- Sponsors and product details for ad reads (skipped if none)
- Target episode length (default: 45-60 minutes for interviews, 20-30 minutes for solo)
- Tone and style notes (e.g., "conversational and irreverent," "serious and research-heavy," "storytelling-driven")
- Prior episodes or recurring segments the audience expects
- Specific angles to explore or avoid
- Platform list for episode descriptions (default: Apple Podcasts, Spotify, YouTube)

## Skills this agent composes

| Step | Skill | What it produces | Condition |
|------|-------|-----------------|-----------|
| 1 | [episode-concept-generator](../skills/podcast/pre-production/episode-concept-generator/SKILL.md) | 3-5 episode angle options with target audience and differentiation | Skipped if the user already has a specific episode topic |
| 2 | [guest-research-brief](../skills/podcast/pre-production/guest-research-brief/SKILL.md) | Background dossier on the guest — bio, past interviews, talking points, angles to avoid | Skipped for solo episodes |
| 3a | [interview-question-builder](../skills/podcast/pre-production/interview-question-builder/SKILL.md) | 15-20 questions organized by topic arc with follow-up prompts | Interview episodes only |
| 3b | [solo-episode-script](../skills/podcast/scripting/solo-episode-script/SKILL.md) | Structured episode outline with talking points, transitions, and segment breakdowns | Solo episodes only |
| 4 | [intro-outro-writer](../skills/podcast/scripting/intro-outro-writer/SKILL.md) | Show intro and outro scripts matched to the episode topic and podcast brand | Always |
| 5 | [ad-read-script](../skills/podcast/scripting/ad-read-script/SKILL.md) | Natural-sounding ad read scripts for sponsor integrations | Skipped if the podcast has no sponsors |
| 6 | [show-notes-generator](../skills/podcast/post-production/show-notes-generator/SKILL.md) | Structured show notes with timestamps, links, guest bio, and key takeaways | Always |
| 7 | [episode-summary-writer](../skills/podcast/post-production/episode-summary-writer/SKILL.md) | Short and long episode descriptions for podcast platforms and social media | Always |

## How the agent works

### PLANNING mode

When the agent receives the brief, it:
1. Reads the brief and identifies the episode type (interview or solo), whether a topic is specified or needs generating, whether a guest is named, and whether sponsors are listed
2. Determines which of the seven skills to invoke — all seven for a fully sponsored interview episode without a locked topic, fewer for a solo episode on a known topic with no sponsors
3. Flags any information gaps that will affect specific steps — missing guest name for an interview, no tone guidance, no sponsor details when ad reads are expected
4. Presents a numbered plan showing each step, the skill it uses, what it will produce, and which steps are conditional
5. Waits for user approval before proceeding

The plan output looks like this:
```
EPISODE PRODUCTION PLAN for [podcast name] — [topic or "topic TBD"]

Episode type: [interview / solo]
Guest: [name or "N/A — solo episode"]
Topic: [specific topic or "to be generated in Step 1"]
Target length: [X] minutes
Sponsors: [sponsor names or "none"]

Step 1: episode-concept-generator — Generate [N] episode angles
        [INCLUDED / SKIPPED: specific topic provided]
Step 2: guest-research-brief — Background dossier on [guest name]
        [INCLUDED / SKIPPED: solo episode]
Step 3: interview-question-builder — Interview questions organized by topic arc
        [INCLUDED — interview episode / REPLACED: solo-episode-script — solo episode]
Step 4: intro-outro-writer — Intro and outro scripts for [podcast name]
Step 5: ad-read-script — Ad reads for [sponsor names]
        [INCLUDED / SKIPPED: no sponsors]
Step 6: show-notes-generator — Structured show notes with timestamps and links
Step 7: episode-summary-writer — Platform descriptions (short + long)

Gaps that may affect output quality:
- [any missing inputs flagged here]

Estimated output: A complete episode package containing [list of deliverables].
Steps build sequentially — the guest research informs the questions,
the questions shape the show notes template, and all feed the descriptions.

Approve this plan? (yes / adjust / skip steps)
```

### EXECUTION mode

After the user approves the plan, the agent:

1. If included, runs episode-concept-generator using the podcast description, audience, and topic area. Presents 3-5 episode angles with differentiation notes. The user picks one (or provides their own) before the agent continues.

2. If included, runs guest-research-brief on the named guest. Presents the dossier — bio, career timeline, past interview appearances, published positions, potential talking points, and angles to avoid (topics they have refused to discuss, areas of known sensitivity, questions they have answered too many times). The user can flag corrections or add context.

3. For interview episodes, runs interview-question-builder using the episode topic, guest research, and the podcast's tone. Produces 15-20 questions organized into a topic arc (opening, core exploration, pivot sections, closing) with follow-up prompts for each. For solo episodes, runs solo-episode-script instead — produces a structured outline with talking points, transitions, and segment breakdowns matched to the target length.

4. Runs intro-outro-writer using the episode topic, guest name (if applicable), and podcast brand voice. Produces an intro script (cold open hook, show introduction, episode teaser, guest introduction) and an outro script (episode recap, call to action, next episode preview, sign-off). Scripts are written for the host to read naturally, not as rigid teleprompter copy.

5. If included, runs ad-read-script for each sponsor. Produces ad reads that sound like the host talking about a product they use — conversational, specific to the episode context where possible, with clear sponsor messaging and required disclosures. Each read includes a natural transition in and out.

6. Runs show-notes-generator using all previous outputs. Produces structured show notes with: episode title, guest bio (if applicable), episode summary, timestamp placeholders (marked for the host to fill after recording), links mentioned in the questions or scripts, key takeaways, and guest contact/social links.

7. Runs episode-summary-writer using the episode topic, guest info, and key angles. Produces a short description (under 160 characters for Spotify), a medium description (2-3 sentences for Apple Podcasts), and a long description (full paragraph for YouTube and the podcast website) — each calibrated to the platform's conventions.

The agent assembles all outputs into a single episode package. The user can interrupt between any two steps to adjust direction, swap the episode angle, or skip a remaining step.

## Output format
A single assembled document titled **EPISODE PACKAGE: [Podcast Name] — [Episode Title or Topic]**, containing:

1. **Production summary** (80-120 words) — what the package contains, which steps were run, and any flags for the host's attention
2. **Episode concept** — if generated: the selected angle, target audience, and differentiation (from step 1)
3. **Guest research brief** — if run: the dossier with bio, past appearances, talking points, and angles to avoid (from step 2)
4. **Interview questions** or **Solo episode outline** — the question arc with follow-ups, or the structured outline with talking points (from step 3)
5. **Intro script** — cold open, show intro, episode teaser, guest introduction (from step 4)
6. **Outro script** — recap, CTA, next episode preview, sign-off (from step 4)
7. **Ad read scripts** — if run: one script per sponsor with transitions (from step 5)
8. **Show notes** — structured notes with timestamps, links, bio, and takeaways (from step 6)
9. **Episode descriptions** — short, medium, and long versions for each platform (from step 7)
10. **Pre-recording checklist** — a closing note with the host's action items before hitting record: confirm guest availability, test recording setup, review questions for flow, fill in any placeholder timestamps after recording

Total length: 3,000-7,000 words depending on episode type and how many steps were included. Tone is direct and production-oriented — written for a host who wants to prepare well and record confidently, not for a listener.

## Quality criteria
- [ ] Each skill output meets its own quality standard independently
- [ ] The assembled package reads as a coherent production workflow, not a stack of separate outputs
- [ ] Guest research informs the interview questions — questions reference specific guest experiences, not generic prompts
- [ ] Interview questions follow a natural conversational arc, not a random list of topics
- [ ] Solo episode outlines include transitions between sections that sound like natural speech
- [ ] Intro and outro scripts match the podcast's stated tone and do not default to a generic "welcome back to the show" register
- [ ] Ad reads sound like the host talking, not like advertising copy — no superlatives, no "you guys are going to love this"
- [ ] Show notes are structured for scanning — timestamps, bold key names, hyperlink-ready references
- [ ] Episode descriptions are calibrated to each platform's character limits and conventions
- [ ] The short description works as a standalone hook without requiring the long description for context
- [ ] Steps were correctly included or skipped based on the conditions in the skills table
- [ ] The agent stayed within its declared skills array — no undeclared skill invocations
- [ ] Output is free of generic AI-template phrasing — no "dive deep," "unpack," "without further ado," "in this episode we explore"
- [ ] The pre-recording checklist gives specific action items, not generic preparation advice

## Example

### Brief (user input)
I host a tech podcast called Build Mode — it's for indie hackers, early-stage founders, and developers who are building products. Conversational, direct, no fluff. We do weekly interviews, about 50 minutes each.

This week I'm interviewing Priya Sharma. She bootstrapped a project management SaaS called Plansmith from a side project to $1M ARR in 28 months without taking any VC funding. I want the full episode package.

**Episode type:** Interview
**Topic:** How Priya bootstrapped Plansmith to $1M ARR without VC
**Sponsors:** Lemon Squeezy (payment infrastructure for SaaS), Tuple (pair programming tool)
**Tone:** Conversational, direct, curious — we ask real questions, not softballs
**Target length:** 50 minutes

### Plan (PLANNING mode output)

```
EPISODE PRODUCTION PLAN for Build Mode — "Bootstrapping Plansmith to $1M ARR"

Episode type: Interview
Guest: Priya Sharma (founder, Plansmith)
Topic: How Priya bootstrapped a PM SaaS to $1M ARR in 28 months without VC
Target length: 50 minutes
Sponsors: Lemon Squeezy, Tuple

Step 1: episode-concept-generator — SKIPPED: specific topic provided.

Step 2: guest-research-brief — Background dossier on Priya Sharma.
        Will cover: bio, Plansmith history, prior interviews and podcast
        appearances, public positions on bootstrapping vs VC, areas to
        avoid or handle carefully.

Step 3: interview-question-builder — 15-20 questions organized by topic arc,
        calibrated for a 50-minute conversational interview. Follow-up
        prompts for each question.

Step 4: intro-outro-writer — Intro and outro scripts matched to Build Mode's
        direct, no-fluff tone.

Step 5: ad-read-script — Ad reads for Lemon Squeezy and Tuple, integrated
        naturally into the episode flow.

Step 6: show-notes-generator — Structured show notes with timestamps,
        links, guest bio, and key takeaways.

Step 7: episode-summary-writer — Short, medium, and long episode descriptions
        for Apple Podcasts, Spotify, and YouTube.

Gaps that may affect output quality:
- No prior episodes or recurring segments described — intro/outro will
  follow Build Mode's stated tone but may not match existing format
  conventions. Flag any segments I should include.

Estimated output: A six-section episode package (guest research, questions,
intro/outro, ad reads, show notes, platform descriptions).

Approve this plan? (yes / adjust / skip steps)
```

### Deliverable (EXECUTION mode output)

---

**EPISODE PACKAGE: BUILD MODE — "FROM SIDE PROJECT TO $1M ARR: PRIYA SHARMA ON BOOTSTRAPPING PLANSMITH"**

---

**Production Summary**

This package covers a 50-minute interview episode with Priya Sharma, founder of Plansmith. Six of seven steps were run — episode concept generation was skipped because the topic was provided. The package includes: guest research brief, 18 interview questions organized into a five-section arc, intro and outro scripts, two ad reads (Lemon Squeezy, Tuple), show notes with timestamp placeholders, and platform descriptions in three lengths. One flag: Priya has discussed her early pricing mistakes in at least two prior podcast appearances — the questions are designed to push past the rehearsed version of that story.

---

**1. Guest Research Brief**

**Priya Sharma — Founder & CEO, Plansmith**

**Bio**
Priya Sharma is a former product manager who spent four years at Atlassian working on Jira's growth team before leaving in 2023 to build Plansmith, a lightweight project management tool for teams of 5-25 people who find Jira too heavy and Trello too simple. She launched the beta in March 2023, hit $10K MRR by November 2023, and crossed $1M ARR in July 2025 — all without external funding.

Based in Melbourne, Australia. Engineering degree from the University of Melbourne, MBA from INSEAD. She writes a monthly newsletter called "The Bootstrapper's Logbook" with roughly 8,000 subscribers.

**Career Timeline**
- 2017-2019: Product analyst at a Melbourne fintech startup (acquired 2019)
- 2019-2023: Product manager at Atlassian, Jira growth team
- 2023 (Jan): Left Atlassian to build Plansmith full-time
- 2023 (Mar): Plansmith beta launch, 200 users in first month
- 2023 (Nov): $10K MRR
- 2024 (Jun): Hired first two employees (engineer, support lead)
- 2024 (Sep): Launched team plan at $12/seat/month
- 2025 (Jul): Crossed $1M ARR with ~750 paying teams

**Prior Interview Appearances**
- "Indie Hackers Podcast" (April 2024) — discussed the first year, early pricing experiments, and why she turned down a $2M seed round
- "The SaaS Podcast" with Omer Khan (September 2024) — focused on customer acquisition, mainly SEO and content marketing
- "My First Million" (January 2025) — broader conversation about the bootstrapping vs VC trade-off, mentioned burnout during solo founder phase

**Public Positions**
- Vocal about bootstrapping as a deliberate choice, not a fallback. Has written that VC-funded competitors "optimize for growth metrics that have nothing to do with whether the product is good."
- Critical of the "build in public" movement — has said most founders share vanity metrics, not the decisions that actually mattered
- Open about making pricing mistakes early: launched at $5/seat/month, raised to $12 after six months. Has called the initial price "a panic decision" in at least two interviews

**Angles to Avoid or Handle Carefully**
- She left Atlassian on good terms and has asked interviewers not to position the story as "Atlassian refugee builds the anti-Jira." She considers Jira a different product for different teams.
- Declined to discuss the specific revenue terms of the acquisition offer she reportedly received in early 2025. She has confirmed an offer existed but will not name the acquirer or the number.
- Has expressed frustration with interviewers who frame bootstrapping as a lifestyle choice. She considers it a business strategy with specific financial logic.

**Talking Points Worth Pursuing**
- The 28-month timeline is fast for bootstrapped SaaS. What decisions accelerated it? She has hinted at one pricing decision and one distribution decision but has not unpacked them in prior interviews.
- She hired only two people in the first 18 months. How did she decide what to build vs what to defer? Her Atlassian experience with feature bloat likely shaped this.
- The team plan launch in September 2024 appears to be the inflection point — MRR roughly doubled in the following six months. Worth pressing on what changed operationally.
- She has not discussed churn in any public appearance. Worth asking directly — $1M ARR means nothing if churn is eating it.

---

**2. Interview Questions**

*Organized into a five-section arc for a 50-minute episode. Estimated timing in brackets. Follow-up prompts indented below each question.*

**SECTION 1: ORIGIN — The decision to leave and build (minutes 0-8)**

**Q1.** You spent four years on Jira's growth team. What did you see there that made you think "I should build a PM tool, but different"?
- Follow-up: Was there a specific customer conversation or data point that stuck with you?

**Q2.** You left Atlassian in January 2023 and launched a beta by March. That is eight weeks. What did you cut to move that fast?
- Follow-up: What did the beta actually look like — how embarrassing was it compared to what Plansmith is now?

**Q3.** At what point did this stop being a side project and become the plan?
- Follow-up: Was there a financial threshold, a user signal, or was it more of a gut call?

**SECTION 2: EARLY GROWTH — First users to $10K MRR (minutes 8-20)**

**Q4.** Your first 200 users came in the first month. Where did they come from?
- Follow-up: Was that a channel you engineered, or did you get lucky?

**Q5.** You have said your initial pricing of $5/seat/month was a "panic decision." Walk me through what you were thinking and when you realized it was wrong.
- Follow-up: When you raised to $12, how many customers did you lose? And what happened to revenue?

**Q6.** Between March and November 2023, you went from beta to $10K MRR as a solo founder with no funding. What did a typical week look like during that stretch?
- Follow-up: What did you stop doing that you thought was important but turned out not to matter?

**Q7.** You reportedly turned down a $2M seed round during this period. What was the conversation with yourself — or with anyone — that led to that decision?
- Follow-up: Was there a moment in the following months where you regretted it?

**SECTION 3: INFLECTION — Team plan and the path to $1M (minutes 20-35)**

**Q8.** In September 2024 you launched the team plan at $12/seat/month, and your MRR roughly doubled in the following six months. What changed operationally when you made that shift?
- Follow-up: Did the team plan attract a different kind of customer, or did existing users upgrade?

**Q9.** You hired your first two people — an engineer and a support lead — in June 2024. Why those two roles first?
- Follow-up: What did you keep doing yourself that most founders would have delegated earlier?

**Q10.** A three-person company doing $1M ARR means roughly $330K per person. What does your cost structure actually look like?
- Follow-up: What is your biggest expense that is not salaries?

**Q11.** Let me ask the question you have not answered publicly: what does your churn look like?
- Follow-up: What is the most common reason a team cancels, and have you been able to fix it?

**Q12.** Your newsletter "The Bootstrapper's Logbook" has 8,000 subscribers. How much of your growth comes from content vs product-led channels?
- Follow-up: If you had to kill one channel tomorrow, which would it be and why?

**SECTION 4: DECISIONS AND TRADE-OFFS — The bootstrapper's operating system (minutes 35-45)**

**Q13.** You have criticized the "build in public" movement for sharing vanity metrics. What should founders share instead?
- Follow-up: Do you share your own numbers? Where do you draw the line?

**Q14.** You competed against Jira, Asana, Linear, and Notion — all with massive teams and funding. How did you decide what to build and what to deliberately leave out?
- Follow-up: Is there a feature your users keep asking for that you keep refusing to build?

**Q15.** You have described bootstrapping as a business strategy, not a lifestyle choice. What is the financial logic that makes it rational for Plansmith specifically?
- Follow-up: At what revenue level, if any, would taking outside money start to make sense?

**Q16.** You got an acquisition offer in early 2025. Without naming the number or the company — what went through your head?
- Follow-up: What would a number have to look like for you to say yes?

**SECTION 5: CLOSE — Looking forward and rapid fire (minutes 45-50)**

**Q17.** What is the next milestone for Plansmith — and how will you know when you have hit it?
- Follow-up: Do you have a number in your head for where this tops out as a bootstrapped company?

**Q18.** If someone listening is at $5K MRR right now and trying to decide whether to raise or keep bootstrapping — what is the one question they should ask themselves?
- Follow-up: What would you tell your 2023 self?

---

**3. Intro Script**

**[COLD OPEN — 15 seconds]**
*Play this before the theme music.*

Priya Sharma left a PM role at Atlassian, launched a competing product with no funding, and crossed a million in annual revenue in 28 months. Today she tells us exactly how — including the pricing mistake, the seed round she turned down, and the acquisition offer she walked away from.

**[THEME MUSIC — then host intro]**

Welcome to Build Mode. I'm [host name]. Every week we talk to founders who are building real products — no pitch decks, no hype, just how the thing actually got built.

Today's guest is Priya Sharma, the founder of Plansmith — a project management tool for small teams that has grown to over $1M ARR without a dollar of venture capital. Priya spent four years at Atlassian before starting Plansmith as a side project in early 2023, and in less than two and a half years she turned it into a profitable business with 750 paying teams and a three-person company.

We are going to talk about the decisions that got her here — what she built, what she left out, what she charged, and what she said no to. Let's get into it.

---

**4. Outro Script**

**[EPISODE WRAP — after the final question]**

That was Priya Sharma, founder of Plansmith. Links to everything we discussed — Plansmith, Priya's newsletter "The Bootstrapper's Logbook," and the resources she mentioned — are in the show notes.

If this episode was useful, do two things: leave a rating on Apple Podcasts or Spotify — it takes ten seconds and it is the single best way to help other founders find the show. And send this episode to one person who is trying to decide whether to raise or bootstrap. They will thank you.

Next week on Build Mode: we are talking to a founder who built a developer tool to $500K ARR using only a Discord community and a free tier. No ads, no content marketing, no sales team. That one airs [day].

Thanks for listening. Go build something.

---

**5. Ad Read Scripts**

**Lemon Squeezy — Mid-roll (minute ~22, after the pricing discussion)**

*Transition in:* Speaking of getting paid for your software —

This episode is brought to you by Lemon Squeezy. If you are building a SaaS product and you do not want to spend three weeks wiring up Stripe, setting up tax compliance, and figuring out how EU VAT works — Lemon Squeezy handles all of it. Payments, subscriptions, tax collection, license keys, all through one integration. I have talked to founders who switched from a custom Stripe setup and said the thing that surprised them was not the time they saved on integration — it was the time they stopped spending on tax filings and compliance emails. If you are a solo founder or a small team and you want to get paid without building a billing department, check out lemonsqueezy.com/buildmode. Link in the show notes.

*Transition out:* All right, back to Priya —

---

**Tuple — Pre-roll or second mid-roll (minute ~38, before the decisions section)**

*Transition in:* Quick word from our second sponsor before we get into the trade-offs —

Tuple is a pair programming tool built for remote engineering teams. Screen sharing, drawing on the screen, low latency, native Mac and Linux app — it is the tool that replaced the "can you see my screen?" era. What I like about Tuple is that it is built by a small, bootstrapped team that actually uses the product every day — which, given who we are talking to this week, feels appropriate. If you have engineers on your team and you have been getting by with Zoom screen sharing, try Tuple. Free trial at tuple.app/buildmode.

*Transition out:* OK — let's talk about decisions.

---

**6. Show Notes**

**Build Mode — Episode [#]: From Side Project to $1M ARR: Priya Sharma on Bootstrapping Plansmith**

**Guest:** Priya Sharma — Founder & CEO, Plansmith

**Episode Summary**
Priya Sharma left Atlassian's Jira growth team in 2023 to build Plansmith, a lightweight project management tool for small teams. In 28 months, she bootstrapped it to $1M ARR with three employees and no outside funding. In this episode she breaks down the pricing mistake that almost killed early momentum, why she turned down a $2M seed round, the team plan launch that doubled her MRR, and what her churn actually looks like.

**Timestamps**
- [00:00] Cold open and intro
- [02:00] Why Priya left Atlassian to build a PM tool
- [05:30] Launching a beta in 8 weeks — what she cut
- [08:00] First 200 users — where they came from
- [11:00] The $5/seat pricing mistake and the decision to raise to $12
- [15:00] Solo founder life at $10K MRR — a typical week
- [18:00] Turning down a $2M seed round
- [22:00] *Lemon Squeezy ad*
- [23:00] Launching the team plan — why MRR doubled in 6 months
- [27:00] Hiring the first two employees
- [30:00] Cost structure and unit economics at $1M ARR
- [33:00] Churn: the number she has never shared publicly
- [36:00] Content vs product-led growth — where customers come from
- [38:00] *Tuple ad*
- [39:00] Why she criticizes "building in public"
- [41:00] Competing with Jira, Asana, and Linear as a 3-person team
- [44:00] The financial logic of bootstrapping vs VC
- [46:00] The acquisition offer she walked away from
- [48:00] Advice for founders at $5K MRR
- [50:00] Outro and next week preview

*Note: Timestamps are estimates. Update after editing the final recording.*

**Links Mentioned**
- Plansmith: [plansmith.io]
- Priya's newsletter — The Bootstrapper's Logbook: [priya.substack.com]
- Lemon Squeezy: lemonsqueezy.com/buildmode
- Tuple: tuple.app/buildmode

**Key Takeaways**
1. Priya launched a beta in 8 weeks by building only the core workflow — task boards and a timeline view — and leaving out everything else. The features she deferred (reporting, integrations, permissions) were the ones her Atlassian experience told her were complex to build and secondary to adoption.
2. Her initial pricing of $5/seat/month was based on fear of rejection, not market research. Raising to $12 lost fewer than 10% of customers and nearly tripled revenue per account.
3. The team plan launch was the inflection point: it shifted Plansmith from individual users to team buyers, increasing average contract value and reducing churn because teams are stickier than solo users.
4. She turned down VC because the math did not require it — Plansmith was profitable at $10K MRR with one person, and growth capital would have forced a hiring and feature expansion plan she did not believe in.

**About the Guest**
Priya Sharma is the founder and CEO of Plansmith, a project management tool for teams of 5-25 people. Before starting Plansmith, she spent four years as a product manager on Atlassian's Jira growth team. She writes "The Bootstrapper's Logbook," a monthly newsletter on building software companies without venture capital. Based in Melbourne, Australia.

**Connect with Priya**
- Twitter/X: [@priyasharma]
- LinkedIn: [linkedin.com/in/priyasharma]
- Newsletter: [priya.substack.com]

---

**7. Episode Descriptions**

**Short — Spotify, podcast apps (under 160 characters)**
Plansmith founder Priya Sharma bootstrapped a SaaS to $1M ARR in 28 months with no VC. She shares the pricing, hiring, and growth decisions that got her there.

**Medium — Apple Podcasts (2-3 sentences)**
Priya Sharma left Atlassian to build Plansmith, a project management tool for small teams, and bootstrapped it to $1M ARR in 28 months without venture funding. In this episode she walks through the pricing mistake that almost stalled early growth, why she turned down a $2M seed round, and the single product decision that doubled her MRR. A practical conversation about the real numbers and trade-offs behind bootstrapping a SaaS company.

**Long — YouTube description, podcast website**
Priya Sharma spent four years on Atlassian's Jira growth team before leaving to build Plansmith — a lightweight project management tool for teams of 5-25 people who find enterprise tools too heavy. She launched a beta in eight weeks, hit $10K MRR in nine months, and crossed $1M ARR in July 2025 with three employees and zero outside funding.

In this episode, Priya breaks down the decisions behind each milestone: why she priced at $5/seat and then raised to $12 (and what happened to her customer base), how she chose her first two hires, why she turned down a $2M seed round and an acquisition offer, and what her churn numbers actually look like — a metric she has never discussed publicly. We also talk about competing against Jira, Asana, and Linear with a three-person company, why she thinks most "build in public" content is useless, and the financial logic that makes bootstrapping a rational strategy rather than a lifestyle choice.

Whether you are building a SaaS product, considering bootstrapping vs raising, or curious about the unit economics of a small profitable software company — this one is worth your time.

---

**Pre-Recording Checklist**

1. **Confirm recording logistics.** Verify date, time, and platform with Priya. If recording remotely, confirm she has a decent microphone and a quiet room — ask in advance, not five minutes before.
2. **Review the guest research brief.** Note the angles to avoid: do not frame Plansmith as "anti-Jira," do not ask about the acquirer's name or the acquisition number. She has been clear on both.
3. **Read the questions aloud.** Check that the arc feels conversational, not like a Q&A. Rearrange or cut questions based on what feels natural in your voice.
4. **Prepare the ad transitions.** The Lemon Squeezy read lands after the pricing discussion (around minute 22) and the Tuple read lands before the trade-offs section (around minute 38). Mark these in your notes.
5. **Decide on the cold open.** The scripted cold open summarizes three story beats — pricing mistake, seed round, acquisition offer. If Priya surprises you with something better in the conversation, consider re-recording the cold open after the interview.
6. **Update timestamps after editing.** The show notes timestamps are estimates based on a 50-minute episode. Replace them with actual times from the final edit.
7. **Send Priya the show notes draft before publishing.** Not for approval — for accuracy. Guest names, titles, URLs, and career dates should be confirmed.

## Known limitations
- The agent builds the interview questions from the guest research brief, but the research brief is constructed from publicly available information provided in the user's input — it does not search the internet or access podcast databases. If the user provides minimal guest information, the questions will be generic. The quality of step 3 is directly proportional to the depth of step 2's input.
- Show notes include timestamp placeholders, not real timestamps. The agent has no access to the recorded audio. The host must fill in timestamps after editing the episode — the placeholders are estimates based on the target episode length and the question arc, not the actual recording.
- Ad read scripts are written to sound natural but are based only on the sponsor name and product description the user provides. The agent does not know the sponsor's current campaign messaging, required legal disclosures, or contractual talking points. The host must verify ad reads against their sponsor agreement before recording.
- The agent sequences steps but each skill receives the original brief — not the modified output of a prior step. If the user changes the episode angle after step 2, the guest research brief is not retroactively updated. The user must re-run affected steps manually or flag the change before the agent proceeds.
- Solo episode outlines are structural — talking points, transitions, and segment breakdowns — not full scripts. A host who prefers to read verbatim will need to write out the prose from the outline. The skill is designed for hosts who work from structured notes, not teleprompter copy.

## Related agents and skills
- [magazine-editor-agent](../agents/magazine-editor-agent.md) — agent for editorial packages on written articles, different deliverable and skills set
- [documentary-development-agent](../agents/documentary-development-agent.md) — agent for documentary pitch packages
- [episode-concept-generator](../skills/podcast/pre-production/episode-concept-generator/SKILL.md) — standalone skill for generating episode angle options
- [guest-research-brief](../skills/podcast/pre-production/guest-research-brief/SKILL.md) — standalone skill for guest background research
- [interview-question-builder](../skills/podcast/pre-production/interview-question-builder/SKILL.md) — standalone skill for building interview question arcs
- [solo-episode-script](../skills/podcast/scripting/solo-episode-script/SKILL.md) — standalone skill for solo episode outlines
- [intro-outro-writer](../skills/podcast/scripting/intro-outro-writer/SKILL.md) — standalone skill for intro and outro scripts
- [ad-read-script](../skills/podcast/scripting/ad-read-script/SKILL.md) — standalone skill for sponsor ad reads
- [show-notes-generator](../skills/podcast/post-production/show-notes-generator/SKILL.md) — standalone skill for structured show notes
- [episode-summary-writer](../skills/podcast/post-production/episode-summary-writer/SKILL.md) — standalone skill for platform episode descriptions

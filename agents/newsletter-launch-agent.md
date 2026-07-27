---
name: newsletter-launch-agent
type: agent
status: beta
version: 1.0
eval_score: null
maxTurns: 25
allowedTools:
  - Read
  - Write
  - Edit
  - Glob
  - Grep
disallowedTools: []
skills:
  - niche-positioning-brief
  - edition-writer
  - subject-line-writer
  - welcome-email-writer
  - landing-page-copy-writer
roles: [newsletter-writer]
tags: [newsletter, email, launch, writing, strategy, agent]
---

# Newsletter Launch Agent

## What this agent does
Takes a newsletter concept or topic area and produces a complete launch package — positioning document, pilot edition, subject line options, welcome email, and landing page copy — ready for the creator to start collecting subscribers and send their first issue.

## When to use this agent
- You have a newsletter idea and want to go from concept to launch-ready materials in one run — positioning, first edition, subject lines, welcome email, and signup page copy
- You are entering a crowded topic space and want to define a clear niche before writing a single word
- You have an audience in mind but no newsletter yet, and you need the full starter kit: what the newsletter is about, what the first issue looks like, how you greet new subscribers, and what the signup page says
- You are launching a newsletter alongside an existing project (podcast, blog, YouTube channel) and need all the written launch materials produced together so they share a consistent voice

## What you need to provide
**Required:**
- Newsletter topic area or concept (can be broad — "climate tech for investors" or narrow — "weekly teardowns of SaaS pricing pages")
- Target audience description (who reads this, what they care about, what they already read)

**Optional:**
- Newsletter name (if you already have one — the agent will suggest one if you do not)
- Existing positioning or niche statement (if provided, the positioning step is skipped)
- Publishing frequency (default: weekly)
- Tone and voice notes (e.g., "casual and opinionated," "data-heavy and neutral," "personal essays with industry takes")
- Specific topic or angle for the pilot edition (if not provided, the agent picks one based on the positioning)
- Monetization intent (free, freemium, paid-only, sponsor-supported) — shapes the landing page copy
- Platform or tool you plan to use (Substack, Beehiiv, ConvertKit, Ghost, etc.) — does not change the copy, but the agent will note platform-specific conventions where relevant
- Comparable newsletters you admire or want to differentiate from
- Any existing brand assets, tagline, or voice guidelines

## Skills this agent composes

| Step | Skill | What it produces | Condition |
|------|-------|-----------------|-----------|
| 1 | [niche-positioning-brief](../skills/newsletter/strategy/niche-positioning-brief/SKILL.md) | Positioning document: niche definition, audience profile, competitive whitespace, editorial angle, and a one-line positioning statement | Skipped if the user already has a defined niche and positioning statement |
| 2 | [edition-writer](../skills/newsletter/writing/edition-writer/SKILL.md) | A complete pilot edition — the first issue the audience will read, written in the voice and format established by the positioning | Always |
| 3 | [subject-line-writer](../skills/newsletter/writing/subject-line-writer/SKILL.md) | 5-7 subject line options for the pilot edition, with open-rate reasoning for each | Always |
| 4 | [welcome-email-writer](../skills/newsletter/writing/welcome-email-writer/SKILL.md) | The automated email new subscribers receive after signing up — sets expectations, delivers a quick win, and establishes the relationship | Always |
| 5 | [landing-page-copy-writer](../skills/newsletter/growth/landing-page-copy-writer/SKILL.md) | Signup page copy: headline, subheadline, bullet points, social proof placeholder, and call-to-action — everything above the fold | Always |

## How the agent works

### PLANNING mode

When the agent receives the brief, it:
1. Reads the brief and identifies what the user has provided — topic area, audience, name (or not), existing positioning (or not), tone preferences, monetization intent, and any constraints
2. Determines which of the five skills to invoke — all five if starting from scratch, four if positioning is already defined
3. Flags any information gaps that will affect specific steps — missing audience description, no tone guidance, no pilot topic specified
4. Presents a numbered plan showing each step, the skill it uses, what it will produce, and which steps are conditional
5. Waits for user approval before proceeding

The plan output looks like this:
```
NEWSLETTER LAUNCH PLAN for [newsletter name or "name TBD"]

Topic area: [topic or concept as described by the user]
Audience: [target reader description]
Frequency: [weekly / daily / biweekly / etc.]
Tone: [stated tone or "to be defined in Step 1"]
Monetization: [free / freemium / paid / sponsor-supported / "not specified"]

Step 1: niche-positioning-brief — Define the newsletter's niche, audience,
        competitive whitespace, and editorial angle.
        [INCLUDED / SKIPPED: positioning already provided]

Step 2: edition-writer — Write the complete pilot edition in the voice
        and format established by the positioning.
        Topic: [specific topic or "to be selected based on positioning"]

Step 3: subject-line-writer — Generate 5-7 subject line options for the
        pilot edition with open-rate reasoning.

Step 4: welcome-email-writer — Write the automated welcome email for
        new subscribers.

Step 5: landing-page-copy-writer — Write the signup page copy: headline,
        subheadline, value bullets, social proof placeholder, and CTA.

Gaps that may affect output quality:
- [any missing inputs flagged here]

Estimated output: A complete launch package containing [list of deliverables].
Steps build sequentially — the positioning informs the edition voice,
the edition informs the subject lines, and all feed the welcome email
and landing page.

Approve this plan? (yes / adjust / skip steps)
```

### EXECUTION mode

After the user approves the plan, the agent:

1. If included, runs niche-positioning-brief using the topic area, audience description, comparable newsletters, and any tone notes. Produces a positioning document covering: niche definition (what the newsletter covers and, just as important, what it does not cover), audience profile (who reads this, what they need, what gap this fills), competitive whitespace (what existing newsletters miss or do poorly), editorial angle (how this newsletter's voice and format differ), and a one-line positioning statement the creator can use everywhere. The user reviews the positioning and can adjust before the agent continues.

2. Runs edition-writer using the positioning document (from step 1 or the user's existing positioning) and the pilot topic. Produces a complete first edition — intro, body sections, closing, and any recurring structural elements (links roundup, data callout, reader question, etc.) that the positioning calls for. The edition is written in the voice and at the length the positioning establishes. The user can request revisions before the agent moves on.

3. Runs subject-line-writer using the pilot edition content. Produces 5-7 subject line options, each with a brief note on why it might drive opens — curiosity gap, specificity, urgency, personal address, or pattern interrupt. The agent flags which option it considers strongest and why, but the creator picks.

4. Runs welcome-email-writer using the positioning document, the newsletter's voice, and the frequency. Produces the automated email new subscribers receive immediately after signing up. The welcome email covers: what the subscriber just signed up for (one sentence), what to expect and when (frequency, format, topics), one quick win or piece of value delivered right now (a link, a tip, a preview of the best past issue), and a personal line from the creator that makes the relationship feel human rather than automated. Tone matches the newsletter voice established in positioning.

5. Runs landing-page-copy-writer using the positioning document, audience profile, and monetization intent. Produces the signup page copy: a headline that states the value in under 10 words, a subheadline that expands the promise in one sentence, 3-4 bullet points describing what the reader gets, a social proof placeholder (with guidance on what to put there — subscriber count, testimonials, press mentions), and a call-to-action button label. Copy is written for a cold visitor who has never heard of the newsletter.

The agent assembles all outputs into a single launch package. The user can interrupt between any two steps to adjust direction, change the tone, or skip a remaining step.

## Output format
A single assembled document titled **NEWSLETTER LAUNCH PACKAGE: [Newsletter Name]**, containing:

1. **Launch summary** (80-120 words) — what the package contains, which steps were run, and any flags for the creator's attention
2. **Positioning document** — if run: niche definition, audience profile, competitive whitespace, editorial angle, and one-line positioning statement (from step 1)
3. **Pilot edition** — the complete first issue, ready to send (from step 2)
4. **Subject line options** — 5-7 options with reasoning, strongest pick flagged (from step 3)
5. **Welcome email** — the full automated email for new subscribers (from step 4)
6. **Landing page copy** — headline, subheadline, value bullets, social proof placeholder, CTA (from step 5)
7. **Pre-launch checklist** — a closing note with the creator's action items before going live: set up the email platform, configure the welcome email automation, publish the landing page, test the signup flow end-to-end, send yourself a test of the pilot edition, prepare 2-3 edition topics so you can maintain the schedule after launch

Total length: 2,500-5,000 words depending on how many steps were included and the edition length. Tone is direct and production-oriented — written for a newsletter creator who wants to launch with confidence, not for a subscriber.

## Quality criteria
- [ ] Each skill output meets its own quality standard independently
- [ ] The assembled package reads as a coherent launch workflow, not a stack of separate outputs
- [ ] The positioning document makes a specific claim about the newsletter's whitespace — not "there is room for a newsletter about X" but "existing newsletters about X do Y; this one does Z instead"
- [ ] The pilot edition matches the voice, format, and editorial angle defined in the positioning — it reads like an issue of the newsletter described in step 1, not a generic article
- [ ] Subject lines are specific to the pilot edition content, not generic newsletter subject lines
- [ ] The welcome email sets accurate expectations about frequency, format, and topics — matching what the positioning and pilot edition actually deliver
- [ ] The landing page copy speaks to the audience described in the positioning, not to a generic reader
- [ ] The landing page headline works as a standalone statement — a cold visitor can understand the value without reading the rest of the page
- [ ] Steps were correctly included or skipped based on the conditions in the skills table
- [ ] The agent stayed within its declared skills array — no undeclared skill invocations
- [ ] Output is free of generic AI-template phrasing — no "in today's fast-paced world," "stay ahead of the curve," "curated insights," "your go-to source," "everything you need to know"
- [ ] The welcome email sounds like a person writing to another person, not like a marketing automation sequence
- [ ] The pilot edition has a strong opening line that earns the second sentence — no throat-clearing
- [ ] The pre-launch checklist gives specific action items, not generic advice

## Example

### Brief (user input)
I want to start a weekly newsletter about independent bookstores — the people who run them, how they survive, what they stock, and why they matter. Target audience is book lovers who care about their local shops, publishing industry people, and indie store owners themselves. I want it to feel like a smart, warm conversation — not academic, not clickbait. I read and admire "The Shift" by Gaspar and "Stat Significant" by Daniel Grafton, but there is nothing like those for the bookstore world.

**Frequency:** Weekly
**Tone:** Smart, warm, opinionated without being preachy
**Monetization:** Free to start, maybe paid tier later
**Name:** I do not have one yet

### Plan (PLANNING mode output)

```
NEWSLETTER LAUNCH PLAN for [name TBD]

Topic area: Independent bookstores — the people, economics, strategy,
           and culture of indie book retail
Audience: Book lovers who care about local shops, publishing industry
          professionals, and indie bookstore owners
Frequency: Weekly
Tone: Smart, warm, opinionated without being preachy
Monetization: Free to start, paid tier later

Step 1: niche-positioning-brief — Define the newsletter's niche, audience,
        competitive whitespace, and editorial angle. Will also suggest
        a newsletter name.

Step 2: edition-writer — Write the complete pilot edition. Topic to be
        selected based on positioning output.

Step 3: subject-line-writer — Generate 5-7 subject line options for the
        pilot edition.

Step 4: welcome-email-writer — Write the automated welcome email for
        new subscribers.

Step 5: landing-page-copy-writer — Write the signup page copy for a free
        newsletter with potential future paid tier.

Gaps that may affect output quality:
- No specific topic for the pilot edition — will select one based on
  positioning. Flag if you have a strong preference.
- No comparable newsletters named in the bookstore space — positioning
  will map the competitive landscape from scratch.

Estimated output: A five-section launch package (positioning, pilot edition,
subject lines, welcome email, landing page copy).

Approve this plan? (yes / adjust / skip steps)
```

### Deliverable (EXECUTION mode output)

---

**NEWSLETTER LAUNCH PACKAGE: SHELF LIFE**

---

**Launch Summary**

This package covers a complete launch kit for Shelf Life, a weekly newsletter about independent bookstores. All five steps were run — positioning was included because no prior niche definition existed. The package includes: a positioning document defining the newsletter's editorial angle and competitive whitespace, a pilot edition profiling a fictional indie bookstore's survival strategy, seven subject line options, a welcome email, and landing page copy for a free newsletter. One flag: the positioning recommends a recurring structure (profile + data point + industry take) — the pilot edition follows this format, and the creator should decide whether to commit to it before publishing.

---

**1. Positioning Document**

**Newsletter Name:** Shelf Life

**One-Line Positioning Statement**
Shelf Life is a weekly newsletter that tells the business story behind independent bookstores — how they survive, adapt, and shape the reading culture of their communities.

**Niche Definition**
Shelf Life covers independent bookstores as small businesses with editorial identities. Each edition examines a specific store, trend, or decision through the lens of: how does this place stay open, and why does it matter that it does?

What Shelf Life covers:
- How individual stores make money, choose inventory, and build community
- Industry trends that affect small booksellers (publisher terms, distributor consolidation, Amazon's pricing pressure, the used-book economy)
- The people who run these stores — their motivations, trade-offs, and daily decisions
- Data and economics: what the numbers actually say about indie retail survival

What Shelf Life does not cover:
- Book reviews or reading recommendations (plenty of newsletters do this well)
- Publishing industry news that does not directly affect indie stores
- Self-publishing or author-side topics
- Chain bookstores or Amazon strategy

**Audience Profile**

| Segment | What they want | Where they are now |
|---------|---------------|-------------------|
| Book lovers who shop indie | Stories about the stores they care about; understanding of why some stores thrive and others close | Follow stores on Instagram, read book blogs, but get no regular reporting on the indie bookstore world |
| Publishing industry professionals | Ground-level intelligence on retail trends, buyer behavior, and store economics | Read Publishers Weekly and The Bookseller, but those publications cover indie stores as a category, not as individual businesses |
| Indie bookstore owners and staff | Peer learning — what other stores do, what works, what does not | Isolated in their own operations, learn from ABA conferences once a year, no regular peer-intelligence source |

**Competitive Whitespace**
Book newsletters are plentiful. Most fall into three categories: reading recommendations (Book Riot, LitHub), publishing industry news (Publishers Weekly, Shelf Awareness), and personal literary essays (The Marginalian). None of these focus on the independent bookstore as a subject. Shelf Awareness covers some store news but does not do deep profiles or business analysis. The ABA's Bookselling This Week is a trade bulletin, not editorial journalism.

The whitespace: no one is writing about indie bookstores the way "The Shift" writes about media or "Stat Significant" writes about data — smart, accessible, one-story-per-issue analysis that makes a specific argument.

**Editorial Angle**
Each edition of Shelf Life leads with one story: a store profile, a trend analysis, or an industry decision that affects indie booksellers. The tone is warm and curious but grounded in specifics — revenue figures where available, inventory decisions, real trade-offs. The newsletter treats bookstore owners as business operators making hard decisions, not as charming eccentrics keeping a dying art alive.

Recurring structure:
- **Lead story** (800-1,200 words): one store, one trend, or one industry question, reported with specific details
- **The Number** (100-150 words): one data point about indie bookselling, with context
- **Shelf Notes** (150-200 words): 2-3 short items — a store opening, a closing, an industry development, a link worth reading

**Suggested Name Rationale**
"Shelf Life" works on two levels: it references the physical shelves that define a bookstore's identity, and it borrows the retail term for how long a product remains viable — which is the central tension of the indie bookstore story. It is short, memorable, and available as a Substack handle.

---

**2. Pilot Edition**

**SHELF LIFE #1**

*How a 600-square-foot bookstore in a college town sells 14,000 books a year — and why the owner almost quit last March.*

---

A bookstore that small should not work.

Six hundred square feet is roughly the size of a one-bedroom apartment. Stack it floor to ceiling with bookshelves and you fit about 4,000 titles. Add a register, a reading chair that someone will inevitably sit in for 45 minutes without buying anything, and a staff picks table by the door, and you are looking at a retail space most commercial landlords would call a storage unit.

The Bindery, a fictional independent bookstore in a Midwestern college town of 28,000 people, has operated in exactly this footprint since 2019. Last year it sold 14,200 books — roughly 3.5 titles per square foot of retail space per year, a ratio that would make most indie booksellers raise an eyebrow and then ask for the owner's phone number.

The owner is Maya Chen, who opened The Bindery at 31 after six years as a buyer at a regional chain. She started with $40,000 in savings, a commercial lease at $1,800 per month, and a thesis: a bookstore that small could survive if every single title on the shelf earned its place.

**The Inventory Thesis**

Most independent bookstores carry between 5,000 and 15,000 titles. The Bindery carries 4,000, and Maya replaces roughly 30% of them every quarter. She does not stock books because publishers send them. She does not stock books because they are on the bestseller list. She stocks books because she believes a specific customer who walks through her door this month will buy them.

"I run a 4,000-title argument about what is worth reading," she says. "Every book on that shelf is a bet. If it sits for 90 days, I lost the bet and it goes."

This is not a universal strategy. A store in a major city with foot traffic from tourists and impulse buyers needs breadth. A store in a college town with 28,000 people — 8,000 of them students who cycle out every four years — needs precision. Maya's insight was that her constraint (the space) was actually her advantage: with only 4,000 slots, every title has to perform, which forces a curatorial identity so specific that customers trust her taste more than an algorithm's.

The numbers back this up. The Bindery's sell-through rate — the percentage of stocked titles that sell at least one copy per quarter — runs around 78%. Industry average for independent bookstores is closer to 55-60%. The difference is not that Maya picks better books. It is that she removes the ones that do not sell, faster than most stores do.

**The March Crisis**

Last March, her landlord proposed a lease renewal at $2,400 per month — a 33% increase. At her current margins (roughly 38% gross on new books, higher on used), the increase would have erased her take-home pay entirely. She spent two weeks running the numbers and concluded she had three options: raise prices (risky in a price-sensitive college market), add a revenue stream (events, used books, or merchandise), or close.

She chose option two. In April she added a used-book section — 600 titles on a new shelf unit that replaced the reading chair. Used books carry a 55-60% margin versus 38% on new titles. By June, used books accounted for 18% of revenue at higher margins, and the math worked again.

The reading chair is gone. Some regulars are upset about that. Maya does not apologize for it. "That chair cost me $200 a month in lost shelf space. I liked it too. But I like staying open more."

**What This Store Gets Right**

The Bindery is not a model for every bookstore. It works because of three specific conditions: a small, loyal market where personal curation matters more than selection breadth; a low-cost location (even at $2,400, her rent is a fraction of what a similar space costs in a coastal city); and an owner who treats inventory like a portfolio, not a catalog.

But the principle underneath it applies broadly: know what your constraint is, and build your identity around it instead of fighting it. A 600-square-foot store cannot compete on selection. It can compete on taste. A store in a town of 28,000 cannot rely on foot traffic. It can rely on regulars. A store with 38% margins cannot absorb cost shocks. It can diversify into higher-margin inventory before the shock arrives.

Maya did not do all of this on purpose from day one. She backed into most of it. But she did it, and The Bindery is still open. That is the story.

---

**The Number**

**$28.34** — the average transaction value at an independent bookstore in the US in 2024, according to the American Booksellers Association. At The Bindery, it is $31.10. The difference is the used-book section: customers who buy one new title and one used title in the same visit spend more per transaction than customers who buy new only. Maya did not predict this. She added used books for the margins. The higher transaction value was a side effect.

---

**Shelf Notes**

- A community-funded bookstore in Vermont raised $180,000 through a local bond program to buy the building it had been renting for 12 years. The store's pitch to investors: a 3% annual return, paid in store credit. Every bondholder is now a customer with a financial reason to keep shopping there.
- Publisher returns — the practice of bookstores sending unsold books back to publishers for credit — cost the industry an estimated $4 billion last year. Stores with high sell-through rates like The Bindery use the returns system less, which means better relationships with distributors and faster access to new titles. The returns system quietly rewards the stores that need it least.
- Worth reading: a 2024 report from the Codex Group found that 62% of book buyers who shop at independent bookstores also buy from Amazon. The "indie vs Amazon" framing is a media narrative. Most readers do both.

---

*Shelf Life is a weekly newsletter about independent bookstores — the people who run them, how they survive, and why they matter. New edition every Thursday.*

---

**3. Subject Line Options**

| # | Subject line | Reasoning |
|---|-------------|-----------|
| 1 | How a 600-sq-ft bookstore sells 14,000 books a year | Specificity drives opens — two concrete numbers create a puzzle the reader wants solved |
| 2 | The bookstore that fired its reading chair | Pattern interrupt — "fired" applied to furniture is unexpected, and the reading chair is an emotional object for book lovers |
| 3 | 4,000 titles. 600 square feet. 78% sell-through. | Data-forward — three numbers in a row signals a story built on evidence, not sentiment |
| 4 | She almost closed her bookstore in March | Personal stakes and a time reference create urgency without clickbait — the "almost" tells you she did not, so you want to know why |
| 5 | What a one-bedroom-sized bookstore gets right | Relatability — everyone knows how small a one-bedroom apartment is, which makes the achievement tangible |
| 6 | The $2,400/month question that almost ended The Bindery | Specificity again — a dollar amount grounds the story in real economics |
| 7 | Shelf Life #1: Every book on that shelf is a bet | Voice-forward — leads with the owner's quote, which establishes the newsletter's tone immediately |

**Strongest pick:** #2 — "The bookstore that fired its reading chair." It is the most distinctive. The other lines could come from any business newsletter; this one could only come from a newsletter about bookstores. It also creates a curiosity gap (why would a bookstore remove a reading chair?) that the pilot edition answers directly.

---

**4. Welcome Email**

**Subject:** You are in. Here is what Shelf Life is about.

---

Thanks for subscribing to Shelf Life.

Here is the short version of what you signed up for: one email per week about independent bookstores. Not book reviews. Not publishing news. The business, craft, and culture of running a physical bookstore in an era when that is not supposed to work anymore.

Each Thursday, you will get:
- **One lead story** — a store profile, a trend, or an industry question, reported with specific numbers and real details
- **The Number** — one data point about indie bookselling, with context that makes it useful
- **Shelf Notes** — 2-3 short items worth knowing about

The newsletter is free. I may add a paid tier in the future for deeper analysis and interviews, but the weekly edition will stay free.

One thing I should be upfront about: I am not writing this as a cheerleader for indie bookstores. I think they matter, and I want more of them to survive. But I am more interested in how they survive — the actual decisions, trade-offs, and numbers — than in arguing that they should. If that distinction matters to you, we will get along.

Your first issue is already in your inbox (or it will be on Thursday if you signed up between editions). It is about a 600-square-foot bookstore that sells 14,000 books a year, and the rent increase that almost shut it down.

If you know someone who would want this — a bookstore owner, a publishing person, a reader who cares about their local shop — forward this email. That is the best way to help Shelf Life find its people.

See you Thursday.

— [Creator name]

---

**5. Landing Page Copy**

**Headline**
The business story behind independent bookstores.

**Subheadline**
Shelf Life is a free weekly newsletter about how indie bookstores survive, adapt, and shape the reading culture of their communities. One story per issue. Real numbers, real decisions, no sentimentality.

**What you get every Thursday:**
- A lead story profiling one store, one trend, or one industry question — with the specific details most book coverage leaves out
- The Number: one data point about indie bookselling, with context
- Shelf Notes: 2-3 short items — store openings, closings, and industry developments worth tracking

**Social proof placeholder**
[After launch, add one of the following — pick whichever you hit first:]
- Subscriber count when it passes 500: "Read by [X] book lovers, store owners, and publishing professionals"
- A testimonial from an early reader: one sentence, named, with their role (e.g., "The only newsletter that treats bookstores like real businesses." — [Name], owner of [store])
- A press mention or share from a notable reader

**CTA button**
Subscribe — free, every Thursday

**Below the fold (optional):**
Shelf Life is written by [creator name]. It started because no one was covering independent bookstores the way they deserve — as small businesses making hard, interesting decisions every day, not as quaint relics of a pre-Amazon world. If you care about your local bookstore, or if you run one, this is for you.

---

**Pre-Launch Checklist**

1. **Set up the email platform.** Create the Shelf Life publication on your chosen platform (Substack, Beehiiv, ConvertKit, Ghost, or similar). Configure the sender name, publication description, and any branding (logo, colors) before publishing the landing page.
2. **Configure the welcome email automation.** Paste the welcome email from section 4 into your platform's automated welcome sequence. Set it to send immediately on signup. Test it by subscribing with a personal email address.
3. **Publish the landing page.** Use the copy from section 5 as the signup page. Leave the social proof placeholder empty for now — add it once you have a subscriber count or testimonial worth showing. A blank social proof section is better than a fake one.
4. **Test the signup flow end-to-end.** Subscribe using an email address you control. Confirm: the signup works, the welcome email arrives within 60 seconds, the formatting is correct on both desktop and mobile, and no links are broken.
5. **Send yourself a test of the pilot edition.** Paste the pilot edition from section 2 into a draft on your platform and send a test email. Read it on your phone — most newsletter opens happen on mobile. Check that the structure is scannable, the subject line renders fully in the inbox preview, and the footer includes an unsubscribe link.
6. **Prepare your next 2-3 edition topics.** The pilot edition sets a standard. Before you publish it, write down the topics for editions 2, 3, and 4 — even if they are just working titles. This prevents the post-launch blank page. Possible angles from the positioning: a store that survives on events revenue, the economics of publisher returns, or how a store in a gentrifying neighborhood decides what to stock.
7. **Set a publishing day and stick to it.** The welcome email promises Thursdays. If you pick a different day, update the welcome email and landing page copy before launch. Consistency matters more than which day you pick.
8. **Tell 20 people before you announce publicly.** Send the signup link directly to 20 people who fit the audience profile — bookstore owners you know, publishing contacts, avid readers in your network. Their signups become your first small proof of demand, and their replies become your first feedback.

## Known limitations
- The agent builds all writing from the positioning document, but the positioning document is constructed from the topic description and audience information the user provides — it does not research the competitive landscape through internet searches or newsletter databases. If the user provides minimal context about comparable newsletters, the competitive whitespace section will be thinner. The quality of step 1 directly affects every subsequent step.
- The pilot edition is written to demonstrate the newsletter's voice and format, but it uses a fictional example by default (per anonymity rules). A real first edition would reference real stores, real data, and real industry sources. The creator will need to replace or verify any specific claims before publishing.
- Subject line reasoning is based on general open-rate principles, not on the creator's specific audience data. A/B testing after launch will produce better subject line decisions than any pre-launch analysis.
- The welcome email is written for a free newsletter with a potential future paid tier. If the creator launches with a paid tier from day one, the welcome email needs significant revision — it should cover billing, refund expectations, and what paid subscribers get that free readers do not.
- The landing page copy does not include design direction, layout specifications, or visual recommendations. It is copy only — the creator or a designer handles how it looks on the page.

## Related agents and skills
- [magazine-editor-agent](../agents/magazine-editor-agent.md) — agent for editorial packages on written articles, different deliverable set
- [podcast-producer-agent](../agents/podcast-producer-agent.md) — agent for podcast episode production workflows
- [niche-positioning-brief](../skills/newsletter/strategy/niche-positioning-brief/SKILL.md) — standalone skill for newsletter positioning
- [edition-writer](../skills/newsletter/writing/edition-writer/SKILL.md) — standalone skill for writing newsletter editions
- [subject-line-writer](../skills/newsletter/writing/subject-line-writer/SKILL.md) — standalone skill for crafting subject lines
- [welcome-email-writer](../skills/newsletter/writing/welcome-email-writer/SKILL.md) — standalone skill for welcome emails
- [landing-page-copy-writer](../skills/newsletter/growth/landing-page-copy-writer/SKILL.md) — standalone skill for signup page copy
- [content-arc-planner](../skills/newsletter/strategy/content-arc-planner/SKILL.md) — standalone skill for planning multi-edition content arcs (useful after launch)
- [paid-tier-pitch-writer](../skills/newsletter/monetization/paid-tier-pitch-writer/SKILL.md) — standalone skill for writing paid subscription pitches (useful when the creator adds a paid tier)

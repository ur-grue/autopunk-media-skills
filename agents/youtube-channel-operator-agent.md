---
name: youtube-channel-operator-agent
type: agent
status: stable
version: 1.0
eval_score: 4.48
maxTurns: 25
allowedTools:
  - Read
  - Write
  - Edit
  - Glob
  - Grep
disallowedTools: []
skills:
  - niche-video-idea-generator
  - competitive-landscape-review
  - hook-generator
  - full-script-writer
  - seo-title-optimizer
  - thumbnail-concept-brief
  - description-seo-writer
  - chapter-timestamps
roles: [youtuber]
tags: [youtube, video, content-creation, workflow, agent, seo, scripting]
---

# YouTube Channel Operator Agent

## What this agent does
Takes a video concept — from a loose topic or a fully formed idea — and produces a complete production package: script, optimized titles, thumbnail brief, SEO description, and chapter timestamps. Everything a creator needs between "I want to make a video about X" and sitting down in front of the camera.

## When to use this agent
- You have a topic in mind and want to go from idea to shoot-ready in one session instead of running seven separate skills manually
- You are batching your pre-production and want a consistent package for each video in a content sprint
- You are a solo creator who scripts, designs thumbnails, and writes metadata yourself — and you want the full pipeline handled in sequence so each piece informs the next
- You have an existing script and want optimized metadata built around it — titles, thumbnail direction, description, and chapters — without starting from scratch on each

## What you need to provide
**Required:**
- Channel niche and target audience in one or two sentences
- Either a specific video topic or a request to generate ideas in the niche

**Optional:**
- Video topic or working title (if you already have one — skips idea generation). If you provide a working title, the agent treats it as an intentional creative decision and builds the package around it rather than generating alternatives from scratch
- Existing script text (if you have one — skips scripting)
- Target video length (default: 8-12 minutes)
- Channel tone and style (e.g., "educational, dry humor," "enthusiastic and beginner-friendly," "calm and visual")
- Example videos from your channel for voice matching
- 4-8 talking points or an outline if you want to guide the script structure
- Channel color palette or visual style for thumbnail direction
- Links to include in the description (subscribe URL, website, social profiles)
- Keywords you already rank for or want to target

## Skills this agent composes

| Step | Skill | What it produces | Condition |
|------|-------|-----------------|-----------|
| 1 | [niche-video-idea-generator](../skills/youtube/pre-production/niche-video-idea-generator/SKILL.md) | 10 ranked video concepts with working titles, hooks, and differentiation angles | Only if the user has no specific topic — skipped when a topic or title is provided |
| 1b | [competitive-landscape-review](../skills/youtube/pre-production/competitive-landscape-review/SKILL.md) | Summary of the top 5-8 existing videos on this topic: what angles they take, what they miss, where the gap is for this creator | Always when a topic is defined — runs after idea selection or when the user provides a topic directly |
| 2 | [hook-generator](../skills/youtube/pre-production/hook-generator/SKILL.md) | 3 opening hook options (provocative question, surprising fact, bold claim) for the selected concept, informed by competitive gaps | Always |
| 3 | [full-script-writer](../skills/youtube/scripting/full-script-writer/SKILL.md) | Complete video script with hook, sectioned body, CTA, and delivery notes | Only if the user has no existing script — skipped when script text is provided |
| 4 | [seo-title-optimizer](../skills/youtube/pre-production/seo-title-optimizer/SKILL.md) | 8-10 optimized title variants ranked by click-through potential with keyword analysis. If the user provided a working title, it is included as option 1 with a note on its SEO strengths and weaknesses — the remaining options are alternatives and variations, not replacements | Always |
| 5 | [thumbnail-concept-brief](../skills/youtube/pre-production/thumbnail-concept-brief/SKILL.md) | 2-3 visual concepts with composition, text overlay, emotion, and color direction | Always |
| 6 | [description-seo-writer](../skills/youtube/post-production/description-seo-writer/SKILL.md) | SEO-optimized description with keyword placement, links section, and hashtags | Always |
| 7 | [chapter-timestamps](../skills/youtube/post-production/chapter-timestamps/SKILL.md) | Timestamped chapter markers aligned to script sections | Always |

## How the agent works

### PLANNING mode

When the agent receives the brief, it:
1. Reads the inputs and determines: Does the user have a specific topic or do they need idea generation? Do they have an existing script or do they need one written? What is the target length, tone, and audience?
2. Determines which of the seven skills to invoke — all seven for a creator starting from scratch, five or six for a creator who arrives with a topic or a finished script
3. Flags any information gaps that will affect specific steps — missing audience description, no tone guidance, no visual style for thumbnail direction
4. Presents a numbered plan showing each step, the skill it uses, what it will produce, and which steps are skipped
5. Waits for user approval before proceeding

The plan output looks like this:
```
PRODUCTION PLAN for [video topic or "idea generation in {niche}"]

Channel niche: [niche]
Target audience: [audience]
Target length: [X] minutes
Tone: [tone description]

Step 1: niche-video-idea-generator — Generate 10 video concepts in this niche
        [INCLUDED / SKIPPED: user provided a specific topic]
Step 2: hook-generator — Write 3 opening hook options for [topic]
Step 3: full-script-writer — Write the complete script (~[X] words for [Y] minutes)
        [INCLUDED / SKIPPED: user provided an existing script]
Step 4: seo-title-optimizer — Generate 8-10 search-optimized title options
Step 5: thumbnail-concept-brief — Create 2-3 thumbnail concept directions
Step 6: description-seo-writer — Write SEO-optimized video description
Step 7: chapter-timestamps — Generate chapter markers from the script

Gaps that may affect output quality:
- [any missing inputs flagged here]

Estimated output: A complete production package containing [list of deliverables].
Each step builds on the previous — the hook feeds the script opening,
the script informs the titles and thumbnail, the titles shape the description.

Approve this plan? (yes / adjust / skip steps)
```

### EXECUTION mode

After the user approves the plan, the agent:
1. If included, runs niche-video-idea-generator using the channel niche, audience, and any example videos provided. Presents the 10 concepts. The user selects one (or the agent recommends the strongest candidate if the user asks). The selected concept becomes the topic for all subsequent steps.
2. Runs competitive-landscape-review on the selected topic (or user-provided topic). Summarizes the top 5-8 existing videos on this topic: what angles they take, what they miss, and where the gap is for this creator. The competitive gaps identified here feed directly into hook generation and script structure — the agent uses them to differentiate the creator's video from what already exists.
3. Runs hook-generator on the selected topic, informed by the competitive gaps from step 2. Presents 3 hook options — provocative question, surprising fact, bold claim — each positioned against the angles competitors have already covered. The user picks one, or the agent carries the strongest into the script.
4. If included, runs full-script-writer using the selected topic, chosen hook, competitive gaps, talking points, target length, and channel tone. Delivers the complete script with section headers, delivery notes, and CTA. The user can adjust before proceeding.
5. If the user provided a working title, the agent acknowledges it as an intentional creative decision before running seo-title-optimizer. The provided title is analyzed for SEO strengths and weaknesses and presented as option 1. The remaining 7-9 options are alternatives and variations — not replacements. If no working title was provided, the agent runs seo-title-optimizer using the video topic, audience, and script content to generate 8-10 ranked title options with keyword analysis and structural annotations. The user can select a title or carry multiple options for A/B testing.
6. Runs thumbnail-concept-brief using the selected title (or top title candidate), the video's core visual idea, and any channel style guidelines. Delivers 2-3 distinct concept directions with full composition specs.
7. Runs description-seo-writer using the selected title, script summary, primary keyword from the title analysis, and any channel links. Delivers the complete description ready to paste into YouTube Studio.
8. Runs chapter-timestamps using the full script and target video length. Delivers the timestamp list in YouTube's paste-ready format.

The agent assembles all outputs into a single production package. The user can interrupt between any two steps to adjust direction, revise an earlier output, or skip a remaining step.

## Output format
A single assembled document titled **PRODUCTION PACKAGE: [Video Title or Topic]**, containing:

1. **Production summary** (60-100 words) — what the package contains, which steps were run, and whether the video is ready for production
2. **Video concept** — if idea generation was run: the selected concept with title, hook, and angle. If the user provided the topic: a restated summary
3. **Competitive landscape** — summary of existing videos on this topic: angles already covered, gaps identified, and the differentiation strategy for this video
4. **Opening hooks** — the 3 hook options from step 3, with the recommended choice marked and a note on how each positions against the competitive landscape
5. **Full script** — the complete script from step 4, or the user's provided script with a note confirming it was used as the base for metadata
6. **Title options** — the ranked title list from step 5 with keyword annotations. If the user provided a working title, it appears as option 1 with an SEO analysis
7. **Thumbnail brief** — the 2-3 concept directions from step 6 with full visual specs
8. **Video description** — the complete description from step 7, paste-ready for YouTube Studio
9. **Chapter timestamps** — the timestamp list from step 8, paste-ready for the description
9. **Next steps** — a closing note listing what to do now: choose a title, brief the thumbnail to a designer or open Canva, do a timed read-through of the script, and paste the description and chapters into YouTube Studio at upload

Total length: 3,000-6,000 words depending on script length and how many steps were included. Tone is direct throughout — written for a creator who wants to move from package to production, not for someone who needs persuading that the process works.

## Quality criteria
- [ ] Each skill output meets its own quality standard independently
- [ ] The assembled package reads as a coherent production workflow, not a stack of separate outputs
- [ ] The competitive landscape review identifies specific gaps and angles — not a generic summary of "what's out there"
- [ ] The hooks are positioned against the competitive gaps — each hook exploits a specific angle that existing videos miss
- [ ] The script's opening uses the selected hook — not a generic intro unrelated to the hook options
- [ ] If the user provided a working title, it is acknowledged as option 1 with an honest SEO analysis before alternatives are offered — not buried among generated options or silently replaced
- [ ] Title options contain the primary keyword identified in the SEO analysis
- [ ] Thumbnail concepts are visually distinct from each other — not three variations of the same composition
- [ ] The description's first 100 characters contain the primary keyword and work as a standalone read above the fold
- [ ] Chapter timestamps align to the script's actual section breaks, not arbitrary time splits
- [ ] Chapter names are viewer-facing descriptions, not internal section labels
- [ ] The agent stayed within its declared skills array — no undeclared skill invocations
- [ ] Output is free of generic AI-template phrasing ("in today's digital landscape," "let's dive in," "without further ado")
- [ ] Steps were correctly included or skipped based on the conditions in the skills table
- [ ] The next-steps section gives specific, actionable instructions — not generic advice about YouTube

## Example

### Brief (user input)
I run an educational YouTube channel about urban gardening — around 45,000 subscribers, mostly apartment dwellers in their 20s and 30s who grow food on balconies and windowsills. Tone is calm, encouraging, practical — I show my own balcony garden and explain things step by step. I want to make a video about growing tomatoes on apartment balconies. I know this is a competitive topic, so I need a strong angle. Target length: 10 minutes.

**Channel niche:** Urban gardening for apartment dwellers
**Target audience:** Renters in their 20s-30s who want to grow food in small spaces
**Tone:** Calm, encouraging, practical
**Topic:** Growing tomatoes on apartment balconies

### Plan (PLANNING mode output)

```
PRODUCTION PLAN for "Growing tomatoes on apartment balconies"

Channel niche: Urban gardening for apartment dwellers
Target audience: Renters in their 20s-30s growing food in small spaces
Target length: 10 minutes (~1,300-1,500 words of spoken content)
Tone: Calm, encouraging, practical

Step 1: niche-video-idea-generator — SKIPPED: user provided a specific topic
Step 2: hook-generator — Write 3 opening hook options for balcony tomato growing
Step 3: full-script-writer — Write the complete script (~1,350 words for 10 minutes)
Step 4: seo-title-optimizer — Generate 8-10 search-optimized title options
Step 5: thumbnail-concept-brief — Create 2-3 thumbnail concept directions
Step 6: description-seo-writer — Write SEO-optimized video description
Step 7: chapter-timestamps — Generate chapter markers from the script

Gaps that may affect output quality:
- No channel color palette provided — thumbnail concepts will use
  general visual direction rather than brand-specific colors.
- No existing videos shared for voice matching — script tone will be
  calibrated to "calm, encouraging, practical" as described.

Estimated output: A six-section production package (hooks, script,
titles, thumbnail brief, description, chapters). Idea generation
skipped because the topic is already defined.

Approve this plan? (yes / adjust / skip steps)
```

### Deliverable (EXECUTION mode output)

---

**PRODUCTION PACKAGE: GROWING TOMATOES ON AN APARTMENT BALCONY**

---

**Production Summary**

This package covers a 10-minute educational video about growing tomatoes on apartment balconies. Six of seven steps were run — idea generation was skipped because the topic was provided. The package contains: 3 opening hooks, a complete 1,340-word script, 8 SEO-optimized title options, 2 thumbnail concept directions, a paste-ready YouTube description, and 8 chapter timestamps. The script is structured around 5 common mistakes balcony growers make with tomatoes, giving the video a clear search angle in a competitive topic. Ready for production after a timed read-through and thumbnail design.

---

**1. Opening Hooks**

**Hook A — Provocative Question:**
'You know what kills more balcony tomato plants than any disease or pest? The pot they're planted in. If your tomatoes are in a container smaller than five gallons, this video is going to save your next harvest.'

**Hook B — Surprising Fact:**
'I grew fourteen pounds of tomatoes last summer. My entire garden is a six-by-three-foot apartment balcony facing east. Here are the five mistakes I stopped making to get there.'

**Hook C — Bold Claim:** *(Recommended)*
'Most balcony tomato guides give you the same advice that works in a backyard and hope it scales down. It doesn't. Growing tomatoes in a small space is a different game, and I'm going to show you the five rules that actually matter.'

*Recommendation: Hook C. It positions the video against the competition — the viewer understands immediately that this is not generic advice repackaged for a balcony. Hook B is a strong backup if the creator prefers to lead with a personal result.*

---

**2. Full Script**

*Approximate word count: 1,340 words | Estimated runtime: ~10 minutes at conversational pace*

**[HOOK — 0:00]**

Most balcony tomato guides give you the same advice that works in a backyard and hope it scales down. It doesn't. Growing tomatoes in a small space is a different game, and I'm going to show you the five rules that actually matter.

[On camera, standing on balcony next to tomato plants. Calm, direct delivery.]

I've been growing tomatoes on this balcony for four seasons. The first two were disappointing — leggy plants, cracked fruit, maybe a handful of tomatoes worth eating. The last two have been genuinely productive. The difference wasn't a secret technique. It was fixing five specific mistakes that almost every balcony grower makes, including me.

**[MISTAKE 1: WRONG CONTAINER SIZE — 1:15]**

The single biggest factor in balcony tomato success is pot size. Not soil, not fertilizer, not sunlight — the pot.

Tomato roots need room. In a small container, the soil heats up faster, dries out faster, and gives the roots nowhere to spread. The plant survives, but it never thrives.

The rule: five gallons minimum for determinate varieties. For indeterminates — the ones that keep growing all season — go to seven or ten gallons if your balcony can handle the weight.

[Cut to close-up of different pot sizes side by side.]

I know what you're thinking: that's a big pot for a small balcony. But one healthy plant in a proper container will outproduce three stressed plants in small pots every time. Fewer pots, better tomatoes.

**[MISTAKE 2: IGNORING WIND — 2:45]**

Backyards have fences, hedges, other buildings breaking the wind. Balconies — especially above the third floor — get hit with gusts that snap stems and dry out leaves faster than you'd expect.

Two things to do. First, stake early. Don't wait until the plant is tall and floppy. Put your support cage or stake in the pot at planting time. Second, position your pots against the wall of the building, not along the railing. The wall breaks the wind. The railing channels it.

[On camera, demonstrating stake placement in a pot.]

If you're on a high floor and wind is serious, grow determinate varieties — they stay shorter, they're sturdier, and they don't need the kind of support structure that an indeterminate vine demands.

**[MISTAKE 3: UNDERWATERING IN HEAT — 4:30]**

Balcony containers heat up from all sides. The sun hits the pot directly — something that doesn't happen with in-ground plants. On a hot day, a five-gallon pot on a south-facing balcony can go from moist to bone dry in eight hours.

Check your soil every morning. Stick your finger two inches down. If it's dry, water until it runs out the drainage holes. In peak summer, that might mean watering every single day.

[Close-up of finger pressing into soil, then watering with a can.]

Two upgrades that help: a saucer underneath to catch runoff — the plant reabsorbs it — and a layer of mulch on top of the soil. Straw or shredded bark, about two inches. Cuts evaporation significantly.

**[MISTAKE 4: WRONG VARIETY CHOICE — 6:15]**

Not every tomato belongs on a balcony. The beefsteak you saw at the garden centre looks great on the label, but it needs deep roots, heavy support, and more consistent conditions than a container can offer.

For balconies, focus on three categories. Cherry tomatoes — Sungold, Sweetie, Tiny Tim — are the most reliable producers in small spaces. Determinate bush types — Roma, Celebrity, Patio Princess — stay compact and fruit all at once, which is useful if you want to batch-harvest for sauce. And if you want a larger tomato, go for a compact indeterminate like Juliet or Glacier — they produce well in containers without becoming unmanageable.

[On camera, holding up seed packets or small plants of each variety.]

Skip anything described as "vigorous" or "spreading" unless your balcony is exceptionally large.

**[MISTAKE 5: SKIPPING THE FEED — 7:45]**

Container soil has no ecosystem. In the ground, worms and microbes cycle nutrients constantly. In a pot, whatever nutrients were in the potting mix at the start get used up within a few weeks. After that, the plant is hungry.

Start feeding two weeks after transplanting. Use a balanced liquid fertilizer every two weeks — or a slow-release granular at planting time and then supplement with a liquid feed once the first fruit sets.

[On camera, measuring liquid fertilizer into a watering can.]

One more thing. Don't use garden soil in containers. It compacts, drains poorly, and often brings in pests. Potting mix — the bag that says "for containers" — is worth the money every time.

**[WRAP-UP AND CTA — 9:00]**

Those are the five mistakes. Right container. Wind protection. Daily water checks. The right variety. Consistent feeding. Fix those and a balcony can produce more tomatoes than you expect from a space that small.

If you're setting up a balcony garden for the first time, I have a full guide on container selection linked in the description. And if you found this useful, subscribe — I post a new video every Tuesday on growing food in small spaces.

[On camera, picking a ripe tomato from the balcony plant, casual smile.]

I'll see you next week.

---

**3. Title Options**

1. **5 Tomato Mistakes Every Balcony Gardener Makes** (listicle + mistake format; primary keyword "balcony gardener" front-loaded; high CTR for problem-aware audience)
2. **Growing Tomatoes on a Balcony — 5 Rules That Actually Work** (how-to + authority; targets "growing tomatoes on a balcony" long-tail search)
3. **Balcony Tomatoes: Why Your Plants Keep Failing** (curiosity gap + pain point; strong for viewers who have tried and struggled)
4. **How I Grew 14 lbs of Tomatoes on a 6-Foot Balcony** (personal result + specific number; high CTR but requires the creator to verify the claim)
5. **Apartment Balcony Tomatoes — The 5 Mistakes Killing Your Plants** (long-tail "apartment balcony tomatoes"; slightly aggressive tone, strong for search)
6. **Small Balcony Tomato Guide: What Actually Matters** (direct how-to; targets "small balcony tomato guide" search; calm register matches channel tone)
7. **Stop Doing This to Your Balcony Tomatoes** (curiosity gap; short, punchy; works well as a browse title but weaker for search)
8. **The Only 5 Things That Matter for Balcony Tomatoes** (authority + simplification; targets viewers overwhelmed by conflicting advice)

*Notes: Options 1 and 2 balance search discoverability with click-through potential — recommended for first publish. Option 4 is the strongest for browse traffic if the creator can verify the harvest number. Option 6 best matches the channel's calm, practical tone. All titles are under 60 characters.*

---

**4. Thumbnail Brief**

**Concept A — The Split Result** *(Recommended)*

- **Emotional hook:** Curiosity and contrast — "which side am I on?"
- **Background:** Split frame. Left side: a sad, leggy tomato plant in a small pot on a concrete balcony, washed-out tones. Right side: a lush, fruit-heavy tomato plant in a large container on the same balcony, warm golden light.
- **Foreground/Subject:** The creator standing between the two plants, looking at the healthy one with a slight expression of satisfaction — not exaggerated surprise, not pointing. Calm and genuine.
- **Text overlay:** "5 RULES" in bold white sans-serif, upper left. Keep it to two words — the image tells the story.
- **Color mood:** Desaturated greens and grey on the left, warm greens and golden tones on the right. The contrast does the work.
- **Production notes:** Shoot both sides on the same balcony. For the "sad" plant, use a small pot with a real struggling plant or a recently transplanted seedling that looks sparse. For the "thriving" side, use the best-looking plant at peak season. Natural light, golden hour preferred for the right side. If the split-frame is too complex to shoot, achieve the contrast in editing with color grading.

**Concept B — The Harvest Close-Up**

- **Emotional hook:** Aspiration — "I want that from my balcony."
- **Background:** A tight shot of the creator's balcony railing with the city visible behind it, slightly out of focus. The urban setting is the point — this is not a backyard.
- **Foreground/Subject:** The creator's hands holding a small colander or bowl filled with ripe cherry tomatoes and a few larger varieties. Hands, not face — the tomatoes are the hero.
- **Text overlay:** "BALCONY TOMATOES" in bold yellow-orange, bottom third. Below it, smaller: "5 mistakes to fix" in white.
- **Color mood:** Warm, summery. Reds and oranges of the tomatoes pop against the muted urban background.
- **Production notes:** Shoot in natural light. The bowl should look abundant but real — not styled like a food magazine. A few imperfect tomatoes add credibility. Frame the shot so the balcony railing and at least one building are visible — the viewer needs to register "this is an apartment" within a second.

---

**5. Video Description**

```
Growing tomatoes on an apartment balcony? These are the 5 mistakes that kill most balcony tomato plants — and the fixes that turned my small balcony into a productive garden.

In this video, I walk through the five most common mistakes apartment gardeners make when growing tomatoes in containers on a balcony: wrong pot size, ignoring wind exposure, underwatering in heat, choosing the wrong variety, and skipping regular feeding. Each mistake comes with a specific fix you can apply this season, whether you're a first-time grower or you've tried before and been disappointed.

I've been growing tomatoes on my own apartment balcony for four seasons. These are the lessons that made the difference between a handful of sad fruit and a genuine harvest.

CHAPTERS:
0:00 Introduction
1:15 Mistake 1 — Wrong container size
2:45 Mistake 2 — Ignoring wind
4:30 Mistake 3 — Underwatering in heat
6:15 Mistake 4 — Wrong variety choice
7:45 Mistake 5 — Skipping the feed
9:00 Wrap-up

LINKS:
Container selection guide: [link]
Subscribe for weekly urban gardening videos: [subscribe link]
Instagram: [link]
Website: [link]

RECOMMENDED VARIETIES MENTIONED:
Cherry: Sungold, Sweetie, Tiny Tim
Bush/Determinate: Roma, Celebrity, Patio Princess
Compact indeterminate: Juliet, Glacier

#balconygarden #growingtomatoes #apartmentgardening #urbangardening #containergardening
```

---

**6. Chapter Timestamps**

```
0:00 Introduction
1:15 Mistake 1 — Wrong container size
2:45 Mistake 2 — Ignoring wind
4:30 Mistake 3 — Underwatering in heat
6:15 Mistake 4 — Wrong variety choice
7:45 Mistake 5 — Skipping the feed
9:00 Wrap-up and next steps
```

*Note: Timestamps are estimated from the script at approximately 135 words per minute. Adjust after the final edit — if a section runs longer during delivery (the container size section often does, because creators tend to ad-lib with their own pots), shift all subsequent timestamps forward. The first timestamp is 0:00 as YouTube requires.*

---

**Next Steps**

1. **Read the script aloud and time it.** Target is 10 minutes. If it runs long, trim the variety recommendations in Mistake 4 — that section has the most cuttable detail. If it runs short, expand the personal anecdotes in Mistakes 1 and 3.
2. **Choose a title.** Options 1 or 2 are the safest for search and CTR. If the 14-pound harvest number is accurate, Option 4 is the strongest browse title.
3. **Brief the thumbnail.** Send Concept A to your designer (or open Canva). Shoot the split-frame comparison during your next golden-hour session. If you can't get both a struggling and thriving plant in the same shoot, Concept B is simpler to execute.
4. **Paste the description into YouTube Studio.** Replace the placeholder links with your actual URLs. The chapters are already embedded in the description — YouTube will pick them up automatically.
5. **Fact-check the variety recommendations.** Confirm that Sungold, Sweetie, Tiny Tim, Roma, Celebrity, Patio Princess, Juliet, and Glacier are all suitable for container growing in your climate zone. Remove any that aren't available in your region.

## Known limitations
- The agent writes scripts optimized for spoken delivery, but it cannot hear the creator's actual voice. Pacing, emphasis, and natural speech patterns vary — every script needs a timed read-through and adjustment before filming. A script that reads well on screen may still feel unnatural when spoken aloud by a specific creator.
- SEO title optimization is based on structural best practices and keyword logic, not real-time search volume data. The agent cannot access YouTube's search analytics, Google Trends, or third-party keyword tools. Title recommendations should be validated against actual search data before committing to a final title.
- Thumbnail concepts are written briefs, not visual designs. The agent describes composition, color, and emotion, but it cannot produce images. A creator without design skills or a designer still needs to execute the concept — the brief reduces back-and-forth but does not eliminate the design step.
- The agent runs skills in sequence, and each skill sees the outputs from earlier steps. However, if the user revises the script after step 3 but does not re-run subsequent steps, the titles, description, and chapters may no longer align with the revised script. Re-running affected downstream steps after a script revision is the user's responsibility.
- Chapter timestamps are estimated from word count at 130-150 words per minute. Actual timestamps shift based on delivery pace, pauses, b-roll inserts, and the final edit. They must be updated after the edit is locked.

## Related agents and skills
- [magazine-editor-agent](../agents/magazine-editor-agent.md) — agent for editorial packages on written articles; different medium, same orchestration pattern
- [niche-video-idea-generator](../skills/youtube/pre-production/niche-video-idea-generator/SKILL.md) — standalone skill for creators who need only idea generation
- [hook-generator](../skills/youtube/pre-production/hook-generator/SKILL.md) — standalone skill for creators who need only opening hooks
- [full-script-writer](../skills/youtube/scripting/full-script-writer/SKILL.md) — standalone skill for creators who need only a script
- [seo-title-optimizer](../skills/youtube/pre-production/seo-title-optimizer/SKILL.md) — standalone skill for creators who need only title options
- [thumbnail-concept-brief](../skills/youtube/pre-production/thumbnail-concept-brief/SKILL.md) — standalone skill for creators who need only a thumbnail direction
- [description-seo-writer](../skills/youtube/post-production/description-seo-writer/SKILL.md) — standalone skill for creators who need only an SEO description
- [chapter-timestamps](../skills/youtube/post-production/chapter-timestamps/SKILL.md) — standalone skill for creators who need only chapter markers
- [content-calendar-planner](../skills/youtube/channel-strategy/content-calendar-planner/SKILL.md) — complementary skill for scheduling multiple videos produced with this agent
- [community-post-generator](../skills/youtube/post-production/community-post-generator/SKILL.md) — complementary skill for announcing the published video to subscribers

---
name: niche-video-idea-generator
status: stable
category: youtube
subcategory: pre-production
version: 1.0
eval_score: 4.5
tags: [youtube, pre-production, ideas, niche, ideation]
---

# Niche Video Idea Generator

## What This Skill Does
Generates 10 targeted video ideas for a specific YouTube niche, each with a working title, one-sentence hook, and content angle suited to the channel's style and audience.

## When To Use This Skill
- You need a batch of fresh video ideas and your usual brainstorm isn't producing anything new
- You're launching a channel in a niche you understand well but haven't mapped the content territory yet
- You've been publishing for a while and want ideas that go deeper than obvious beginner topics
- You want to validate whether a niche has enough content variety to sustain a consistent publishing schedule

## What You Need To Provide
**Required:** Channel niche (be specific — not "fitness" but "strength training for people over 50"); target audience in one sentence; 2–3 example videos already on your channel or videos you admire in this niche.
**Optional:** Topics you've already covered (to avoid repeats); audience pain points you've heard in comments; content formats you prefer (e.g., tutorials, opinion essays, case studies); upload frequency.

## How Claude Approaches This
1. Analyzes the niche and example videos to identify the content patterns already common in that space — then looks for gaps, underserved angles, and audience questions that aren't being answered well.
2. Generates ideas across a range of content types (beginner entry points, intermediate deep-dives, opinion/debate, practical how-to, case study, myth-busting) to give the channel variety rather than 10 variations of the same format.
3. For each idea: writes a working title optimized for search intent, a one-sentence hook that explains why this video is worth watching, and a short angle note explaining what makes this idea distinctive in this niche.
4. Closes with a "Next Step" recommendation: which idea to develop into a script first (typically the one with the highest search demand and lowest production complexity), and which skill to run immediately: seo-title-optimizer to refine the title, or hook-generator to write the opening.

## Output Format
Numbered list of 10 video ideas. Each entry has three lines:
- **Title:** A working title (not final — meant to be refined with the SEO Title Optimizer skill)
- **Hook:** One sentence explaining the video's core value proposition to the target viewer
- **Angle:** One sentence explaining what makes this treatment distinctive — what's the specific point of view or format choice

Total length: approximately 400–600 words. No preamble. No padding. Ends with a one-line note flagging the 2–3 ideas with the strongest search demand potential, and a "Next Step" specifying which idea to develop first (run seo-title-optimizer to validate and finalize the title, then hook-generator to write the opening 30 seconds).

## Quality Criteria
- [ ] All 10 ideas are genuinely distinct — no two ideas are variations of the same concept
- [ ] Each idea is specific enough to start scripting from without further research
- [ ] Ideas span at least three different content formats or angles
- [ ] Titles reflect realistic search language, not insider jargon
- [ ] Hooks explain viewer benefit, not just topic description
- [ ] No idea requires a budget, studio, or access that a solo creator couldn't reasonably have
- [ ] Output includes at least one concrete next action the user can take immediately (which idea to develop first and which skill to run next: seo-title-optimizer or hook-generator)

## Example

### Input
**Niche:** Fermentation and home food preservation — specifically for people who want to reduce food waste and build a more self-sufficient pantry.
**Audience:** Adults 30–55, mostly urban or suburban, interested in sustainability and home cooking but not homesteaders. Intermediate skill level — they've made jam before but haven't tried lacto-fermentation.
**Example videos I like:** "Why Your Sourdough Starter Dies Every Winter" (strong problem-solving angle), "I Fermented Everything in My Fridge For a Month" (experiment/challenge format), "The $30 Fermentation Setup That Lasts a Decade" (budget gear guide).
**Already covered:** Basic sauerkraut, simple kimchi, beginner sourdough.
**Preferred formats:** Tutorial, experiment, myth-busting. No talking-head opinion essays.

### Output
1. **Title:** Why Your Ferments Keep Going Mushy (And How to Fix It)
   **Hook:** Solves the single most common failure point that makes beginners give up on lacto-fermentation.
   **Angle:** Diagnostic format — walks through five root causes with a clear fix for each, positioning the channel as the reliable troubleshooting resource in this niche.

2. **Title:** I Fermented Every Vegetable at the Farmers Market — Here's What Worked
   **Hook:** Tests which produce ferments reliably and which doesn't, saving viewers from wasting expensive seasonal vegetables.
   **Angle:** Experiment format with ranked results; creates a reusable reference video people will return to each season.

3. **Title:** The Fermentation Mistakes I Made in Year One (That No One Warned Me About)
   **Hook:** Honest retrospective that shortcuts the beginner learning curve by naming specific, avoidable errors.
   **Angle:** First-person confession format performs well for mid-size channels; builds trust and drives comments from viewers sharing their own mistakes.

4. **Title:** How to Ferment Fruit Without It Turning Into Alcohol
   **Hook:** Answers a question almost every newcomer asks but rarely finds a clear answer to online.
   **Angle:** Fills a real search gap — most fermentation content either ignores fruit or assumes the goal is alcohol production.

5. **Title:** Zero-Waste Fermentation: What To Do With Scraps, Brine, and Failed Batches
   **Hook:** Directly addresses the channel's food-waste reduction angle while teaching practical techniques most tutorials skip.
   **Angle:** Connects fermentation to the sustainability mission of the channel's audience, likely to over-index with this specific community.

6. **Title:** The Difference Between Canning and Fermenting (And Why You Probably Want Both)
   **Hook:** Clears up the confusion between two preservation methods and helps viewers decide where to start.
   **Angle:** Gateway video for people searching food preservation broadly — high search volume entry point that funnels to deeper channel content.

7. **Title:** I Only Used Fermented Condiments for 30 Days — Here's What Changed
   **Hook:** Challenge format that demonstrates everyday application, making fermentation feel accessible rather than niche.
   **Angle:** Lifestyle experiment with a concrete time frame; replicable by viewers and naturally generates follow-up content.

8. **Title:** How to Read a Ferment: Signs It's Working vs. Signs It's Gone Wrong
   **Hook:** Gives beginners the visual and sensory vocabulary to confidently assess their own ferments without guessing.
   **Angle:** Reference tutorial with strong re-watch value; the kind of video people bookmark and share in community groups.

9. **Title:** The Fastest Ferments You Can Actually Finish in a Week
   **Hook:** Targets the impatient beginner who wants results before committing to a longer process.
   **Angle:** Low-barrier entry point for new subscribers; quick wins build loyalty faster than ambitious multi-week projects.

10. **Title:** Why Supermarket Sauerkraut Won't Give You the Same Results as Homemade
    **Hook:** Uses a comparison people can test themselves to make a compelling case for home fermentation.
    **Angle:** Myth-busting format that validates the viewer's reason for being on the channel in the first place.

**Strongest search demand potential:** Ideas 4, 6, and 8 address high-volume search queries with limited quality competition in this specific niche.

## Known Limitations
- Ideas are generated from pattern analysis of the niche, not from live search data — titles should be validated with a keyword tool before publishing.
- For very obscure micro-niches with fewer than a handful of established channels, Claude has limited reference points and ideas may be more generic than usual. Provide more detailed audience context to compensate.
- This skill does not account for seasonal relevance or trending topics; creators should filter the output through their own awareness of what's current in their community.

## Related Skills
- [seo-title-optimizer](../pre-production/seo-title-optimizer.md)
- [hook-generator](../pre-production/hook-generator.md)
- [full-script-writer](../scripting/full-script-writer.md)
- [content-calendar-planner](../channel-strategy/content-calendar-planner.md)

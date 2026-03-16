---
name: community-post-generator
status: stable
category: youtube
subcategory: post-production
version: 1.0
eval_score: 4.4
tags: [youtube, post-production, community, engagement, social]
---

# Community Post Generator

## What This Skill Does
Writes an engaging YouTube Community tab post to promote a new video upload, tease upcoming content, or spark audience conversation — matched to the channel's voice.

## When To Use This Skill
- You've just published a video and want a Community post that does more than just say "new video out"
- You want to build anticipation before a video goes live
- You need to re-engage a channel audience between uploads
- You want to run a poll or question that doubles as audience research and interaction

## What You Need To Provide
**Required:** Video title or upcoming topic; one sentence about what the video teaches, shows, or argues; channel tone (e.g., "warm and encouraging," "dry humor," "direct and no-BS," "enthusiastic hobbyist").
**Optional:** A surprising or counterintuitive detail from the video that isn't obvious from the title; a specific question the video answers that your audience struggles with; whether you want a poll included; whether this is a new upload, a tease, or a standalone engagement post.

## How Claude Approaches This
1. Identifies the most shareable or curiosity-provoking element of the video — the thing that would make a subscriber think "I didn't know that" or "I've wondered about this" — and builds the post around that rather than the title alone.
2. Writes in the specified channel voice, keeping the post to the Community tab optimal length: long enough to say something meaningful, short enough to read in 15 seconds. Avoids YouTube's standard creator boilerplate ("Hey everyone! Big news!").
3. Ends with a specific engagement prompt — a question, a poll, or a low-friction invitation to comment — calibrated to the topic so it generates meaningful replies, not just reactions.

## Output Format
Two post options per request:
- **Option A:** Narrative post — a short paragraph that builds to the video link prompt, conversational and slightly informal
- **Option B:** Punchy post — 2–4 short lines with more white space, optimized for quick reading and high engagement rate

Both options include a suggested poll (if applicable) with 3–4 options. Each post ends naturally without the word "link" appearing in the copy (Community posts display the linked video as a card automatically). Total length per option: 50–120 words.

## Quality Criteria
- [ ] Post leads with something interesting about the content, not just the title
- [ ] Channel tone is recognizable — doesn't read like a generic creator post
- [ ] Engagement prompt is specific to the topic, not a generic "let me know in the comments"
- [ ] Neither option contains YouTube boilerplate phrases ("Hey everyone," "Don't forget to like and subscribe")
- [ ] Post makes sense to a subscriber who hasn't seen the video yet
- [ ] Both options have meaningfully different structures — not just the same content reformatted

## Example

### Input
**Video title:** The Honest Guide to Freelancing Full-Time in Year One
**What the video covers:** The financial and psychological reality of the first year of freelancing — what the YouTube advice gets wrong, how to set rates, and a specific cash flow strategy most new freelancers never hear about.
**Surprising detail:** Most freelancers price themselves out of their first clients not by charging too much, but by charging too little and attracting the wrong clients.
**Channel tone:** Direct, honest, slightly skeptical of hustle culture. Talks to adults who are making real decisions.
**Post type:** New upload

### Output

**Option A — Narrative**

The first year of freelancing is harder than anyone tells you — not because the work is bad, but because the financial model is genuinely strange and nobody explains it before you quit your job.

This video covers what I wish I'd known: how to set rates that attract serious clients (not the ones who drain you), a cash flow approach that keeps you solvent through the slow months, and the one piece of standard freelancing advice I think actively makes things harder.

If you're thinking about making the jump, or you're already in year one and finding it messier than expected — this one's for you.

What's the biggest thing you wish someone had told you before going full-time?

---

**Option B — Punchy**

New video: the honest version of freelancing year one.

Not "here's how I made six figures in six months."

The real stuff — rates, cash flow, and why charging too little is often worse than charging too much.

What's the hardest part of year one that nobody warned you about? Drop it below — I'm curious what keeps coming up.

---

**Suggested Poll (optional add-on)**
*"What's your biggest challenge with freelancing right now?"*
- Getting consistent clients
- Setting rates confidently
- Managing cash flow and slow months
- Work-life balance / switching off

---

## Known Limitations
- Community posts perform differently depending on channel size — channels under 1,000 subscribers see very limited Community tab reach. For smaller channels, consider whether Instagram or a newsletter serves the same function better.
- This skill cannot write a post that references a specific viral moment, trending topic, or time-sensitive event unless you provide that context. Posts generated without a "surprising detail" input will be serviceable but less distinctive.
- Poll options are written as starting points — adjust the language to match exactly how your audience talks. Generic poll language produces generic responses.

## Related Skills
- [description-seo-writer](../post-production/description-seo-writer.md)
- [chapter-timestamps](../post-production/chapter-timestamps.md)
- [hook-generator](../pre-production/hook-generator.md)

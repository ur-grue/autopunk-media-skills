---
name: description-seo-writer
status: stable
category: youtube
subcategory: post-production
version: 1.0
eval_score: 4.4
tags: [youtube, post-production, seo, description, metadata]
---

# Description SEO Writer

## What This Skill Does
Writes a complete, SEO-optimized YouTube video description — including hook paragraph, keyword-rich body, structured links section, and hashtags — ready to paste into YouTube Studio.

## When To Use This Skill
- Your video is finished and you need a description before or at publish time
- You have been publishing videos with thin descriptions and want to improve discoverability retroactively
- You want a consistent description format across all videos on a channel
- You are uploading a batch of videos and need descriptions written quickly at consistent quality

## What You Need To Provide
**Required:** Video title; 3–5 sentence summary of what the video covers; target audience; primary keyword you want to rank for
**Optional:** Channel links (subscribe URL, website, social profiles); timestamps/chapters (if already written); sponsor or affiliate links to include; secondary keywords; tone of channel (formal, casual, educational)

## How Claude Approaches This
1. Opens with a 2–3 sentence hook paragraph that restates the video's value promise and contains the primary keyword naturally within the first 100 characters — the portion visible before the "Show more" fold
2. Writes a 100–200 word body section that elaborates on video content, incorporates secondary keywords organically, and avoids keyword stuffing
3. Structures the links section in a standard format: chapters (if provided), subscribe CTA, social links, affiliate/sponsor disclosures
4. Closes with 3–5 relevant hashtags placed at the end of the description (YouTube's recommended position)
5. Reviews the full description to ensure keyword density stays between 1–2% and the tone matches the channel register

## Output Format
Full YouTube description, formatted exactly as it should appear in YouTube Studio. Total length: 200–350 words plus links section. First paragraph is the hook (visible before "Show more"). Subsequent paragraphs cover content detail. Links section uses a clean list format. Hashtags on the final line. No markdown headers — plain text only.

## Quality Criteria
- [ ] Primary keyword appears in the first 100 characters of the description
- [ ] The hook paragraph works as a standalone read — someone who sees only those lines should understand the video's value
- [ ] Keywords appear naturally in context, never as a bare list
- [ ] Links section is cleanly formatted and includes a subscribe CTA
- [ ] Hashtags are relevant to the video topic, not generic (#youtube, #video are not acceptable)
- [ ] Total description does not exceed 5,000 characters (YouTube's hard limit)

## Example

### Input
Video title: How to Negotiate Your Salary (And Actually Win)
Summary: The video covers three salary negotiation tactics that work in real job offers — anchoring high, using silence as a tool, and getting competing offers. It includes role-play examples and addresses common fears around negotiation.
Target audience: Job seekers and professionals looking to move roles, 25–40
Primary keyword: salary negotiation
Secondary keywords: how to negotiate salary, job offer negotiation, ask for more money
Channel links: Subscribe: youtube.com/c/careeredgechannel | Website: careeredge.co (fictional) | Instagram: @careeredge
Tone: Direct, confident, practical

### Output
Most people leave $5,000–$20,000 on the table in salary negotiation — not because they lack leverage, but because no one taught them the tactics. In this video, you'll learn exactly how to negotiate your salary and win, using three strategies that work on real job offers.

We cover: anchoring your first number high to shift the entire negotiation range, using deliberate silence after you make your ask (and why it works), and how to create leverage with competing offers even when you don't have one yet. Every tactic includes a role-play example so you can hear how it sounds in a real conversation.

Whether you're negotiating a new job offer or asking for a raise in your current role, these techniques work. Stop accepting the first number you're given.

━━━━━━━━━━━━━━━━━━━━
CHAPTERS
0:00 Introduction
1:45 Tactic 1: Anchor High
5:30 Tactic 2: The Power of Silence
10:15 Tactic 3: Creating Competing Leverage
16:00 Full Role-Play Example
21:30 Common Fears (Answered)
━━━━━━━━━━━━━━━━━━━━

Subscribe for weekly career strategy: youtube.com/c/careeredgechannel
Website & free resources: careeredge.co
Instagram: @careeredge

Note: Some links in this description may be affiliate links. We only recommend resources we use ourselves.

#salarynegotiation #joboffer #careertips #negotiationtips #salaryadvice

## Known Limitations
- Claude cannot access YouTube Analytics or Search Console; keyword suggestions are based on structural best practices, not actual search volume data for your specific channel
- Descriptions optimized for search may feel slightly formal compared to a channel's usual conversational tone — adjust register manually if needed
- The "Show more" fold position varies by device and is approximately 100–150 characters; this skill targets the 100-character threshold as a conservative safe zone
- Affiliate and sponsor disclosure language should be reviewed against current FTC or relevant national guidelines before publishing

## Related Skills
- [seo-title-optimizer](../pre-production/seo-title-optimizer.md)
- [chapter-timestamps](chapter-timestamps.md)
- [community-post-generator](community-post-generator.md)

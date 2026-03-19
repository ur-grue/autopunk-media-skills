---
name: platform-distribution-advisor
status: beta
category: audience-distribution
subcategory: distribution
version: 1.0
eval_score: null
tags: [distribution, platforms, audience, reach, publishing]
---

# Platform Distribution Advisor

## What This Skill Does
Recommends the best platforms for distributing a finished piece of content, with a ranked list and a brief rationale for each recommendation based on the content type, format, length, and intended audience.

## When To Use This Skill
- You have finished content and are deciding where to publish or syndicate it
- You are building a multi-platform distribution plan for a story, episode, or video
- You want to reach a new audience segment beyond your primary publication
- You are adapting existing content for redistribution and need to know which platforms suit it best

## What You Need To Provide
**Required:**
- Content type (article, video, audio, photo essay, data visualization, etc.)
- Topic or subject area (a brief description is enough — one or two sentences)
- Intended audience (professionals, general public, younger readers, regional audience, etc.)
- Content length or duration

**Optional:**
- Your primary publication or home platform (to help identify gaps)
- Any platforms you are already using, so recommendations stay non-redundant
- Paid vs. organic distribution preference
- Geographic focus (local, national, international)

## How Claude Approaches This
1. Identifies the content category — text, audio, video, visual — and cross-references it with which platforms are structurally suited to that format (e.g., long-form text does not perform on short-video platforms)
2. Matches the topic and intended audience to the likely user base of each candidate platform, noting where the audience overlap is strongest
3. Produces a ranked list of three to five platforms with a short rationale for each, including one note on what adaptation (if any) the content would need for that platform
4. Flags any mismatch risks — for example, platforms where the content's length or tone is likely to underperform

## Output Format
A ranked list of three to five platforms. Each entry includes:
- Platform name
- One-sentence rationale (why this content fits this platform and this audience)
- One-line adaptation note (what, if anything, needs adjusting before publishing there)

Total length: 250–400 words. Plain prose rationale, no bullet overload. No marketing language. Written so a journalist or editor can act on it immediately.

## Quality Criteria
- [ ] Every recommended platform is structurally compatible with the stated content format (no recommending long-form articles to a short-video platform)
- [ ] Rationale references the audience or topic specifically, not just generic platform descriptions
- [ ] Adaptation notes are honest — they say what work is required, not just "consider adapting for this audience"
- [ ] At least one recommendation is non-obvious (beyond the most predictable primary platform)
- [ ] No platform is recommended twice or for contradictory reasons

## Example

### Input
Content type: Long-form written investigation (3,500 words)
Topic: How changes to housing inspection regulations over the past decade have led to a rise in unsafe rental properties in mid-sized cities
Intended audience: Renters, housing advocates, local government professionals, and general readers with an interest in urban policy
Length: 3,500 words, with three data charts embedded
Primary publication: A regional news website

### Output
**Platform Distribution Recommendations**

**1. Regional news website (primary — already confirmed)**
Your natural home. Publish in full here first to establish ownership and search presence. Optimise the headline for local search terms and ensure the charts render correctly on mobile.

**2. Medium**
Well-suited for long investigative text that warrants a second life. Housing and urban policy pieces find engaged readers in Medium's civic-interest communities. Republish in full two to four weeks after your original publication date to avoid cannibalising search traffic. Add a canonical link pointing back to the original.

**3. LinkedIn**
Housing policy intersects with professional audiences — urban planners, property managers, local government officers, housing NGO staff — who are active here. Publish a 300-word summary with the key finding and a link to the full piece. The data charts can be posted as standalone images to drive additional reach.

**4. Newsletter syndication (via Substack Notes or a partner newsletter)**
Long investigations perform well when excerpted in issue-focused newsletters. Reach out to one or two newsletters in the housing, city planning, or civic journalism space to offer a guest excerpt. This requires identifying relevant newsletters in advance, but the audience match is high.

**5. Reddit (relevant subreddit communities)**
Communities focused on renting, housing rights, or your specific city or region are active readers of investigative journalism when it directly affects them. Post a plain-text summary of the key findings with a link. Avoid promotional framing — present it as information, not self-promotion.

**What this content is not suited for:** Short-video platforms (TikTok, YouTube Shorts), image-first platforms (Instagram without a strong visual hook), or general Twitter/X threads unless you invest time in a well-structured thread that can stand alone.

## Known Limitations
- Recommendations are based on general platform characteristics and audience behaviour patterns — they are not drawn from your actual analytics or real-time platform data. Treat them as an informed starting point, not a guarantee of performance.
- Platform dynamics shift. Recommendations are grounded in how platforms behave at the time of writing but should be reviewed if significant platform changes have occurred.
- This skill cannot assess whether your publication has existing distribution agreements, exclusivity clauses, or contractual restrictions on syndication. Always check before republishing.
- For highly specialised or niche topics, Claude may recommend broad platforms when a specialist trade publication or industry forum would actually be a stronger fit.

## Related Skills
- [publication-timing-advisor](./publication-timing-advisor.md)
- [audience-persona-builder](../../youtube/channel-strategy/audience-persona-builder.md)
- [cross-platform-repurposer](../../social-media/strategy/cross-platform-repurposer.md)
- [platform-content-plan](../../social-media/strategy/platform-content-plan.md)

---
name: instagram-post-writer
status: beta
category: writing
subcategory: digital-social
version: 1.0
eval_score: null
tags: [instagram, social media, caption, hashtags, visual content, journalism, distribution]
---

# Instagram Post Writer

## What This Skill Does
Writes a complete Instagram caption — including hook, body, call to action, and hashtag set — for a news story, documentary, video, or editorial project, formatted for how Instagram audiences read and discover content.

## When To Use This Skill
- You are publishing a story, episode, or video and need an Instagram caption to accompany the visual post
- Your existing Instagram captions get low reach or engagement and you want a more structured approach
- You need to produce captions at volume (e.g. for a content calendar) without losing quality or voice
- You are adapting long-form journalism or documentary content for an Instagram-first audience who may not read the full piece

## What You Need To Provide
**Required:** A one-paragraph summary of the story or content, a description of the image or video being posted (so the caption relates to the visual), and the platform account's primary tone (e.g. authoritative and factual, conversational, activist, documentary-style).

**Optional:** A specific hook fact or striking statistic from the piece, the target audience, a call to action beyond a link in bio (e.g. "save this for later," "tag someone who needs to see this"), and whether the account uses emoji in captions.

## How Claude Approaches This
1. Writes a first line designed to appear above the "more" fold — typically under 125 characters — that earns the tap to expand. Uses a specific detail, a provocative question, or a bold statement. Never starts with the account name, a greeting, or "New post."
2. Develops the caption body in short paragraphs (two to three sentences each) that expand on the hook, give essential context, and create emotional or intellectual momentum toward the call to action.
3. Closes with a direct, specific call to action: a question that invites comments, a directive to visit the link in bio, or a share prompt. Avoids vague endings like "follow for more."
4. Generates a hashtag set of 15–20 tags in three tiers: highly specific (5), mid-range topic (7), and broad discoverability (5). Places hashtags as a separate block after the caption, not embedded in the text.

## Output Format
Caption body: 100–250 words in plain prose paragraphs. First line: under 125 characters, punchy and standalone. Hashtags: 15–20 tags, presented as a separate block below the caption. One emoji per paragraph maximum if the account uses emoji; none if not specified. Total output includes the caption and the hashtag block as two distinct deliverables.

## Quality Criteria
- [ ] The first line stands alone as a complete, compelling statement that earns a tap to expand
- [ ] The caption body does not simply repeat the headline — it adds context, stakes, or a human angle
- [ ] The call to action is specific ("drop your answer below" or "link in bio to read in full"), not generic
- [ ] Hashtags are tiered from specific to broad and do not include banned or overused tags that suppress reach
- [ ] The caption reads as a coherent piece of writing, not a list of bullet points or a copy-pasted press release

## Example

### Input
Story summary: An investigation into how fast-fashion brands are using chemical dyes that are banned in Europe but legal in their manufacturing countries. The piece reveals that garments sold in high-street stores contain residues that dermatologists link to skin reactions in sensitive individuals.
Image description: A close-up photograph of brightly coloured fabric samples with labels showing country of origin.
Account tone: Investigative journalism, serious but accessible. No emoji.
Hook fact: Seven of the twelve brands tested failed independent laboratory standards for dye residue.
Call to action: Drive readers to the full investigation via link in bio.

### Output

**Caption:**

Seven out of twelve high-street brands failed independent lab tests for chemical dye residue in their fabrics.

These are dyes that are banned for use in finished garments sold within Europe — but legal in the countries where most fast fashion is manufactured. The result is that clothes on the rack in ordinary shops can carry chemical residues at levels dermatologists say are linked to skin reactions, particularly in children and people with sensitive skin.

The brands know their supply chains. The regulations exist. The gap between the two is not an accident.

We tested twelve of the most widely purchased fast-fashion labels. The full investigation, including the laboratory data and the brands' responses, is in the link in bio.

---

**Hashtags:**

#fastfashiontoxics #fabricdyeresearch #chemicalsinfashion #investigativejournalism #fashioninvestigation #fastfashiontruth #sustainablefashion #fashionpollution #textilewaste #consumerrights #fashionindustry #knowyourclothes #environmentalhealth #fashionethics #investigativereporting #fashionnews #clothingchemicals #skinsafety #fashionaccountability #supplychain

## Known Limitations
- Instagram's algorithm prioritises Reels and Stories over static posts with external link calls to action. A caption optimised for a static image post will not automatically perform well in Reel or carousel formats, which require different pacing and visual hooks.
- Hashtag effectiveness varies significantly by account size. Accounts with under 5,000 followers often perform better with 5–10 highly specific hashtags than with 20 mixed-tier ones. This skill defaults to the 15–20 range; adjust based on your account's analytics.
- Instagram does not allow clickable links in captions. Any call to action directing readers to a link depends on the account having an active link in bio — this skill assumes that is in place.
- Captions over 300 words may see reduced organic reach on some account types. If your account's analytics show drop-off at longer lengths, use the shorter end of the recommended range.

## Related Skills
- [facebook-post-writer](./facebook-post-writer.md)
- [caption-writer](../../social-media/content/caption-writer.md)
- [hashtag-strategy-builder](../../social-media/content/hashtag-strategy-builder.md)
- [content-tags-writer](./content-tags-writer.md)

---
name: target-audience-definer
status: beta
category: audience-distribution
subcategory: audience-distribution
version: 1.0
eval_score: null
tags: [audience-research, editorial-strategy, distribution, persona, commissioning]
---

# Target Audience Definer

## What This Skill Does
Produces a clear, specific description of who a piece of content is written for — including what that audience already knows, what they care about, and what they will do with the information — so editors, writers, and distributors can make better decisions at every stage of production.

## When To Use This Skill
- A writer has pitched a story and neither the writer nor editor can articulate exactly who should read it
- You are distributing a finished piece and need to brief a social media or newsletter team on who to target
- A commissioning editor wants to check that a draft is actually written for the audience it was commissioned for
- You are planning a series or content calendar and need to define audience segments before deciding on topics
- A publication is launching a new section and needs to define its readership before commissioning any content

## What You Need To Provide
**Required:** A description of the piece — headline or working title, topic, angle, and the key information it contains.

**Optional:** The publication or platform it will appear in; any existing audience data (demographics, readership surveys, engagement patterns); who the writer imagined as they wrote it; any audiences the publication explicitly does not serve.

## How Claude Approaches This
1. Reads the piece description and identifies the specific knowledge, interests, and concerns it assumes in a reader — not a generic category ("adults aged 25–45") but a concrete set of characteristics that explain why someone would seek this piece out and find it useful.
2. Defines the primary audience in terms of what they already know, what problem or question the piece answers for them, and what they are likely to do with the information after reading. Avoids demographic labels as the primary descriptor — they are secondary to psychographic and contextual fit.
3. Identifies any secondary audiences who might engage with the piece for different reasons, notes any audiences the piece is likely to confuse or disappoint (so the team can decide whether to adjust the writing or narrow distribution), and flags whether the piece's current framing matches the intended audience.

## Output Format
Three sections: (1) Primary Audience — two to three sentences describing who this piece is primarily for in specific, actionable terms; (2) Secondary Audiences — a brief bullet list of other groups who may find value in it, with a one-line reason for each; (3) Audience-Fit Check — one or two sentences noting whether the piece's current framing, vocabulary, and assumed knowledge match the primary audience, and flagging any mismatch. Total length: 150–300 words. Written in plain editorial language, not marketing jargon. No demographic percentages or persona names unless specifically requested.

## Quality Criteria
- [ ] Primary audience description is specific enough that an editor could use it to brief a writer — not "general readers" or "anyone interested in politics"
- [ ] The description explains what the audience already knows and what they want to know, not just who they are
- [ ] Secondary audiences are distinct from the primary audience — not just a broader version of the same group
- [ ] Audience-fit check identifies at least one concrete signal in the piece (a vocabulary choice, assumed knowledge, angle) that confirms or challenges the audience match
- [ ] Output uses no marketing jargon (no "personas," "buyer journeys," "pain points," or "ICP")

## Example

### Input
**Working title:** The quiet collapse of community pharmacies

**Topic and angle:** Independent pharmacies in smaller towns and rural areas are closing at an accelerating rate. The piece reports on the specific pressures — reimbursement rate cuts, increased generic drug costs, competition from online dispensaries — and follows three pharmacy owners in different regions as they decide whether to sell, close, or hold on. Data from the national pharmacy association shows a 23 percent decline in independent pharmacies over seven years.

**Publication:** A weekly current affairs magazine with a mixed readership of urban professionals and policy-interested readers.

### Output

**Primary Audience**
This piece is primarily for readers who already understand that rural healthcare is under strain but have not connected that concern to pharmacy closures specifically. They follow public health and policy coverage with genuine interest, not professional obligation. They are looking for a story that gives structural explanation — why is this happening, who decided, what are the consequences — rather than a human-interest piece alone. They will likely share it with colleagues in health policy, local government, or journalism.

**Secondary Audiences**
- Pharmacists and pharmacy students: directly affected, will read for industry context and validation of their own experience
- Local councillors and public health officials: looking for evidence to cite in resource allocation discussions
- Rural affairs journalists: may follow up on the data angle or regional examples

**Audience-Fit Check**
The piece's structure — leading with individual pharmacists before introducing systemic data — suits a general magazine readership well. However, the passage explaining reimbursement rate mechanics assumes familiarity with NHS or insurance billing systems that many readers will not have. A two-sentence explainer at that point would prevent the piece from losing non-specialist readers at its most important structural argument.

## Known Limitations
- This skill works from the piece description you provide — it cannot read the actual draft. If the draft differs significantly from the description, the audience definition may not match the finished piece. For a precise fit check, provide the actual text or a detailed summary of the argument, not just the topic.
- Audience definition does not substitute for actual reader data. If your publication has readership surveys, analytics, or subscriber profiles, those should be used to validate or override Claude's output.
- This skill does not produce audience size estimates, reach projections, or advertising-ready demographic breakdowns. It is an editorial tool, not a media planning tool.

## Related Skills
- [platform-distribution-advisor](platform-distribution-advisor.md)
- [newsletter-audience-segmenter](newsletter-audience-segmenter.md)
- [social-post-ab-variants-writer](social-post-ab-variants-writer.md)

---
name: spokesperson-briefing-note
status: stable
category: pr-communications
subcategory: media-relations
version: 1.0
eval_score: 4.6
tags: [pr, media-relations, spokesperson, briefing, interview-prep]
---

# Spokesperson Briefing Note

## What This Skill Does
Writes a pre-interview briefing note for a spokesperson, covering the interview context, key messages, anticipated journalist questions, approved lines to take, and topics to avoid.

## When To Use This Skill
- A spokesperson is about to be interviewed by a journalist — on camera, on radio, or in print — and needs structured preparation material
- You are preparing a senior executive who is not regularly in front of media and needs clear guidance on what to say and what to avoid
- The interview involves a sensitive topic, crisis, or controversial issue where messages must be tightly controlled
- You need a single document that functions as both prep material and a record of what was approved before the interview

## What You Need To Provide
**Required:** The journalist's name, outlet, and the reported angle or subject of the interview; the spokesperson's name, title, and organisation; three to five key messages the spokesperson must land; any topics that are off-limits or must be handled with specific language; the interview format (TV, radio, print, podcast) and approximate duration.

**Optional:** A recent press release or statement the interview connects to; specific questions the journalist has submitted in advance; background on the journalist's likely angle or known position; previous on-record statements that must remain consistent; whether there is a call-to-action for the audience.

## How Claude Approaches This
1. Opens with a one-paragraph interview context brief: who is interviewing them, why, the likely angle, and the tone the journalist is expected to take.
2. States the three to five key messages clearly, numbered, with a plain-English rationale for each — not just the message but why it matters to land it.
3. Lists the anticipated questions in journalist register (direct, sometimes adversarial), with a recommended response or line-to-take for each.
4. Provides a "Topics to avoid / handle carefully" section with explicit guidance: what not to say, what to redirect to, and the bridging language to use.
5. Closes with a one-sentence reminder of the single most important thing the spokesperson should leave the audience with.

## Output Format
400–700 words. Headed sections: Interview Context / Key Messages / Anticipated Questions and Suggested Responses / Topics to Avoid or Handle Carefully / One Message to Leave With. Questions in bold, responses in plain text below. Tone throughout: clear, direct, practical — written for someone who will read this on the way to the studio, not in a planning meeting. No jargon.

## Quality Criteria
- [ ] Interview context paragraph identifies the journalist, outlet, and likely angle — not just the logistics
- [ ] Key messages are numbered and stated in one sentence each
- [ ] Anticipated questions are in journalist register, not internal language
- [ ] Every "topic to avoid" has corresponding bridging language — not just a prohibition
- [ ] Suggested responses are usable in the spokesperson's own voice, not corporate boilerplate
- [ ] Closing reminder is one clear sentence

## Example

### Input
Interview: Print interview with Robert Carver, Economics Correspondent, The National Tribune. The interview is about the company's recent announcement that 120 jobs are being relocated from its Manchester office to a facility in Eastern Europe over the next 18 months. Carver's previous coverage has been sympathetic to affected workers.

Spokesperson: Chief Operating Officer, Patricia Lim, Bridgeway Logistics

Key messages:
1. Bridgeway is investing in its UK operations — this move enables long-term growth that secures more UK jobs than it displaces
2. All 120 affected employees are being offered redeployment, enhanced redundancy, or funded retraining
3. The Manchester office is remaining open with a reduced but permanent workforce

Topics to avoid: specific salary or severance figures, the names of any employees, the exact location and cost of the Eastern European facility, any comparison with competitors

Format: Print, approximately 45 minutes, off-site at The National Tribune offices

### Output
**Spokesperson Briefing Note — Patricia Lim, COO**
**Interview: Robert Carver, The National Tribune**
**Date: [insert date] | Format: Print, ~45 minutes**

---

**Interview Context**

Robert Carver covers economics with a track record of sympathetic, worker-focused reporting. He is likely to open with the human impact on the 120 affected employees and press you on whether Bridgeway has exhausted alternatives to relocation. Expect questions that frame the decision as cost-cutting rather than investment. This is a print interview, which means your quotes will be reproduced accurately — precision of language matters.

---

**Key Messages**

1. This decision enables long-term UK growth. The operational change funds capacity that creates more UK roles over the next three years than it displaces today.
2. No one is being left without support. Every affected employee has a personalised options package: redeployment within Bridgeway, enhanced redundancy above the statutory minimum, or funded retraining with an accredited provider.
3. Manchester is not closing. The office continues with a permanent team — this is a restructure, not an exit.

---

**Anticipated Questions and Suggested Responses**

**"Why couldn't these jobs stay in Manchester?"**
The role of this operational function has changed significantly over the past three years. This decision was made to keep Bridgeway competitive and to reinvest in growth — including in the UK.

**"Isn't this just cost-cutting?"**
It is an investment decision. The efficiencies this creates are being redirected into [UK growth initiative or capability]. We would not be able to make that investment without this change.

**"What about the 120 people losing their jobs?"**
No one is losing their job without a genuine alternative. Every individual has access to redeployment, enhanced redundancy, and funded retraining. Our HR team is working with each person individually.

**"Why wasn't this announced sooner?"**
Consultation with affected employees began before any public announcement — that is the right order of events. We did not want people reading about this in the press before we had spoken to them directly.

---

**Topics to Avoid or Handle Carefully**

- **Salary and severance figures:** These are discussed individually. If pressed, say: "The packages are personalised and I'm not going to put individual figures on the record."
- **The Eastern European location and costs:** Redirect: "I'm here to talk about what this means for our UK teams and operations."
- **Competitor comparisons:** Decline: "I can only speak about Bridgeway's decision and Bridgeway's people."

---

**One Message to Leave With**

Bridgeway is a company that invests in the people affected by change — not one that walks away from them.

## Known Limitations
- The quality of the anticipated questions depends on the accuracy of the input about the journalist's known angle. If the journalist takes an unexpected line, the briefing note does not cover it — spokespeople must be prepared to bridge to their messages regardless.
- Claude cannot predict how aggressive or persistent the questioning will be. This briefing note prepares the content of responses but is not a substitute for live media training with a trained coach.
- For interviews touching on litigation, regulatory proceedings, or employment law, every line-to-take in this document must be reviewed by legal counsel before the interview proceeds.

## Related Skills
- [journalist-pitch-email](./journalist-pitch-email.md)
- [crisis-statement-writer](../crisis-comms/crisis-statement-writer.md)
- [faq-document-writer](../crisis-comms/faq-document-writer.md)

---
name: presenter-link-writer
status: stable
category: radio-audio
subcategory: scripting
version: 1.0
eval_score: 4.4
tags: [radio, scripting, presenter, links, continuity, programme-flow]
---

# Presenter Link Writer

## What This Skill Does
Writes natural, conversational presenter links to introduce, bridge, and close segments within a radio programme, matching the show's tone and the presenter's register.

## When To Use This Skill
- A presenter or producer needs scripted copy to open the show, move between items, or close a programme
- You are building a full show script and need connecting tissue between packages, interviews, and music
- The programme has a distinctive tone (warm, authoritative, irreverent, serious) and links need to match it consistently
- A guest interview or package needs a teaser before and a back announcement after

## What You Need To Provide
**Required:** The link type (intro / bridge / back-anno / close), the content being introduced or followed, and the programme's tone (e.g. upbeat daytime, serious current affairs, intimate late-night).
**Optional:** Presenter name, any specific facts or angle to highlight in the link, duration target (in seconds), and examples of the presenter's existing style for voice matching.

## How Claude Approaches This
1. Identifies the function of the link — is it a cold open, a tease into a package, a back announcement after a clip, or a programme close — and anchors the copy to that specific role
2. Calibrates the register to the programme tone: a breakfast show link is punchy and warm, a documentary strand link may be more reflective and measured; in both cases, the language is spoken English, not written
3. Writes the link at the specified length (default 15–25 seconds / ~40–60 words for a bridge; up to 90 seconds for an opening sequence), with a natural lead sentence, a development beat, and a clean handover line

## Output Format
Each link is labelled by type and position (e.g. INTRO LINK, BRIDGE — before interview, BACK ANNO, CLOSE). Script copy is presented in double-spaced lines. Optional speaker notes appear in italics in square brackets, e.g. *[pause before music bed]*. Default length is 20–30 seconds per link. Multiple links for the same show can be delivered in sequence under a shared header.

## Quality Criteria
- [ ] The link's opening sentence does not begin with a name or a subordinate clause
- [ ] The copy reads aloud naturally — no tongue-twisters, no stacked consonants, no awkward syntax
- [ ] The back announcement accurately summarises what the audience just heard
- [ ] Tease links create genuine forward pull without over-promising or spoiling
- [ ] Register is consistent with the stated programme tone throughout
- [ ] No link runs longer than stated or required — radio time is precise

## Example

### Input
Programme: "The Morning Show" — upbeat daytime news-and-features programme, warm and accessible tone
Presenter: no specific name needed
Links needed:
1. INTRO LINK — opening the show; it's 8am Monday; top story today is a rail strike announcement
2. BRIDGE — moving from a music track into a live interview with a nutritionist about seasonal eating
3. BACK ANNO — after a 2-minute package about a community garden project in a deprived neighbourhood
4. CLOSE — ending the show before the 9am news

### Output

---
INTRO LINK — 8:00 PROGRAMME OPEN | ~25 secs

Good morning and welcome to The Morning Show — it's eight o'clock on Monday, and we have a busy one ahead.

If you're planning to travel by train this week, we have some news you'll want to hear first — rail workers have announced a fresh wave of strike action starting Thursday. We'll have the full details in the bulletin at the top of the hour.

Coming up this morning: the expert who says what you eat in January genuinely matters — and it's simpler than you think. Stay with us.

---
BRIDGE — INTO NUTRITIONIST INTERVIEW | ~20 secs

*[after music track fades]*

Now — how often do you actually think about what you're eating at this time of year? Most of us are still working through what's left in the fridge from the holidays.

My next guest says the shift from winter to spring is one of the most important moments to get your diet right — and she's been helping people do exactly that for twenty years.

---
BACK ANNO — AFTER COMMUNITY GARDEN PACKAGE | ~15 secs

That was the story of the Ferndale Community Garden — run entirely by volunteers on what was, three years ago, a derelict patch of land. If you'd like to get involved, their details are on our website.

---
PROGRAMME CLOSE | ~30 secs

*[warm, unhurried pace; slight lift on final line]*

That's The Morning Show for this Monday morning — thank you for spending part of your day with us.

The news is at nine, and we're back tomorrow from six. Until then — look after yourselves, and we'll see you in the morning.

## Known Limitations
- Without a recording or transcript of the presenter's actual delivery style, voice-matching is based on the tone description provided — links may need minor personalisation before use
- Very short bridges (under 10 seconds) are hard to make genuinely informative; the skill will flag when a requested length is too short for the content
- Does not generate music or jingle copy, ad-read copy, or traffic/travel presenter copy — these are distinct formats

## Related Skills
- [bulletin-script-writer](./bulletin-script-writer.md)
- [interview-cue-sheet-writer](./interview-cue-sheet-writer.md)
- [running-order-builder](../production/running-order-builder.md)

---
name: carousel-script-writer
status: stable
category: social-media
subcategory: content
version: 1.0
eval_score: 4.4
tags: [social-media, content, carousel, instagram, linkedin, slides]
---

# Carousel Script Writer

## What This Skill Does
Writes the copy for a multi-slide Instagram or LinkedIn carousel post, with a strong opening slide, logical slide-by-slide progression, and a final slide that drives action or invites engagement.

## When To Use This Skill
- You have a complex idea, argument, or story that benefits from being broken into sequential slides
- You want to repurpose a long article, report, or interview into a high-engagement visual format
- You are creating educational or insight-driven content for a professional or media audience
- You want to share behind-the-scenes production insight, editorial methodology, or documentary storytelling in a format designed for saves and shares

## What You Need To Provide
**Required:** The platform (Instagram or LinkedIn), the topic or argument you want the carousel to cover, the number of slides you want (suggest 6–10), the account type or voice.

**Optional:** The specific audience you are targeting, whether this is based on an existing piece of content (article, episode, documentary), a call to action for the final slide, any design constraints (e.g., maximum characters per slide for the design template).

## How Claude Approaches This
1. Plans the carousel structure before writing: slide 1 is a hook that stops the scroll (a claim, a question, or a provocation); slides 2–(n-1) develop the argument or story one idea per slide; the final slide is a CTA, a question, or a summary worth saving
2. Writes each slide with minimal text — carousels reward brevity per slide; each slide should contain one idea, stated in the fewest possible words that still make it land
3. Provides a caption to accompany the carousel post (using the same logic as the caption-writer skill) and a suggested slide design note for each slide (what type of visual would work: typographic, photographic, illustrated)

## Output Format
Slide list with: slide number, headline text (large text, max 8 words), body text (supporting copy, max 25 words per slide), and a slide design note. Plus: accompanying caption for the post (75–150 words for Instagram, 100–180 words for LinkedIn). Total output: structured slide script + caption. Each slide clearly separated and labelled.

## Quality Criteria
- [ ] Slide 1 is a hook — a claim, question, or statistic that creates immediate curiosity
- [ ] Each slide contains exactly one idea — no slide tries to do two things
- [ ] Text per slide is within the specified limits — carousel copy that's too long fails on mobile
- [ ] Progression is logical — a reader swiping forward should feel they are getting somewhere
- [ ] Final slide has a specific CTA or question — not "follow for more" as the only action
- [ ] Accompanying caption works as a standalone post even without the slides

## Example

### Input
Platform: LinkedIn
Topic: Five things documentary filmmakers know about storytelling that most corporate communicators don't
Slides: 8
Account: Documentary filmmaker / production company
Voice: Direct, knowledgeable, not preachy
Audience: Communications professionals, PR, brand storytelling teams
CTA: DM or comment for the full essay

### Output

---

**CAROUSEL SCRIPT — LinkedIn**
*"5 Things Documentary Filmmakers Know That Corporate Communicators Don't"*

---

**Slide 1 — HOOK**
Headline: *Corporate storytelling is broken.*
Body: Not because companies don't care about stories. Because they've never spent three years following one.
Design note: Bold typographic — white text on dark background. High contrast.

---

**Slide 2**
Headline: *The most interesting person isn't the CEO.*
Body: Documentary filmmakers spend months finding the person whose story actually explains the thing. Most brand storytelling never makes that search.
Design note: Split image — two contrasting portraits, anonymous.

---

**Slide 3**
Headline: *Tension is not bad for your brand.*
Body: Documentaries work because they let conflict exist. The obstacle is the story. Smoothing it out removes the reason to keep watching.
Design note: Typographic — a quote pulled from the body text, large.

---

**Slide 4**
Headline: *Specificity > inspiration.*
Body: "A woman who rebuilt her life" is forgettable. "A 58-year-old electrician who started her company after being made redundant twice" — that's a person.
Design note: Two text blocks side by side — the generic version vs the specific version.

---

**Slide 5**
Headline: *Your audience knows when you're performing.*
Body: Documentary subjects who perform for camera are the least interesting. So are brands. The most engaging content is made by people who've stopped trying to look good.
Design note: Typographic — clean, centred.

---

**Slide 6**
Headline: *Structure is invisible when it works.*
Body: The best documentaries don't feel structured. They feel inevitable. That requires more planning than most campaigns allow for.
Design note: Timeline or flowchart graphic — abstract.

---

**Slide 7**
Headline: *The most powerful moment is often the smallest.*
Body: A gesture. A pause. The detail that the subject doesn't know you caught. That's what people remember. Not the key message.
Design note: Close-up photography — hands, detail shot.

---

**Slide 8 — CLOSE / CTA**
Headline: *The full version is an essay.*
Body: If you work in communications, PR, or brand storytelling and want to read it — DM me or drop a comment below.
Design note: Clean typographic CTA — strong contrast, simple layout.

---

**ACCOMPANYING CAPTION**

Five years of documentary filmmaking have taught me things about storytelling I never would have learned in a communications or marketing context.

The main one: the rules that make documentaries work are not specific to documentary. They're just rules about how attention and trust actually function.

I've written them up as a short carousel. If any of them are useful or infuriating, I'd genuinely like to hear why.

(Full essay available on request — DM or comment.)

## Known Limitations
- Carousel performance is heavily dependent on the visual execution. Well-written copy on a poorly designed slide will underperform. This skill produces the copy and design direction, not the finished visual.
- LinkedIn and Instagram have different algorithmic relationships with carousels. LinkedIn currently rewards long carousel dwell time; Instagram Reels have overtaken carousels in organic reach for most accounts. Check current best practice for your platform before investing heavily in carousel production.
- The skill defaults to an educational or insight-driven carousel format. Purely promotional carousels (product launches, event announcements) follow different structural logic and should be specified separately.

## Related Skills
- [caption-writer](caption-writer.md)
- [thread-writer](thread-writer.md)
- [short-form-video-brief](short-form-video-brief.md)

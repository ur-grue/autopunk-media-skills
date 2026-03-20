# Writing Better Inputs

The quality of what Claude gives you depends almost entirely on the quality of what you give Claude. This guide shows you how to write inputs that get usable output on the first try.

---

## The Core Principle

**Be specific about what you know. Be explicit about what you want.**

Claude isn't reading your mind. It's reading your words. The more precise your brief, the more precise the output.

---

## The Five Things That Matter

### 1. Subject Matter — What is this about?

Don't just name the topic. Describe the angle, the context, and the stakes.

| Weak | Strong |
|------|--------|
| "My video is about climate change" | "My video is about why insurance companies are quietly pulling out of coastal markets — and what that signals about climate risk that governments won't say publicly" |
| "Write a press release about our event" | "Write a press release for a two-day investigative journalism conference in Berlin, 400 attendees expected, keynote by a former intelligence analyst turned whistleblower" |

### 2. Audience — Who is this for?

Age, profession, knowledge level, and what they care about. Different audiences need completely different outputs.

| Weak | Strong |
|------|--------|
| "General audience" | "Mid-career journalists aged 30–45 who cover policy and feel overwhelmed by data-heavy stories" |
| "Young people" | "University students aged 18–22 who watch video essays and are skeptical of mainstream media" |

### 3. Tone — How should it sound?

Name the tone explicitly. If you can, reference something the audience already knows.

| Weak | Strong |
|------|--------|
| "Professional" | "Authoritative but accessible — think Economist briefing, not academic paper" |
| "Casual" | "Conversational and slightly irreverent, like a smart friend explaining something at a bar — not a brand trying to sound relatable" |

### 4. Format — What does the output look like?

Tell Claude the structure, length, and format you expect. Don't make it guess.

| Weak | Strong |
|------|--------|
| "Write me some social posts" | "Write 5 tweets, each under 280 characters, with a hook in the first line and a call to action at the end" |
| "Give me a treatment" | "Write a 2-page treatment with logline, synopsis, visual approach, and target broadcaster section — formatted for a commissioning editor who reads 50 of these a week" |

### 5. Constraints — What should it avoid?

Every field has things you don't want. Name them.

| Weak | Strong |
|------|--------|
| (nothing) | "Don't use jargon that a general newspaper reader wouldn't understand. Avoid clichés like 'in today's fast-paced world' or 'now more than ever'" |
| (nothing) | "Don't reference any real companies, brands, or public figures. All examples must be fictional but realistic" |

---

## Quick Template

If you're not sure how to structure your input, use this:

```
[Paste the skill instructions here]

SUBJECT: [What this is specifically about — angle, context, stakes]
AUDIENCE: [Who will read/watch/hear this — age, role, knowledge level]
TONE: [How it should sound — with a reference point if possible]
FORMAT: [Structure, length, sections you expect]
AVOID: [Anything you don't want in the output]

[Paste any source material — transcripts, notes, data, links]
```

---

## Common Mistakes

### Giving too little context
"Write a podcast episode about AI" gives Claude nothing to work with. What aspect of AI? For what audience? What's the angle that makes this episode worth someone's 45 minutes?

### Giving too much raw material without direction
Pasting a 10,000-word transcript and saying "clean this up" is vague. Instead: "Clean up this transcript for publication. Preserve the speaker's voice and idioms. Remove filler words and false starts. Keep it under 3,000 words. Flag any claims that need fact-checking."

### Assuming Claude knows your house style
Claude doesn't know your publication's conventions unless you tell it. If you write for a specific outlet, describe the style: sentence length, formality level, whether you use Oxford commas, how you handle attribution.

### Not saying what "good" looks like
If you have an example of output you liked from a previous session, paste it and say "match this quality and style." A reference example is worth more than ten adjectives.

### Skipping the "avoid" section
Without constraints, Claude defaults to generic professional language. If your brand has a distinct voice, tell Claude what it's *not* as well as what it is.

---

## Before and After

### Before:
```
Write some headlines for my article about remote work.
```

### After:
```
Write 8 headlines for a long-form magazine feature about remote work.

SUBJECT: The article argues that remote work didn't "fail" — companies
just measured the wrong outcomes. It draws on three years of productivity
data from a 2,000-person tech company that went fully remote, then
reversed the decision, then went remote again.

AUDIENCE: Business readers who follow workplace trends. They've read
dozens of remote-work takes and are tired of hot takes — they want data.

TONE: Smart, confident, slightly contrarian. Think Bloomberg Businessweek
cover story, not LinkedIn thought leadership.

FORMAT: Mix of short punchy headlines (5-7 words) and longer explanatory
headlines (10-15 words). At least one should work as a social media share.

AVOID: "The future of work" — overused. No questions as headlines. No
"Why [X] is wrong about [Y]" format.
```

The second version gives Claude everything it needs to produce headlines you'd actually consider using.

---

## One Last Thing

You don't have to get the input perfect on the first try. If the output is close but not right, tell Claude what to change:

- "Make the tone sharper — this reads too safe"
- "Cut the introduction by half — get to the point faster"
- "The third option is closest to what I want — develop that one further"
- "This is too generic — add more specific details from the source material I provided"

Iteration is normal. The skills get you 80% there. Your feedback gets you to 100%.

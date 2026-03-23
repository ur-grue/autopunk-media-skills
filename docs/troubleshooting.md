# Troubleshooting

Output not what you expected? Here are the most common problems and how to fix them.

---

## The output is too generic

**Why it happens:** Your input didn't include enough specific detail. Claude fills gaps with safe, generic language.

**Fix:** Add concrete specifics — the exact angle, the audience's knowledge level, the tone you want, and any constraints. See [Writing Better Inputs](writing-better-inputs.md) for a quick template.

**Example fix:**
- Before: "Write a pitch for my documentary"
- After: "Write a pitch for a 4×52-minute observational documentary about a community of amateur paleontologists in Montana who keep finding fossils that contradict established timelines. Target: European public broadcasters. Tone: curious and rigorous, not sensational."

---

## The output is the wrong length

**Why it happens:** You didn't specify length, so Claude guessed.

**Fix:** State the length explicitly in your input:
- "Write a 150-word summary"
- "Keep this under 500 words"
- "This should be 2 pages, single-spaced"
- "Write 3 paragraphs maximum"

---

## The tone is off

**Why it happens:** Words like "professional" or "casual" are too broad — they mean different things in different contexts.

**Fix:** Describe the tone with a reference point:
- "Authoritative but warm — like a senior editor mentoring a junior reporter"
- "Dry and precise — think wire service copy, not magazine feature"
- "Energetic but not performative — like a podcast host who actually knows the subject"

If you have an example of the right tone from a previous output or published piece, paste it and say "match this voice."

---

## The output contains invented facts or statistics

**Why it happens:** Claude generates plausible-sounding information. If you ask for statistics or quotes without providing source material, it may fabricate them.

**Fix:**
1. Provide your own data, quotes, and statistics in the input
2. Tell Claude explicitly: "Only use facts and figures I provide — do not invent statistics"
3. Always fact-check any numbers, dates, or claims in the output before publication

Every skill documents this risk in its "Known Limitations" section. Read it before you rely on the output.

---

## The output doesn't match my publication's style

**Why it happens:** Claude doesn't know your house style unless you describe it.

**Fix:** Include style guidance in your input:
- "We use British English spelling"
- "Our house style avoids semicolons and uses short paragraphs (2-3 sentences max)"
- "We always attribute by full name on first reference, surname only after"
- "We never use 'in today's world' or similar filler phrases"

For repeated use, save your style notes in a text file and paste them into every session.

---

## The output repeats the same structure every time

**Why it happens:** Skills have a default structure that Claude follows consistently. If you run the same skill repeatedly with similar inputs, you'll get similar patterns.

**Fix:**
- Ask for variation explicitly: "Give me 3 alternative structures for this"
- Change your input angle — a different framing produces different output
- Tell Claude what to avoid: "Don't use the same opening pattern as last time — try a different approach"

---

## The output is too long and padded

**Why it happens:** Without a length constraint, Claude tends to be thorough rather than concise.

**Fix:**
- Set a word count or page limit
- Add: "Be concise. Every sentence must earn its place."
- After the first output: "Cut this by 40%. Remove anything that doesn't directly advance the argument."

---

## The skill didn't work at all

**Why it happens:** Either the input was missing required information, or Claude didn't follow the skill structure.

**Fix:**
1. Re-read the skill's "What You Need To Provide" section — make sure you included everything marked **Required**
2. Paste the full skill instructions again (not just a summary)
3. If it still doesn't work, [open a bug report](https://github.com/ur-grue/autopunk-media-skills/issues/new?template=bug-report.md)

---

## The output has the right content but wrong format

**Why it happens:** You expected bullet points but got paragraphs, or vice versa.

**Fix:** Specify format explicitly:
- "Format as a numbered list, not paragraphs"
- "Use markdown headers to separate sections"
- "Present this as a table with columns for [X], [Y], and [Z]"
- "Write this as a script with speaker labels, not as prose"

---

## I got a good result once but can't reproduce it

**Why it happens:** Claude's outputs vary between sessions. Small changes in input phrasing can shift the output.

**Fix:**
1. Save the exact input that produced the good result
2. Save the output as a reference
3. In future sessions, paste both and say: "Here's the input and output quality I want. Match this standard."

---

## Still stuck?

- Check the skill's **Known Limitations** section — it may be a documented constraint
- Read [Writing Better Inputs](writing-better-inputs.md) for a systematic approach to improving your prompts
- [Open a quality report](https://github.com/ur-grue/autopunk-media-skills/issues/new?template=quality-report.md) on GitHub — include your input and the output you received so we can improve the skill

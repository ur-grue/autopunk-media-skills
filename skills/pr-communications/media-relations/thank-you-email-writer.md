---
name: thank-you-email-writer
status: stable
category: pr-communications
subcategory: media-relations
version: 1.0
eval_score: 4.39
tags: [pr, email, thank-you, media-relations, relationship-building, journalist]
---

# Thank-You Email Writer

## What This Skill Does
Writes a brief, genuine thank-you email to a journalist or media contact after coverage, an interview, or a professional favour, reinforcing the relationship without being transactional.

## When To Use This Skill
- A journalist has published a story based on your pitch or press release
- A contact gave you an interview, a quote, or access to sources
- A media professional made an introduction, shared a tip, or provided off-the-record guidance
- You want to maintain a working relationship after a successful interaction

## What You Need To Provide
**Required:**
- The recipient's name and role
- What you are thanking them for (published story, interview, introduction, etc.)
- One specific detail about why their contribution mattered (avoids generic "thanks for everything")

**Optional:**
- A concrete offer of future value (e.g., early access to an upcoming announcement, an introduction to a relevant source)
- Your relationship history (first interaction, occasional contact, long-standing relationship)
- Whether the coverage was positive, neutral, or mixed (tone adjusts accordingly)
- Preferred sign-off name and title

## How Claude Approaches This
1. **Opens with specificity, not pleasantries.** The first sentence references the exact thing being acknowledged — the article headline, the interview date, or the specific favour. This signals that the email is personal, not a mass send.

2. **Keeps gratitude proportional.** A published feature gets warmer language than a brief mention in a round-up. An introduction gets a lighter touch than someone who spent two hours on camera. Claude matches the weight of the thank-you to the weight of the contribution.

3. **Avoids transactional framing.** The email never reads as "thanks for the coverage, here is my next pitch." If a future value offer is included, it is framed as genuinely useful to the journalist — not as a quid pro quo.

4. **Handles mixed or critical coverage gracefully.** If the coverage was not entirely positive, the thank-you acknowledges the journalist's work without disputing the content. Professionalism is the priority — arguing in a thank-you email destroys the relationship faster than saying nothing.

5. **Closes warmly but without obligation.** No ask, no call to action, no "let me know if you need anything." The email ends as a full stop — appreciative and complete.

## Output Format
A ready-to-send email: subject line and body. Total body length: 40–90 words. Tone: warm, professional, sincere. No bullet points, no formatting — reads like a real person wrote it in two minutes. Subject line is simple and specific (not "Thank you!" — references the actual subject).

## Quality Criteria
- [ ] First sentence references the specific thing being thanked for
- [ ] Body is under 90 words
- [ ] Gratitude is proportional to the contribution — not over-the-top for a minor mention
- [ ] No pitch, no ask, no call to action embedded in the thank-you
- [ ] Tone matches the relationship stage (formal for new contacts, warmer for established ones)
- [ ] If coverage was mixed or critical, the email remains gracious and does not argue
- [ ] Reads as genuine — not templated or performative

## Example

### Input
**Recipient:** David Chen, Technology Editor, Metro Business Weekly

**What happened:** David published a 1,200-word feature on the growth of community-owned broadband cooperatives, based on an interview with your organisation's director and data your team provided.

**Specific detail:** The piece highlighted a statistic from your annual report that had not been picked up before — the 40% cost reduction for members in the first two years.

**Relationship:** Second interaction. David covered a brief item about the cooperative six months ago.

**Coverage tone:** Positive.

**Future value offer:** Your organisation is releasing a national survey on broadband access gaps in May.

### Output

**Subject:** Your broadband co-op piece — much appreciated

Hi David,

Wanted to say thank you for the feature in this week's Metro Business Weekly. The piece gave the cooperative model a thorough and fair treatment, and pulling out the 40% cost-reduction figure was a smart lead — that number has been buried in our annual report for months.

We have a national broadband access survey coming out in May that might be in your area. Happy to send you an advance copy when it is ready if that would be useful.

Thanks again,
Rachel Torres
Head of Communications, National Broadband Cooperative
rachel@nbcoop.example.com

## Known Limitations
- Claude cannot verify whether the coverage was accurate or fair. If you describe coverage as "positive" but it contained errors, the thank-you may inadvertently endorse inaccurate reporting. Review the piece before sending.
- The skill produces a single email. If you need to thank multiple contacts for the same piece of coverage, each email should be generated separately with personalised details — batch thank-yous read as insincere.
- For contacts in cultures with different professional communication norms (e.g., more formal honorifics, different sign-off conventions), you may need to adjust the output. Claude defaults to a Western professional register.

## Related Skills
- [follow-up-email-writer](./follow-up-email-writer.md) — follow up on a pitch that has not received a response
- [journalist-pitch-email](./journalist-pitch-email.md) — write the original pitch that led to the coverage
- [spokesperson-briefing-note](./spokesperson-briefing-note.md) — prepare a spokesperson before a media interview

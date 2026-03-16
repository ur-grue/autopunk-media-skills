---
name: chapter-timestamps
status: stable
category: youtube
subcategory: post-production
version: 1.0
eval_score: 4.6
tags: [youtube, post-production, chapters, timestamps, navigation]
---

# Chapter Timestamps

## What This Skill Does
Generates a clean, correctly formatted YouTube chapter timestamp list from a video script, outline, or finished transcript.

## When To Use This Skill
- Your video is over 5 minutes and you want to add chapters to improve viewer navigation and watch time
- You have a finished script and want timestamps auto-generated before you finalize the edit
- You are re-uploading older videos and want to add chapters retroactively using a transcript
- You want a consistent chapter naming style across all videos on a channel

## What You Need To Provide
**Required:** The full video script, transcript, or a detailed outline with section names; approximate total video length
**Optional:** Whether the video has a cold open before the formal introduction; preferred chapter naming style (question, statement, short noun); any sections you want to combine or split differently than the source material

## How Claude Approaches This
1. Reads the full script or transcript and identifies natural topic breaks — where the subject, scene, or argument shifts meaningfully
2. Assigns a descriptive, viewer-facing chapter name to each segment — short (3–6 words), action-oriented where possible, and written so a viewer scanning chapters can understand the video structure without watching
3. Estimates timestamps based on typical spoken word rate (approximately 130–150 words per minute) when working from a script, or extracts exact times when working from a timestamped transcript
4. Formats the output in YouTube's required format (0:00 must be the first timestamp; all timestamps on separate lines) and reviews for minimum chapter length (YouTube requires at least 3 chapters and each chapter must be at least 10 seconds)
5. Flags any sections that may be too short to function as standalone chapters and suggests alternatives

## Output Format
A clean list of timestamps in YouTube paste-ready format: `0:00 Chapter Name` on each line. The first chapter is always at 0:00. Total chapters typically 5–12 for a 10–30 minute video. Each chapter name is 3–6 words. A brief note below the list explains how timestamps were estimated (script-based or transcript-based) and flags any sections that may need adjustment after the edit is locked.

## Quality Criteria
- [ ] First timestamp is exactly 0:00
- [ ] Every timestamp is on its own line in `M:SS` or `H:MM:SS` format
- [ ] Chapter names are viewer-facing descriptions, not internal script labels ("The Setup" is weak; "Why Most People Get This Wrong" is strong)
- [ ] No chapter is fewer than 10 seconds from the next
- [ ] The full chapter list accurately reflects the video's structure — nothing significant is missing
- [ ] A note is included explaining whether timestamps are estimated or exact

## Example

### Input
Script excerpt (with word counts noted per section):

**Cold open** (~120 words): Presenter asks "Have you ever spent an hour making a meal plan, then ordered pizza anyway?" — sets up the problem of meal planning failure.

**Introduction** (~80 words): Channel intro, video overview, what viewers will learn by the end.

**Part 1: Why meal plans fail** (~350 words): Covers three root causes — over-ambition, no buffer days, and ignoring food preferences.

**Part 2: The 3-Day Rotation System** (~400 words): Explains the core method: cycling three base meals per week with variations rather than planning 7 unique meals.

**Part 3: Building Your First Rotation** (~500 words): Step-by-step walkthrough with example rotation using chicken, legumes, and a grain base.

**Part 4: Shopping list strategy** (~300 words): How to build a shopping list from the rotation rather than from individual recipes.

**Outro** (~150 words): Recap, CTA to subscribe, mention of next week's video.

Total estimated length: ~18 minutes

### Output
```
0:00 Why Meal Plans Always Fail You
1:05 What You'll Learn Today
1:40 The 3 Root Causes of Meal Planning Failure
5:00 The 3-Day Rotation System Explained
8:10 Build Your First Meal Rotation (Step by Step)
12:00 How to Write Your Shopping List From a Rotation
15:45 Recap and What's Coming Next
```

*Note: Timestamps estimated from script at ~140 words per minute. Adjust after video edit is locked — cold open and intro may compress if delivery is fast. The cold open and introduction have been merged into a single chapter ("Why Meal Plans Always Fail You") as they form a continuous rhetorical unit; split them if your edit treats them as distinct segments.*

## Known Limitations
- Timestamp estimates from scripts have a margin of error of ±15–20 seconds per section; always verify against the locked edit before publishing
- YouTube requires a minimum of 3 chapters and each must be at least 10 seconds long; for very short videos, this skill will note when chapters cannot be generated
- Cold opens, sponsor reads, and cards/end screens are not automatically identified — flag them explicitly in your input for accurate timestamp placement
- Chapter names optimized for viewer clarity may differ from how you named sections internally; review before publishing

## Related Skills
- [description-seo-writer](description-seo-writer.md)
- [full-script-writer](../scripting/full-script-writer.md)
- [community-post-generator](community-post-generator.md)

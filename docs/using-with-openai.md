# Using the skills with OpenAI (ChatGPT, GPTs, API)

Every skill in this library is a plain-markdown prompt. Nothing in it is Claude-specific — the instructions say "the assistant," not any one model — so the skills work the same in ChatGPT, a Custom GPT, or the OpenAI API. Here are the three ways to use them.

## 1. ChatGPT (no setup)

1. Open the skill you want in [`skills/`](../skills/) and open its `SKILL.md`.
2. Copy everything from the `#` title down to "Known Limitations" (skip the grey frontmatter block at the very top).
3. Paste it into [ChatGPT](https://chat.openai.com) and add your own material below it.

That's it — the same copy-paste flow as Claude, just a different chat window.

## 2. A Custom GPT (reusable, no code)

Don't paste all 394 skills into one giant prompt — that's the exact thing this library is built *against*, and it makes output worse. Instead, attach the skills as **Knowledge** and let the GPT pull up the right one per request:

1. ChatGPT → **Explore GPTs → Create → Configure**.
2. Under **Knowledge**, upload the skill files for the area you work in. Easiest way to get tidy per-category files:

   ```bash
   python3 scripts/build-openai-bundle.py
   # writes dist/openai/<category>.md  — one file per category (journalism, youtube, podcast…)
   ```

   Upload the categories you care about (e.g. `journalism.md`, `youtube.md`). You can also just drag in individual `SKILL.md` files.
3. Paste this into **Instructions**:

   ```
   You are a media-production assistant. The Knowledge files contain individual
   SKILLS, each a procedure for one task. When I describe a task, find the single
   most relevant skill and follow it exactly — its "What You Need To Provide,"
   "How the Assistant Approaches This," "Output Format," and "Quality Criteria."
   If a required input is missing, ask for it instead of inventing facts.
   ```
4. Name it (e.g. "autopunk media skills"), save. Now you describe a task in plain words and it applies the right skill.

## 3. The OpenAI API (Assistants / Chat Completions)

Use a skill body as the `system` message:

```python
from openai import OpenAI
client = OpenAI()

skill = open("skills/youtube/pre-production/hook-generator/SKILL.md").read()
# strip the YAML frontmatter (everything between the first two '---' lines)
skill_body = skill.split("---", 2)[-1]

resp = client.chat.completions.create(
    model="gpt-4o",
    messages=[
        {"role": "system", "content": skill_body},
        {"role": "user", "content": "Topic: why immersion fails for adult language learners. Format: YouTube long-form."},
    ],
)
print(resp.choices[0].message.content)
```

Swap the file path for any skill. The frontmatter (`name`, `tags`, …) is metadata for humans and tooling — you only need the markdown body as the system prompt.

## Notes
- **Model choice:** any current OpenAI chat model works. For the writing-heavy skills, a stronger model (e.g. `gpt-4o` / the latest flagship) gives noticeably better register and fewer AI tells.
- **The quality bar still applies:** the skills were evaluated for "reads like a human in the medium." That's a property of the *instructions*, not the model — it carries over to OpenAI.
- **One-command plugin install** (`/plugin marketplace add …`) is Claude-Code-specific. On OpenAI, use the copy-paste, Custom GPT, or API routes above.

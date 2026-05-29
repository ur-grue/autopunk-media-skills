# Using the skills with OpenAI (ChatGPT, GPTs, API)

Every skill in this library is a plain-markdown prompt. Nothing in it is Claude-specific — the instructions say "the assistant," not any one model — so the skills work the same in ChatGPT, a Custom GPT, or the OpenAI API. Here are the three ways to use them.

## 1. ChatGPT (no setup)

1. Open the skill you want in [`skills/`](../skills/) and open its `SKILL.md`.
2. Copy everything from the `#` title down to "Known Limitations" (skip the grey frontmatter block at the very top).
3. Paste it into [ChatGPT](https://chat.openai.com) and add your own material below it.

That's it — the same copy-paste flow as Claude, just a different chat window.

## 2. A Custom GPT (reusable, no code)

Turn a skill — or the whole library — into a GPT you can reuse:

1. ChatGPT → **Explore GPTs → Create → Configure**.
2. For a single skill: paste its `SKILL.md` body into **Instructions**.
3. For the whole library: run the bundler below to get one file, and either paste it into **Instructions** or upload it under **Knowledge**:

   ```bash
   python3 scripts/build-openai-bundle.py
   # writes dist/openai/autopunk-system-prompt.md  (all skills, one file)
   # and    dist/openai/<category>.md              (one bundle per category)
   ```
4. Name it (e.g. "autopunk media skills"), save, and it auto-selects the right skill from your request.

If the full bundle is larger than a GPT's instruction limit, use a per-category bundle (e.g. `dist/openai/journalism.md`) or attach the bundle as a Knowledge file instead.

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

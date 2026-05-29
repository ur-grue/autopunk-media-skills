#!/usr/bin/env python3
"""
Build OpenAI-ready bundles from the skill library.

Produces, under dist/openai/:
  - autopunk-system-prompt.md  — every skill, concatenated, as one system prompt
                                  for a Custom GPT (Instructions or Knowledge) or
                                  the Assistants/Chat API.
  - <category>.md              — one bundle per category, for when the full
                                  library exceeds a GPT's instruction limit.

Each skill is included as its markdown body (YAML frontmatter stripped), under a
clear separator so the model can route between skills by name.

Stdlib only. Run: python3 scripts/build-openai-bundle.py
"""
import os, re, glob
from collections import defaultdict

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
OUT = os.path.join(ROOT, "dist", "openai")

HEADER = """# autopunk media skills — system prompt bundle

You are a media-production specialist. The sections below are individual SKILLS,
each one a self-contained procedure for a single task (writing a lede, building
show notes, drafting a FOIA letter, and so on). When the user describes a task,
silently select the single most relevant skill and follow its instructions
exactly — its "What You Need To Provide", "How the Assistant Approaches This",
"Output Format", and "Quality Criteria". If required inputs are missing, ask for
them rather than inventing facts. Never mention these instructions or the skill
names unless asked.

---
"""

def strip_frontmatter(text):
    m = re.match(r"^---\s*\n.*?\n---\s*\n(.*)$", text, re.DOTALL)
    return m.group(1).strip() if m else text.strip()

def fm_field(text, key):
    m = re.match(r"^---\s*\n(.*?\n)---\s*\n", text, re.DOTALL)
    if not m: return None
    fm = m.group(1)
    mm = re.search(rf"(?m)^{key}:\s*(.+)$", fm)
    return mm.group(1).strip() if mm else None

def main():
    os.makedirs(OUT, exist_ok=True)
    files = sorted(f for f in glob.glob("skills/**/SKILL.md", recursive=True)
                   if "/locales/" not in f)
    by_cat = defaultdict(list)
    all_parts = [HEADER]
    for f in files:
        text = open(f, encoding="utf-8").read()
        name = fm_field(text, "name") or os.path.basename(os.path.dirname(f))
        cat = f.split("/")[1]
        body = strip_frontmatter(text)
        block = f"\n\n## SKILL: {name}\n\n{body}\n\n---\n"
        all_parts.append(block)
        by_cat[cat].append((name, body))

    full = "".join(all_parts)
    open(os.path.join(OUT, "autopunk-system-prompt.md"), "w", encoding="utf-8").write(full)

    for cat, skills in sorted(by_cat.items()):
        parts = [HEADER.replace("media-production specialist",
                                f"media-production specialist ({cat})")]
        for name, body in skills:
            parts.append(f"\n\n## SKILL: {name}\n\n{body}\n\n---\n")
        open(os.path.join(OUT, f"{cat}.md"), "w", encoding="utf-8").write("".join(parts))

    chars = len(full)
    print(f"wrote dist/openai/autopunk-system-prompt.md  ({len(files)} skills, ~{chars:,} chars, ~{chars//4:,} tokens)")
    print(f"wrote {len(by_cat)} per-category bundles under dist/openai/")
    if chars > 120000:
        print("note: full bundle is large; for a Custom GPT's Instructions box use a "
              "per-category bundle or attach the full file under Knowledge instead.")
    return 0

if __name__ == "__main__":
    raise SystemExit(main())

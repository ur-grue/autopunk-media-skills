#!/usr/bin/env python3
"""
Generate .claude-plugin/marketplace.json for autopunk-media-skills.

The library ships as a single Claude Code plugin whose skills live in
skills/<category>/<subcategory>/<name>/SKILL.md directories. This script
writes a marketplace manifest in the official Claude Code plugin-marketplace
schema (a `plugins` array), with the skill count baked into the description.

Usage:
    python3 scripts/generate-marketplace.py

No pip dependencies — standard library only.
"""

import json
import os
import sys


REPO_ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
SKILLS_DIR = os.path.join(REPO_ROOT, "skills")
OUTPUT_DIR = os.path.join(REPO_ROOT, ".claude-plugin")
OUTPUT_FILE = os.path.join(OUTPUT_DIR, "marketplace.json")


def count_skills(skills_dir):
    """Count SKILL.md files under skills/, excluding locales/."""
    count = 0
    for root, dirs, files in os.walk(skills_dir):
        rel = os.path.relpath(root, skills_dir)
        if rel.startswith("locales") or "/locales" in rel.replace("\\", "/"):
            continue
        if "SKILL.md" in files:
            count += 1
    return count


def main():
    n = count_skills(SKILLS_DIR)
    description = (
        f"{n} Claude skills for TV producers, journalists, podcasters, "
        "YouTubers and media professionals"
    )

    marketplace = {
        "name": "autopunk-media-skills",
        "owner": {"name": "Ur-grue"},
        "description": description,
        "plugins": [
            {
                "name": "autopunk-media-skills",
                "source": "./",
                "description": description,
                "version": "1.0.0",
                "author": {"name": "Ur-grue"},
            }
        ],
    }

    os.makedirs(OUTPUT_DIR, exist_ok=True)
    with open(OUTPUT_FILE, "w", encoding="utf-8") as f:
        json.dump(marketplace, f, indent=2, ensure_ascii=False)
        f.write("\n")

    print(f"Generated marketplace.json — single plugin, {n} skills")
    return 0


if __name__ == "__main__":
    sys.exit(main())

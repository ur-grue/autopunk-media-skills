#!/usr/bin/env python3
"""
Generate marketplace.json for autopunk-media-skills.

Recursively finds all skill .md files under skills/ (excluding skills/locales/),
parses YAML frontmatter and skill descriptions, and writes:
  - .claude-plugin/marketplace.json

Usage:
    python3 scripts/generate-marketplace.py

No pip dependencies required — uses only the Python standard library.
"""

import json
import os
import re
import sys


REPO_ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
SKILLS_DIR = os.path.join(REPO_ROOT, "skills")
OUTPUT_DIR = os.path.join(REPO_ROOT, ".claude-plugin")
OUTPUT_FILE = os.path.join(OUTPUT_DIR, "marketplace.json")


def parse_frontmatter(text):
    """Parse YAML frontmatter from a markdown file.

    Handles simple key-value pairs and inline lists like [a, b, c].
    Returns a dict of parsed fields.
    """
    match = re.match(r"^---\s*\n(.*?\n)---\s*\n", text, re.DOTALL)
    if not match:
        return {}

    frontmatter = {}
    for line in match.group(1).strip().splitlines():
        line = line.strip()
        if not line or ":" not in line:
            continue
        key, _, value = line.partition(":")
        key = key.strip()
        value = value.strip()

        # Handle inline YAML lists: [tag1, tag2, tag3]
        list_match = re.match(r"^\[(.*)\]$", value)
        if list_match:
            items = [item.strip().strip("'\"") for item in list_match.group(1).split(",")]
            frontmatter[key] = [i for i in items if i]
        else:
            # Strip quotes if present
            value = value.strip("'\"")
            frontmatter[key] = value

    return frontmatter


def extract_description(text):
    """Extract the first sentence from the '## What This Skill Does' section."""
    match = re.search(
        r"##\s+What This Skill Does\s*\n+(.+?)(?:\n\n|\n##|\Z)",
        text,
        re.DOTALL,
    )
    if not match:
        return None

    paragraph = match.group(1).strip()
    # Get the first sentence — split on period followed by space or end of string
    sentence_match = re.match(r"(.+?\.)\s", paragraph + " ")
    if sentence_match:
        return sentence_match.group(1).strip()
    # If no period found, return the whole first paragraph
    first_line = paragraph.split("\n")[0].strip()
    return first_line if first_line else None


def find_skill_files(skills_dir):
    """Recursively find all .md files under skills/, excluding locales/."""
    skill_files = []
    for root, dirs, files in os.walk(skills_dir):
        # Skip the locales directory
        rel = os.path.relpath(root, skills_dir)
        if rel.startswith("locales") or "/locales" in rel:
            continue

        for fname in sorted(files):
            if fname.endswith(".md"):
                full_path = os.path.join(root, fname)
                skill_files.append(full_path)

    return sorted(skill_files)


def build_skill_entry(file_path, repo_root):
    """Build a skill entry dict from a .md file."""
    rel_path = os.path.relpath(file_path, repo_root)

    try:
        with open(file_path, "r", encoding="utf-8") as f:
            text = f.read()
    except (IOError, UnicodeDecodeError) as e:
        print(f"  WARNING: Could not read {rel_path}: {e}", file=sys.stderr)
        return None

    frontmatter = parse_frontmatter(text)
    if not frontmatter:
        print(f"  WARNING: No frontmatter found in {rel_path}", file=sys.stderr)

    # Derive name from frontmatter or filename
    name = frontmatter.get("name", "")
    if not name:
        name = os.path.splitext(os.path.basename(file_path))[0]

    # Extract description from content
    description = extract_description(text)
    if not description:
        # Fallback: humanize the skill name
        description = name.replace("-", " ").capitalize()

    # Get category/subcategory from frontmatter or directory structure
    path_parts = rel_path.replace("\\", "/").split("/")
    # path_parts: ['skills', 'category', ..., 'file.md']
    category = frontmatter.get("category", "")
    if not category and len(path_parts) >= 3:
        category = path_parts[1]

    subcategory = frontmatter.get("subcategory", "")
    if not subcategory and len(path_parts) >= 4:
        subcategory = path_parts[2]

    status = frontmatter.get("status", "planned")
    tags = frontmatter.get("tags", [])
    if isinstance(tags, str):
        tags = [t.strip() for t in tags.split(",")]

    return {
        "name": name,
        "path": rel_path,
        "description": description,
        "category": category,
        "subcategory": subcategory,
        "status": status,
        "tags": tags,
    }


def main():
    print(f"Scanning skills in: {SKILLS_DIR}")
    print(f"Output: {OUTPUT_FILE}")
    print()

    skill_files = find_skill_files(SKILLS_DIR)
    print(f"Found {len(skill_files)} skill files")

    skills = []
    warnings = 0
    for fp in skill_files:
        entry = build_skill_entry(fp, REPO_ROOT)
        if entry:
            skills.append(entry)
        else:
            warnings += 1

    # Sort skills by category, subcategory, name
    skills.sort(key=lambda s: (s["category"], s["subcategory"], s["name"]))

    marketplace = {
        "name": "autopunk-media-skills",
        "display_name": "Autopunk Media Skills",
        "description": f"{len(skills)} Claude skills for TV producers, journalists, podcasters, YouTubers and media professionals",
        "version": "1.0.0",
        "author": "ur-grue",
        "homepage": "https://github.com/ur-grue/autopunk-media-skills",
        "skills": skills,
    }

    os.makedirs(OUTPUT_DIR, exist_ok=True)
    with open(OUTPUT_FILE, "w", encoding="utf-8") as f:
        json.dump(marketplace, f, indent=2, ensure_ascii=False)
        f.write("\n")

    print(f"\nGenerated marketplace.json with {len(skills)} skills")

    # Count validation
    status_counts = {}
    category_counts = {}
    for s in skills:
        status_counts[s["status"]] = status_counts.get(s["status"], 0) + 1
        category_counts[s["category"]] = category_counts.get(s["category"], 0) + 1

    print("\n--- Status breakdown ---")
    for status in sorted(status_counts.keys()):
        print(f"  {status}: {status_counts[status]}")

    print("\n--- Category breakdown ---")
    for cat in sorted(category_counts.keys()):
        print(f"  {cat}: {category_counts[cat]}")

    print(f"\n--- Total: {len(skills)} skills ---")

    if warnings:
        print(f"\n  {warnings} file(s) skipped due to errors")

    return 0


if __name__ == "__main__":
    sys.exit(main())

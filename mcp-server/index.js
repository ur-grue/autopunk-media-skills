#!/usr/bin/env node

import { McpServer } from "@modelcontextprotocol/sdk/server/mcp.js";
import { StdioServerTransport } from "@modelcontextprotocol/sdk/server/stdio.js";
import { z } from "zod";
import { readdir, readFile, stat } from "node:fs/promises";
import { join, dirname, resolve } from "node:path";
import { fileURLToPath } from "node:url";
import { parse as parseYaml } from "yaml";

// ---------------------------------------------------------------------------
// Paths
// ---------------------------------------------------------------------------

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);
const REPO_ROOT = resolve(__dirname, "..");
const SKILLS_DIR = join(REPO_ROOT, "skills");
const AGENTS_DIR = join(REPO_ROOT, "agents");

// ---------------------------------------------------------------------------
// YAML frontmatter parser
// ---------------------------------------------------------------------------

function parseFrontmatter(content) {
  const match = content.match(/^---\r?\n([\s\S]*?)\r?\n---/);
  if (!match) {
    return { meta: {}, body: content };
  }
  try {
    const meta = parseYaml(match[1]) || {};
    const body = content.slice(match[0].length).trimStart();
    return { meta, body };
  } catch {
    return { meta: {}, body: content };
  }
}

// ---------------------------------------------------------------------------
// Directory walker
// ---------------------------------------------------------------------------

async function walkDir(dir) {
  const results = [];
  let entries;
  try {
    entries = await readdir(dir, { withFileTypes: true });
  } catch {
    return results;
  }
  for (const entry of entries) {
    const fullPath = join(dir, entry.name);
    if (entry.isDirectory()) {
      results.push(...(await walkDir(fullPath)));
    } else if (entry.isFile()) {
      results.push(fullPath);
    }
  }
  return results;
}

// ---------------------------------------------------------------------------
// Index builders
// ---------------------------------------------------------------------------

async function buildSkillIndex() {
  const skills = [];
  const files = await walkDir(SKILLS_DIR);

  for (const filePath of files) {
    if (!filePath.endsWith(".md")) continue;
    if (filePath.includes("SKILL_TEMPLATE")) continue;

    // Accept two patterns:
    // 1. skills/<category>/.../<skill-name>/SKILL.md  (main skills)
    // 2. skills/locales/<lang>/<category>/.../name.md  (localized skills)
    const isMainSkill = filePath.endsWith("/SKILL.md");
    const isLocaleSkill = filePath.includes("/locales/");
    if (!isMainSkill && !isLocaleSkill) continue;

    try {
      const content = await readFile(filePath, "utf-8");
      const { meta, body } = parseFrontmatter(content);

      skills.push({
        name: meta.name || "",
        description: meta.description || "",
        category: meta.category || "",
        subcategory: meta.subcategory || "",
        status: meta.status || "",
        version: meta.version || "",
        eval_score: meta.eval_score ?? null,
        tags: Array.isArray(meta.tags) ? meta.tags : [],
        filePath,
        body: content,
      });
    } catch {
      // Skip files that cannot be read
    }
  }

  return skills;
}

async function buildAgentIndex() {
  const agents = [];
  let entries;
  try {
    entries = await readdir(AGENTS_DIR, { withFileTypes: true });
  } catch {
    return agents;
  }

  for (const entry of entries) {
    if (!entry.isFile()) continue;
    if (!entry.name.endsWith("-agent.md")) continue;
    if (entry.name === "AGENT_TEMPLATE.md") continue;

    const filePath = join(AGENTS_DIR, entry.name);
    try {
      const content = await readFile(filePath, "utf-8");
      const { meta } = parseFrontmatter(content);

      agents.push({
        name: meta.name || entry.name.replace(/\.md$/, ""),
        description: meta.description || "",
        status: meta.status || "",
        version: meta.version || "",
        eval_score: meta.eval_score ?? null,
        skills: Array.isArray(meta.skills) ? meta.skills : [],
        tags: Array.isArray(meta.tags) ? meta.tags : [],
        roles: Array.isArray(meta.roles) ? meta.roles : [],
        filePath,
        body: content,
      });
    } catch {
      // Skip files that cannot be read
    }
  }

  return agents;
}

// ---------------------------------------------------------------------------
// Search helper
// ---------------------------------------------------------------------------

function searchSkills(skills, query) {
  const terms = query.toLowerCase().split(/\s+/).filter(Boolean);
  if (terms.length === 0) return [];

  const scored = [];

  for (const skill of skills) {
    const fields = [
      { text: skill.name, weight: 4 },
      { text: skill.description, weight: 3 },
      { text: skill.category, weight: 2 },
      { text: skill.subcategory, weight: 2 },
      { text: skill.tags.join(" "), weight: 2 },
      { text: skill.body, weight: 1 },
    ];

    let score = 0;

    for (const term of terms) {
      for (const field of fields) {
        const lower = field.text.toLowerCase();
        if (lower.includes(term)) {
          score += field.weight;
        }
      }
    }

    if (score > 0) {
      scored.push({ skill, score });
    }
  }

  scored.sort((a, b) => b.score - a.score);
  return scored;
}

// ---------------------------------------------------------------------------
// Build categories summary
// ---------------------------------------------------------------------------

function buildCategories(skills) {
  const map = new Map();

  for (const skill of skills) {
    const cat = skill.category || "(uncategorized)";
    if (!map.has(cat)) {
      map.set(cat, { category: cat, subcategories: new Set(), skillCount: 0 });
    }
    const entry = map.get(cat);
    entry.skillCount += 1;
    if (skill.subcategory) {
      entry.subcategories.add(skill.subcategory);
    }
  }

  return Array.from(map.values())
    .map((e) => ({
      category: e.category,
      subcategories: Array.from(e.subcategories).sort(),
      skill_count: e.skillCount,
    }))
    .sort((a, b) => a.category.localeCompare(b.category));
}

// ---------------------------------------------------------------------------
// Main
// ---------------------------------------------------------------------------

async function main() {
  // Build indexes at startup
  const skills = await buildSkillIndex();
  const agents = await buildAgentIndex();

  process.stderr.write(
    `[autopunk-mcp] Loaded ${skills.length} skills and ${agents.length} agents from ${REPO_ROOT}\n`
  );

  // Create MCP server
  const server = new McpServer({
    name: "autopunk-media-skills",
    version: "1.0.0",
  });

  // -- list_skills --------------------------------------------------------

  server.tool(
    "list_skills",
    "List all skills, optionally filtered by category or subcategory",
    {
      category: z
        .string()
        .optional()
        .describe("Filter by category (e.g. 'editing', 'research')"),
      subcategory: z
        .string()
        .optional()
        .describe(
          "Filter by subcategory (e.g. 'pre-production', 'investigation')"
        ),
    },
    async ({ category, subcategory }) => {
      let filtered = skills;

      if (category) {
        const lower = category.toLowerCase();
        filtered = filtered.filter(
          (s) => s.category.toLowerCase() === lower
        );
      }

      if (subcategory) {
        const lower = subcategory.toLowerCase();
        filtered = filtered.filter(
          (s) => s.subcategory.toLowerCase() === lower
        );
      }

      const results = filtered.map((s) => ({
        name: s.name,
        category: s.category,
        subcategory: s.subcategory,
        status: s.status,
        eval_score: s.eval_score,
        description: s.description,
      }));

      return {
        content: [
          {
            type: "text",
            text: JSON.stringify(results, null, 2),
          },
        ],
      };
    }
  );

  // -- get_skill ----------------------------------------------------------

  server.tool(
    "get_skill",
    "Get the full content of a specific skill by name",
    {
      name: z
        .string()
        .describe("The skill name in kebab-case (e.g. 'copy-editor')"),
    },
    async ({ name }) => {
      const lower = name.toLowerCase();
      const skill = skills.find((s) => s.name.toLowerCase() === lower);

      if (!skill) {
        return {
          content: [
            {
              type: "text",
              text: `Skill "${name}" not found. Use list_skills to see available skills.`,
            },
          ],
          isError: true,
        };
      }

      return {
        content: [
          {
            type: "text",
            text: skill.body,
          },
        ],
      };
    }
  );

  // -- search_skills ------------------------------------------------------

  server.tool(
    "search_skills",
    "Search skills by keyword across name, description, tags, and content",
    {
      query: z.string().describe("Search query (e.g. 'interview preparation')"),
    },
    async ({ query }) => {
      const results = searchSkills(skills, query);

      if (results.length === 0) {
        return {
          content: [
            {
              type: "text",
              text: `No skills found matching "${query}".`,
            },
          ],
        };
      }

      const top = results.slice(0, 25).map((r) => ({
        name: r.skill.name,
        category: r.skill.category,
        subcategory: r.skill.subcategory,
        status: r.skill.status,
        eval_score: r.skill.eval_score,
        description: r.skill.description,
        relevance: r.score,
      }));

      return {
        content: [
          {
            type: "text",
            text: JSON.stringify(top, null, 2),
          },
        ],
      };
    }
  );

  // -- list_agents --------------------------------------------------------

  server.tool(
    "list_agents",
    "List all agents with their status and skill composition",
    {},
    async () => {
      const results = agents.map((a) => ({
        name: a.name,
        status: a.status,
        eval_score: a.eval_score,
        skills: a.skills,
        description: a.description,
      }));

      return {
        content: [
          {
            type: "text",
            text: JSON.stringify(results, null, 2),
          },
        ],
      };
    }
  );

  // -- get_agent ----------------------------------------------------------

  server.tool(
    "get_agent",
    "Get the full content of a specific agent",
    {
      name: z
        .string()
        .describe(
          "The agent name (e.g. 'podcast-producer-agent')"
        ),
    },
    async ({ name }) => {
      const lower = name.toLowerCase();
      const agent = agents.find((a) => a.name.toLowerCase() === lower);

      if (!agent) {
        return {
          content: [
            {
              type: "text",
              text: `Agent "${name}" not found. Use list_agents to see available agents.`,
            },
          ],
          isError: true,
        };
      }

      return {
        content: [
          {
            type: "text",
            text: agent.body,
          },
        ],
      };
    }
  );

  // -- list_categories ----------------------------------------------------

  server.tool(
    "list_categories",
    "List all skill categories with subcategory breakdown and skill counts",
    {},
    async () => {
      const categories = buildCategories(skills);

      return {
        content: [
          {
            type: "text",
            text: JSON.stringify(categories, null, 2),
          },
        ],
      };
    }
  );

  // -- Start server -------------------------------------------------------

  const transport = new StdioServerTransport();
  await server.connect(transport);
}

main().catch((err) => {
  process.stderr.write(`[autopunk-mcp] Fatal error: ${err.message}\n`);
  process.exit(1);
});

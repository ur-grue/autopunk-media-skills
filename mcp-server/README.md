# autopunk-media-skills MCP Server

Exposes the autopunk-media-skills library (400+ journalism AI skills and agents) as MCP tools. Any MCP-compatible client can browse, search, and retrieve skills programmatically.

## Tools

| Tool | Description |
|---|---|
| `list_skills` | List all skills, optionally filtered by category or subcategory |
| `get_skill` | Get the full content of a specific skill by name |
| `search_skills` | Search skills by keyword across name, description, tags, and content |
| `list_agents` | List all agents with their status and skill composition |
| `get_agent` | Get the full content of a specific agent |
| `list_categories` | List all skill categories with subcategory breakdown and counts |

## Installation

```bash
cd mcp-server
npm install
```

## Client Configuration

Replace `/path/to/autopunk-media-skills/mcp-server/index.js` with the actual absolute path on your machine.

### Claude Code

```bash
claude mcp add autopunk-media-skills -- node /path/to/autopunk-media-skills/mcp-server/index.js
```

### Cursor

Add to your Cursor settings (`~/.cursor/mcp.json` or workspace `.cursor/mcp.json`):

```json
{
  "mcpServers": {
    "autopunk-media-skills": {
      "command": "node",
      "args": ["/path/to/autopunk-media-skills/mcp-server/index.js"]
    }
  }
}
```

### VS Code (Copilot)

Add to your VS Code settings (`.vscode/settings.json` or user settings):

```json
{
  "mcp": {
    "servers": {
      "autopunk-media-skills": {
        "command": "node",
        "args": ["/path/to/autopunk-media-skills/mcp-server/index.js"]
      }
    }
  }
}
```

### Windsurf

Add to your Windsurf MCP config (`~/.windsurf/mcp.json`):

```json
{
  "mcpServers": {
    "autopunk-media-skills": {
      "command": "node",
      "args": ["/path/to/autopunk-media-skills/mcp-server/index.js"]
    }
  }
}
```

### Zed

Add to your Zed settings (`~/.config/zed/settings.json`):

```json
{
  "context_servers": {
    "autopunk-media-skills": {
      "command": {
        "path": "node",
        "args": ["/path/to/autopunk-media-skills/mcp-server/index.js"]
      }
    }
  }
}
```

## Verifying the server

Run the server directly to check it loads the skill index:

```bash
node mcp-server/index.js
```

On startup it prints to stderr:

```
[autopunk-mcp] Loaded 424 skills and 8 agents from /path/to/autopunk-media-skills
```

The server then waits for MCP messages on stdin. Press Ctrl+C to stop.

module AutopunkSkills
  class AgentPage < Jekyll::Page
    def initialize(site, base, dir, agent_data)
      @site = site
      @base = base
      @dir = dir
      @name = "index.html"

      process(@name)
      read_yaml(File.join(base, "_layouts"), "agent.html")

      self.data.merge!(agent_data)
      self.data["title"] = agent_data["agent_title"]
    end
  end

  class AgentGenerator < Jekyll::Generator
    safe true
    priority :high

    def generate(site)
      repo_root = File.expand_path("..", site.source)
      agents_dir = File.join(repo_root, "agents")

      return unless File.directory?(agents_dir)

      all_agents = []

      Dir.glob(File.join(agents_dir, "*.md")).each do |agent_file|
        basename = File.basename(agent_file, ".md")
        next if basename == "AGENT_TEMPLATE"

        content = File.read(agent_file, encoding: "utf-8")
        next unless content =~ /\A---\s*\n(.*?)\n---\s*\n(.*)/m

        frontmatter = YAML.safe_load(Regexp.last_match(1), permitted_classes: [Date]) || {}
        body = Regexp.last_match(2)

        agent_data = {
          "name" => frontmatter["name"] || basename,
          "agent_title" => body[/^#\s+(.+)/, 1] || basename.split("-").map(&:capitalize).join(" "),
          "status" => frontmatter["status"] || "planned",
          "eval_score" => frontmatter["eval_score"],
          "skills" => frontmatter["skills"] || [],
          "roles" => frontmatter["roles"] || [],
          "tags" => frontmatter["tags"] || [],
          "content" => body,
          "source_path" => "agents/#{File.basename(agent_file)}",
          "slug" => basename,
          "layout" => "agent",
        }

        site.pages << AgentPage.new(site, site.source, "agents/#{basename}", agent_data)
        all_agents << agent_data
      end

      site.data["agents"] = all_agents.sort_by { |a| a["name"] }
    end
  end
end

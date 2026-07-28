module AutopunkSkills
  class SearchIndexGenerator < Jekyll::Generator
    safe true
    priority :low

    def generate(site)
      skills = site.data["skills"] || []
      agents = site.data["agents"] || []

      role_map = build_role_map(site)

      index = []

      skills.each do |skill|
        index << {
          "title" => skill["skill_title"],
          "name" => skill["name"],
          "description" => (skill["description"] || "")[0, 200],
          "category" => skill["category"],
          "subcategory" => skill["subcategory"],
          "tags" => (skill["tags"] || []).join(" "),
          "url" => "/skills/#{skill['category']}/#{skill['name']}/",
          "type" => "skill",
          "status" => skill["status"],
          "score" => skill["eval_score"],
          "roles" => role_map[skill["category"]] || [],
          "when_to_use" => extract_when_to_use(skill["content"] || ""),
        }
      end

      agents.each do |agent|
        index << {
          "title" => agent["agent_title"],
          "name" => agent["name"],
          "description" => "",
          "category" => "agents",
          "subcategory" => "",
          "tags" => (agent["tags"] || []).join(" "),
          "url" => "/agents/#{agent['name']}/",
          "type" => "agent",
          "status" => agent["status"],
          "score" => agent["eval_score"],
          "roles" => (agent["roles"] || []),
          "when_to_use" => "",
        }
      end

      index_page = Jekyll::PageWithoutAFile.new(site, site.source, "", "search-index.json")
      index_page.content = JSON.pretty_generate(index)
      index_page.data["layout"] = nil
      site.pages << index_page
    end

    private

    def build_role_map(site)
      roles = site.data["roles"]
      return {} unless roles.is_a?(Array)

      roles.each_with_object({}) do |role, map|
        (role["categories"] || []).each do |cat|
          (map[cat] ||= []) << role["slug"]
        end
      end
    end

    def extract_when_to_use(body)
      match = body.match(/## When To Use This Skill\s*\n(.+?)(?:\n##|\z)/m)
      return "" unless match

      text = match[1].strip.gsub(/^- /, "").gsub(/\n- /, " · ")
      text[0, 140]
    end
  end
end

module AutopunkSkills
  class SearchIndexGenerator < Jekyll::Generator
    safe true
    priority :low

    def generate(site)
      skills = site.data["skills"] || []
      agents = site.data["agents"] || []

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
        }
      end

      index_page = Jekyll::PageWithoutAFile.new(site, site.source, "", "search-index.json")
      index_page.content = JSON.pretty_generate(index)
      index_page.data["layout"] = nil
      site.pages << index_page
    end
  end
end

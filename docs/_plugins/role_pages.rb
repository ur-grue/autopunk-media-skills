module AutopunkSkills
  class RolePage < Jekyll::Page
    def initialize(site, base, dir, role_data)
      @site = site
      @base = base
      @dir = dir
      @name = "index.html"

      process(@name)
      read_yaml(File.join(base, "_layouts"), "role.html")

      self.data.merge!(role_data)
      self.data["title"] = role_data["title"]
    end
  end

  class RoleGenerator < Jekyll::Generator
    safe true
    priority :low

    def generate(site)
      roles_data = site.data["roles"]
      return unless roles_data.is_a?(Array)

      categories = site.data["categories"] || []
      cat_lookup = {}
      categories.each { |c| cat_lookup[c["slug"]] = c }

      all_skills = site.data["skills"] || []
      skills_by_cat = all_skills.group_by { |s| s["category"] }

      all_agents = site.data["agents"] || []
      agents_by_role = {}
      all_agents.each do |agent|
        (agent["roles"] || []).each do |role_slug|
          agents_by_role[role_slug] ||= []
          agents_by_role[role_slug] << agent
        end
      end

      roles_data.each do |role|
        role_categories = []
        role_skill_count = 0

        (role["categories"] || []).each do |cat_slug|
          cat_skills = skills_by_cat[cat_slug] || []
          next if cat_skills.empty?

          cat_info = cat_lookup[cat_slug]
          cat_name = cat_info ? cat_info["name"] : cat_slug.split("-").map(&:capitalize).join(" ")

          role_categories << {
            "slug" => cat_slug,
            "name" => cat_name,
            "skills" => cat_skills.sort_by { |s| s["name"] },
          }
          role_skill_count += cat_skills.size
        end

        role["skill_count"] = role_skill_count
        role["role_categories"] = role_categories
        role["agents"] = (agents_by_role[role["slug"]] || []).sort_by { |a| -(a["eval_score"] || 0) }

        site.pages << RolePage.new(
          site, site.source, "roles/#{role['slug']}",
          role.merge("layout" => "role")
        )
      end
    end
  end
end

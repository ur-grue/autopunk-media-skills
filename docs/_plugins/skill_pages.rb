module AutopunkSkills
  class SkillPage < Jekyll::Page
    def initialize(site, base, dir, skill_data)
      @site = site
      @base = base
      @dir = dir
      @name = "index.html"

      process(@name)
      read_yaml(File.join(base, "_layouts"), "skill.html")

      self.data.merge!(skill_data)
      self.data["title"] = skill_data["skill_title"]
    end
  end

  class CategoryPage < Jekyll::Page
    def initialize(site, base, dir, category, skills)
      @site = site
      @base = base
      @dir = dir
      @name = "index.html"

      process(@name)
      read_yaml(File.join(base, "_layouts"), "category.html")

      self.data["title"] = category_display_name(category)
      self.data["category_slug"] = category
      self.data["category_name"] = category_display_name(category)
      self.data["skills"] = skills.sort_by { |s| s["name"] }
    end

    private

    def category_display_name(slug)
      slug.split("-").map(&:capitalize).join(" ")
    end
  end

  class SkillGenerator < Jekyll::Generator
    safe true
    priority :high

    CATEGORY_DESCRIPTIONS = {
      "tv-documentary" => "Skills for documentary development, scripting, and production",
      "magazine-journalism" => "Skills for magazine and long-form journalism",
      "youtube" => "Skills for YouTube creators and channel operators",
      "podcast" => "Skills for podcast production and growth",
      "image-prompting" => "Skills for AI image generation and art direction",
      "media-business" => "Skills for pitching, funding, and distribution",
      "social-media" => "Skills for social content and platform strategy",
      "radio-audio" => "Skills for radio scripting and audio production",
      "newsletter" => "Skills for newsletter writing and growth",
      "pr-communications" => "Skills for press, crisis comms, and media relations",
      "screenwriting" => "Skills for screenplay development and revision",
      "data-journalism" => "Skills for data analysis, visualization, and investigation",
      "research" => "Skills for background research, fact-checking, and sourcing",
      "translation" => "Skills for translation and localization",
      "production-support" => "Skills for formatting, metadata, and production tasks",
      "editing" => "Skills for copy editing, style enforcement, and quality control",
      "writing" => "Skills for article writing and long-form content",
      "pre-production" => "Skills for shoot planning, scheduling, and logistics",
      "audience-distribution" => "Skills for audience growth and content distribution",
      "archive-legal" => "Skills for archiving, rights, and legal documentation",
      "translation-localization" => "Skills for adapting content across regions and languages",
    }.freeze

    def generate(site)
      repo_root = File.expand_path("..", site.source)
      skills_dir = File.join(repo_root, "skills")

      return unless File.directory?(skills_dir)

      all_skills = []
      categories = Hash.new { |h, k| h[k] = [] }

      Dir.glob(File.join(skills_dir, "**", "SKILL.md")).each do |skill_file|
        next if skill_file.include?("/locales/")

        content = File.read(skill_file, encoding: "utf-8")
        next unless content =~ /\A---\s*\n(.*?)\n---\s*\n(.*)/m

        frontmatter = YAML.safe_load(Regexp.last_match(1), permitted_classes: [Date]) || {}
        body = Regexp.last_match(2)

        rel_path = skill_file.sub("#{skills_dir}/", "")
        parts = rel_path.split("/")
        category = parts[0]
        subcategory = parts.length > 2 ? parts[1] : nil
        skill_slug = frontmatter["name"] || parts[-2]

        skill_data = {
          "name" => skill_slug,
          "skill_title" => body[/^#\s+(.+)/, 1] || skill_slug.split("-").map(&:capitalize).join(" "),
          "description" => frontmatter["description"] || extract_description(body),
          "status" => frontmatter["status"] || "planned",
          "category" => category,
          "subcategory" => subcategory,
          "version" => frontmatter["version"],
          "eval_score" => frontmatter["eval_score"],
          "tags" => frontmatter["tags"] || [],
          "content" => body,
          "source_path" => "skills/#{rel_path}",
          "layout" => "skill",
        }

        page_dir = "skills/#{category}/#{skill_slug}"
        site.pages << SkillPage.new(site, site.source, page_dir, skill_data)

        all_skills << skill_data
        categories[category] << skill_data
      end

      categories.each do |category, skills|
        site.pages << CategoryPage.new(site, site.source, "skills/#{category}", category, skills)
      end

      site.data["skills"] = all_skills.sort_by { |s| s["name"] }
      site.data["categories"] = categories.keys.sort.map do |cat|
        {
          "slug" => cat,
          "name" => cat.split("-").map(&:capitalize).join(" "),
          "description" => CATEGORY_DESCRIPTIONS[cat] || "",
          "count" => categories[cat].size,
          "subcategories" => categories[cat].map { |s| s["subcategory"] }.compact.uniq.sort,
        }
      end
      site.data["skill_count"] = all_skills.size
      site.data["stable_count"] = all_skills.count { |s| s["status"] == "stable" }
    end

    private

    def extract_description(body)
      match = body.match(/## What This Skill Does\s*\n(.+?)(?:\n\n|\n##)/m)
      match ? match[1].strip : ""
    end
  end
end

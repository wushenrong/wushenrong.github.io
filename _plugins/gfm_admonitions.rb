# SPDX-FileCopyrightText: 2024 Robin De Schepper
#
# SPDX-License-Identifier: MIT

# frozen_string_literal: true

ADMONITION_ICONS = {
  "important" => "report",
  "note"      => "info",
  "tip"       => "light-bulb",
  "warning"   => "alert",
  "caution"   => "stop",
}.freeze

# GFMAdmonitions is a module that provides functionality to process and convert
# GitHub-flavored markdown admonitions into HTML within Jekyll.
module GFMAdmonitions
  # AdmonitionGenerator is a Jekyll generator that creates HTML alert boxes with
  # icons from custom admonition blocks in markdown (e.g., `> [!IMPORTANT]`).
  #
  # This generator processes both posts and pages, replacing admonition
  # syntax with HTML markup that includes appropriate iconography.
  class AdmonitionGenerator < Jekyll::Generator
    safe true
    priority :lowest

    def generate(site)
      @markdown = site.converters.find { |c| c.is_a?(Jekyll::Converters::Markdown) }

      unless @markdown
        raise  "Markdown converter not found. Please ensure that you have a markdown " \
               "converter configured in your Jekyll site."
      end

      site.posts.docs.each do |doc|
        process_doc(doc)
      end

      site.pages.each do |page|
        process_doc(page)
      end
    end

    private

    def process_doc(doc)
      code_blocks = []
      # Temporarily replace code blocks by a tag, so that we don't process any admonitions
      # inside of code blocks.
      doc.content = doc.content.gsub(%r!(?:^|\n)(?<\!>)\s*```.*?```!m) do |match|
        code_blocks << match
        "```{{CODE_BLOCK_#{code_blocks.length - 1}}}```"
      end

      convert_admonitions(doc)

      # Put the code blocks back in place
      doc.content = doc.content.gsub(%r!```\{\{CODE_BLOCK_(\d+)}}```!) do
        code_blocks[::Regexp.last_match(1).to_i]
      end
    end

    def convert_admonitions(doc)
      start_of_admonitions = %r!>\s*\[\!(IMPORTANT|NOTE|WARNING|TIP|CAUTION)\]\s*\n((?:>.*\n?)*)!
      doc.content = doc.content.gsub(start_of_admonitions) do
        type = ::Regexp.last_match(1).downcase
        title = type.capitalize
        text = ::Regexp.last_match(2).gsub(%r!^>\s*!, "").strip
        icon = Octicons::Octicon.new(ADMONITION_ICONS[type]).to_svg

        "<div class='markdown-alert markdown-alert-#{type}'>
          <p class='markdown-alert-title'>#{icon} #{title}</p>
          <p>#{@markdown.convert(text)}</p>
        </div>\n\n"
      end
    end
  end
end

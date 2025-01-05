# SPDX-FileCopyrightText: 2013, 2015, 2017 Benjamin D. Esham
#
# SPDX-License-Identifier: ISC

# frozen_string_literal: true

# reading_time
#
# A Liquid filter to estimate how long a passage of text will take to read
#
# https://github.com/bdesham/reading_time
#
# Copyright (c) 2013, 2015 Benjamin D. Esham. This program is released under the
# ISC license, which you can find in the file LICENSE.md.

require "nokogiri"

IGNORED_TAGS = %w( area audio canvas code embed footer form header img
                   map math nav object pre script svg table track video ).freeze

module ReadingTime
  def count_words(html)
    get_words(html).length
  end

  def reading_time(html)
    (count_words(html) / 180.0).ceil
  end

  private

  def get_words(html)
    fragment = Nokogiri::HTML.fragment html
    words = text_nodes(fragment).map { |text| text.scan(%r![\p{L}\p{M}'‘’]+!) }
    words.flatten
  end

  def text_nodes(root)
    texts = []
    root.children.each do |node|
      if node.text?
        texts << node.text
      elsif !IGNORED_TAGS.include? node.name
        texts.concat text_nodes node
      end
    end
    texts
  end
end

Liquid::Template.register_filter(ReadingTime)

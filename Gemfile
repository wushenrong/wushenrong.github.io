# SPDX-FileCopyrightText: 2025 Samuel Wu
#
# SPDX-License-Identifier: MIT-0
# frozen_string_literal: true

source "https://rubygems.org"

# Base gems
gem "base64", "~> 0.2.0"
gem "csv", "~> 3.3", ">= 3.3.2"

# Linter for local Jekyll plugins
gem "rubocop", "~> 1.57", :require => false, :groups => [:development]
gem "rubocop-jekyll", "~> 0.14", :groups => [:development]

# Jekyll and plugins
gem "jekyll", "~> 4.4.1"

gem "dotenv", "~> 3.1", ">= 3.1.7", :groups => [:development]
gem "faraday-retry", "~> 2.2", ">= 2.2.1"

gem "classifier-reborn", "~> 2.3"
gem "numo-linalg", "~> 0.1"
gem "numo-narray", "~> 0.9"

group :jekyll_plugins do
  gem "jektex", "~> 0.1"
  gem "jekyll-archives", "~> 2.3"
  gem "jekyll-email-protect", "~> 1.1"
  gem "jekyll-favicon", "~> 1.1"
  gem "jekyll-feed", "~> 0.17"
  gem "jekyll-github-metadata", "~> 2.16"
  gem "jekyll-include-cache", "~> 0.2"
  gem "jekyll-loading-lazy", "~> 0.1"
  gem "jekyll-mentions", "~> 1.6"
  gem "jekyll-octicons", "~> 19.8"
  gem "jekyll-paginate-v2", "~> 3.0"
  gem "jekyll-redirect-from", "~> 0.16"
  gem "jekyll-seo-tag", "~> 2.8"
  gem "jekyll-sitemap", "~> 1.4"
  gem "jemoji", "~> 0.13"
  gem "liquid_pluralize", "~> 1.0"
end

# Additional dependencies that Jekyll needs
platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo", ">= 1", "< 3"
  gem "tzinfo-data"
end

# Performance-booster for watching directories on Windows
gem "wdm", "~> 0.1", :platforms => [:mingw, :x64_mingw, :mswin]

# Lock `http_parser.rb` gem to `v0.6.x` on JRuby builds since newer versions of
# the gem do not have a Java counterpart.
gem "http_parser.rb", "~> 0.6.0", :platforms => [:jruby]

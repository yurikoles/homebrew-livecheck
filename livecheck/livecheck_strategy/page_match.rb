# frozen_string_literal: true

require "open-uri"

module LivecheckStrategy
  class PageMatch
    NICE_NAME = "Page match"
    PRIORITY = 0

    # PageMatch will technically match any HTTP URL but it's only usable when
    # there's a `livecheck` block containing a regex.
    def self.match?(url)
      %r{^https?://}i.match?(url)
    end

    def self.page_matches(url, regex)
      page = URI.open(url).read
      matches = page.scan(regex)
      matches.map(&:first).uniq
    end
    private_class_method :page_matches

    def self.find_versions(url, regex)
      match_data = { matches: {}, regex: regex, url: url }

      page_matches(url, regex).each do |match|
        match_data[:matches][match] = Version.new(match)
      end

      match_data
    end
  end
end

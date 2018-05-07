# frozen_string_literal: true

module Scrapers
  class ApartmentLinkScraper
    def initialize(scrapers:)
      @scrapers = scrapers
    end

    def find_links
      @scrapers.map(&:find_links).flatten
    end
  end
end

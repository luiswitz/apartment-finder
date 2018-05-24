# frozen_string_literal: true

module Services
  class ApartmentScraperService
    def initialize(scrapers:)
      @scrapers = scrapers
    end

    def find_links
      @scrapers.map(&:find_links).flatten
    end
  end
end

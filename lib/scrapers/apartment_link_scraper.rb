module Scrapers
  class ApartmentLinkScraper
    def initialize(scrapers:)
      @scrapers = scrapers
    end

    def get_links
      @scrapers.map do |scraper|
        scraper.get_links 
      end.flatten
    end
  end
end

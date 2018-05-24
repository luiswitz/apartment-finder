# frozen_string_literal: true

class ApartmentScraperServiceFactory < ServiceFactory
  key 'apartment_scraper_service'
  share true

  def create_service(_dependencies)
    scrapers = [
      Scrapers::CustoJustoApartmentLinkScraper.new,
      Scrapers::ImovirtualApartmentLinkScraper.new,
      Scrapers::OlxApartmentLinkScraper.new
    ]

    Services::ApartmentScraperService.new(scrapers: scrapers)
  end
end

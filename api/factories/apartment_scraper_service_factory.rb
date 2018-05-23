class ApartmentScraperServiceFactory < ServiceFactory
  key 'apartment_scraper_service'
  share true
  
  def create_service(dependencies)
    scrapers = [
      Scrapers::CustoJustoApartmentLinkScraper.new,
      Scrapers::ImovirtualApartmentLinkScraper.new,
      Scrapers::OlxApartmentLinkScraper.new
    ]

    ApartmentScraperService.new(scrapers: scrapers)
  end
end

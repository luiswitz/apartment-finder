require 'sidekiq-scheduler'

class ScrapApartments
  include Sidekiq::Worker

  def perform
    CustoJustoScraper.get_links
  end
end

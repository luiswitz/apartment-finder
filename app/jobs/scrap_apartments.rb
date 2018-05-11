# frozen_string_literal: true

require 'sidekiq-scheduler'

class ScrapApartments
  include Sidekiq::Worker

  def perform
    scraper = Scrapers::ApartmentLinkScraper.new(
      scrapers: [
        Scrapers::CustoJustoApartmentLinkScraper.new,
        Scrapers::ImovirtualApartmentLinkScraper.new,
        Scrapers::OlxApartmentLinkScraper.new
      ]
    )

    links = scraper.find_links

    links.map do |link|
      apartment_link = ApartmentLink.new(link: link)

      begin
        if apartment_link.save!
          TelegramBotApi.send_message(link)
          apartment_link.update(sent: true)
        end
      rescue
        next
      end
    end
  end
end

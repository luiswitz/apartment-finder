# frozen_string_literal: true

require 'sidekiq-scheduler'

class ScrapApartments
  include Sidekiq::Worker

  def perform
    scraper = Dependencies.new.get('apartment_scraper_service')
    telegram_bot = Dependencies.new.get('api.adapters.telegram_bot_adapter')

    links = scraper.find_links

    links.map do |link|
      apartment_link = ApartmentLink.new(link: link)

      begin
        if apartment_link.save!
          telegram_bot.send_message(apartment_link.link)
          apartment_link.update(sent: true)
        end
      rescue
        next
      end
    end
  end
end

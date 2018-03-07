require 'open-uri'

class CustoJustoScraper
  def self.get_links
    page = Nokogiri::HTML(open(CustoJustoApartment::LINK))
    links = CustoJustoApartment.format_results(page)

    links.map do |link|
      apartment_link = ApartmentLink.new(link: link)

      if apartment_link.save!
        TelegramBotApi.send_message(link)
        apartment_link.update(sent: true)
      end
    end
  end
end

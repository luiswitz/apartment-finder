require 'open-uri'

class CustoJustoScraper
  def self.get_links
    page = Nokogiri::HTML(open(CustoJusto::LINK))
    links = CustoJusto.format_results(page)

    links.map do |link|
      TelegramBotApi.send_message(link)
    end
  end
end

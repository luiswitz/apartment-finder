require 'open-uri'

class CustoJustoScraper
  def self.get_links
    page = Nokogiri::HTML(open(CustoJusto::LINK))
    CustoJusto.format_results(page)
  end
end

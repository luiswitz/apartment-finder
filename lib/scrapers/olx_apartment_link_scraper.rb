require 'open-uri'

module Scrapers
  class OlxApartmentLinkScraper
    URL = 'https://www.olx.pt/imoveis/apartamento-casa-a-venda/apartamentos-arrenda/porto/?search%5Bfilter_float_price%3Afrom%5D=300&search%5Bfilter_float_price%3Ato%5D=700&search%5Bfilter_enum_tipologia%5D%5B0%5D=t2&search%5Bdescription%5D=1'

    def initialize(html = nil)
      @html = html
    end

    def find_links
      page.search('.detailsLink').map do |link|
        link['href']
      end
    end

    attr_reader :html

    private

    def page
      return Nokogiri::HTML(html) if html

      Nokogiri::HTML(open(URL))
    end
  end
end


require 'open-uri'

module Scrapers
  class CustoJustoApartmentLinkScraper
    URL = 'https://www.custojusto.pt/porto/apartamentos-arrendar?ps=3&pe=6&ros=4&roe=5'

    def initialize(html = nil)
      @html = html
    end

    def get_links
      page.search('a[data-name="url"]').map do |link|
        link['href']
      end
    end

    attr_reader :html

    private

    def page
      if html 
        return Nokogiri::HTML(html)
      end

      Nokogiri::HTML(open(URL))
    end
  end
end

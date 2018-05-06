module Scrapers
  class ImovirtualApartmentLinkScraper
    URL = 'https://www.imovirtual.com/arrendar/apartamento/porto/?search' \
    '%5Bfilter_float_price%3Afrom%5D=200&search%5Bfilter_float_price%3Ato%5D=' \
    '650&search%5Bfilter_enum_rooms_num%5D%5B0%5D=1&search%5Bfilter_enum_rooms_num' \
    '%5D%5B1%5D=2&search%5Bdescription%5D=1'

    def initialize(html = nil)
      @html = html
    end

    def get_links
      page.search('a[data-tracking="click_body"]').map do |link|
        link['href']
      end
    end

    private

    def page
      if @html
        return Nokogiri::HTML(@html)
      end

      Nokogiri::HTML(open(URL))
    end
  end
end

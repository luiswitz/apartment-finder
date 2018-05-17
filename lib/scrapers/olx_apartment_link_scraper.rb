# frozen_string_literal: true

module Scrapers
  class OlxApartmentLinkScraper < ApartmentLinkScraperTemplate
    private

    def anchor_link
      '.detailsLink'
    end

    def url
      'https://www.olx.pt/imoveis/apartamento-casa-a-venda/apartamentos-arrenda/porto/?search%5Bfilter_float_price%3Afrom%5D=300&search%5Bfilter_float_price%3Ato%5D=700&search%5Bfilter_enum_tipologia%5D%5B0%5D=t2&search%5Bdescription%5D=1'
    end
  end
end

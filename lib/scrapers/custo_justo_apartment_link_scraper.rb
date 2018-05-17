# frozen_string_literal: true

module Scrapers
  class CustoJustoApartmentLinkScraper < ApartmentLinkScraperTemplate

    private

    def anchor_link
      'a[data-name="url"]'
    end

    def url
      'https://www.custojusto.pt/porto/apartamentos-arrendar?ps=3&pe=6&ros=4&roe=5'
    end
  end
end

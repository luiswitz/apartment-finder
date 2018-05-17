# frozen_string_literal: true

require 'open-uri'

module Scrapers
  class ApartmentLinkScraperTemplate
    def initialize(html = nil)
      @html = html
    end

    def find_links
      page.search(anchor_link).map do |link|
        link['href']
      end
    end

    private

    attr_reader :html

    def anchor_link
      raise Errors::AnchorLinkNotDefined
    end

    def url
      raise Errors::UrlNotDefined
    end

    def page
      if html
        return Nokogiri::HTML(html)
      end

      Nokogiri::HTML(open(url))
    end
  end
end

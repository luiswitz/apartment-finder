require 'rails_helper'

RSpec.describe Scrapers::ApartmentLinkScraper do
  let(:custom_scraper_1) { double(:custom_scraper_1) }
  let(:custom_scraper_2) { double(:custom_scraper_2) }

  let(:scrapers) do
    [
      custom_scraper_1,
      custom_scraper_2
    ]
  end

  subject { described_class.new(scrapers: scrapers) }

  let(:expected_links) { ['link-1', 'link-2'] }

  describe '#get_links' do
    it 'returns apartments links' do
      allow(custom_scraper_1).to receive(:get_links).and_return('link-1')
      allow(custom_scraper_2).to receive(:get_links).and_return('link-2')

      expect(subject.get_links).to eq(expected_links)
    end
  end
end

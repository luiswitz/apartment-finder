# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Services::ApartmentScraperService do
  let(:scraper1) { double('scraper') }
  let(:scraper2) { double('scraper') }

  subject do
    described_class.new(
      scrapers: [
        scraper1,
        scraper2
      ]
    )
  end

  describe '#find_links' do
    let(:expected_links) { %w[link1 link2] }

    it 'returns links' do
      allow(scraper1).to receive(:find_links)
        .and_return('link1')

      allow(scraper2).to receive(:find_links)
        .and_return('link2')

      expect(subject.find_links).to eq(expected_links)
    end
  end
end

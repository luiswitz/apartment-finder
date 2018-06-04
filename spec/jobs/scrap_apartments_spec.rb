# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ScrapApartments, type: :job do
  subject { described_class.new }

  describe '#perform' do
    it 'receives the scraper service' do
      expect(Dependencies).to receive(:get)
        .with('apartment_scraper_service')

    end
  end
end

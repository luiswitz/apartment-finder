# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ScrapApartments, type: :job do
  subject { described_class.new }

  let(:perform) { subject.perform }

  let(:apartment_scraper_service) do
    instance_double(Services::ApartmentScraperService)
  end

  before do
    allow_any_instance_of(Dependencies).to receive(:get)
      .with('apartment_scraper_service')
      .and_return(apartment_scraper_service)

    allow(apartment_scraper_service).to receive(:find_links)
      .and_return(['link'])
  end

  describe '#perform' do
    it 'calls find_links method' do
      subject.perform

      expect(apartment_scraper_service).to have_received(:find_links)
    end
  end
end

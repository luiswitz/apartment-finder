# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ScrapApartments, type: :job do
  subject { described_class.new }

  let(:perform) { subject.perform }

  let(:apartment_scraper_service) do
    instance_double(Services::ApartmentScraperService)
  end

  let(:telegram_bot) do
    instance_double(Adapters::TelegramBotAdapter)
  end

  before do
    allow_any_instance_of(Dependencies).to receive(:get)
      .with('apartment_scraper_service')
      .and_return(apartment_scraper_service)

    allow_any_instance_of(Dependencies).to receive(:get)
      .with('api.adapters.telegram_bot_adapter')
      .and_return(telegram_bot)

    allow(apartment_scraper_service).to receive(:find_links)
      .and_return(['link'])

    allow(telegram_bot).to receive(:send_message)
      .with('link')
  end

  describe '#perform' do
    it 'calls find_links method' do
      subject.perform

      expect(apartment_scraper_service).to have_received(:find_links)
    end

    it 'calls send_message method' do
      subject.perform

      expect(telegram_bot).to have_received(:send_message)
    end
  end
end

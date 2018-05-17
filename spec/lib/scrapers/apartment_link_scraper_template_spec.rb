# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Scrapers::ApartmentLinkScraperTemplate do
  subject { described_class.new }

  describe '#find_links' do
    it 'raises UrlNotDefined exception' do
      expect do
        subject.find_links
      end.to raise_error(Errors::UrlNotDefined)
    end
  end
end

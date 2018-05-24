require 'spec_helper'

RSpec.describe Dependencies do
  let(:apartment_scraper_service) { 'apartment_scraper_service' }

  it 'has dependency key' do
    expect(subject.defined?(apartment_scraper_service)).to be(true)
  end
end

require 'spec_helper'

RSpec.describe Dependencies do
  let(:apartment_factory_key) { 'apartment_factory_key' }

  it 'has dependency key' do
    expect(subject.defined?(apartment_factory_key)).to be_truthy
  end
end

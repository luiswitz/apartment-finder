require 'spec_helper'

RSpec.describe TelegramBotAdapterFactory do
  subject do
    described_class.new
  end

  let(:expected_key) { 'api.adapters.telegram_bot_adapter' }
  let(:dependencies) { double(:dependencies) }
  let(:expected_service) do
    Adapters::TelegramBotAdapter.new(
      token: 'the-token',
      chat_id: 'the-chat-id'
    )
  end

  let(:create_service) { subject.create_service(dependencies) }

  describe '#create_service' do
    before do
      allow(ENV).to receive(:[]).with('TELEGRAM_BOT_TOKEN')
        .and_return('the-token')


      allow(ENV).to receive(:[]).with('CHAT_ID')
        .and_return('the-chat-id')
    end

    it 'has the correct key' do
      expect(subject.dependency_key).to eq(expected_key)
    end

    it 'is shared' do
      expect(subject.shared?).to be(true)
    end

    it 'returns expected service' do
      expect(create_service).to be_equal_to(expected_service)
    end
  end
end

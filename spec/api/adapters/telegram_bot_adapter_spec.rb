require 'spec_helper'

RSpec.describe Adapters::TelegramBotAdapter do
  subject do
    described_class.new(
      telegram_bot_client: telegram_bot_client,
      token: token,
      chat_id: chat_id
    )
  end

  let(:telegram_bot_client) do
    class_double(Telegram::Bot::Client)
  end

  let(:token) { 'the-token' }
  let(:chat_id) { 123 }
  let(:bot) { double(:bot) }
  let(:message) { 'the-message' }

  describe '#send_message' do
    it 'calls bot api send_message' do
      allow(bot).to receive_message_chain(:api, :send_message)

      expect(telegram_bot_client).to receive(:run)
        .with(token).and_yield(bot)

      expect(bot).to receive_message_chain(:api, :send_message)
        .with(chat_id: chat_id, text: message)

      subject.send_message(message)
    end
  end
end

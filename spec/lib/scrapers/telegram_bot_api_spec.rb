require 'rails_helper'

RSpec.describe TelegramBotApi do
  subject { described_class }
  let(:token) { 'the-token' }
  let(:chat_id) { 'the-chat-id' }
  let(:message) { 'the-message' }

  describe '.send_message' do
    # TODO: improve this
    it 'calls the Telegram Bot Client' do
      subject::TOKEN = token
      subject::CHAT_ID = chat_id

      expect(Telegram::Bot::Client).to receive(:run).with(token)

      subject.send_message('message')
    end
  end
end

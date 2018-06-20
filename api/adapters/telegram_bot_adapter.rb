# frozen_string_literal: true

require 'telegram/bot'

module Adapters
  class TelegramBotAdapter
    def initialize(telegram_bot_client: Telegram::Bot::Client, token:, chat_id:)
      @telegram_bot_client = telegram_bot_client
      @token = token
      @chat_id = chat_id
    end

    def send_message(message)
      @telegram_bot_client.run(token) do |bot|
        bot.api.send_message(chat_id: chat_id, text: message)
      end
    end

    private

    attr_reader :token
    attr_reader :chat_id
  end
end

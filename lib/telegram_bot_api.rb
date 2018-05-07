# frozen_string_literal: true

require 'telegram/bot'

class TelegramBotApi
  TOKEN = ENV['TELEGRAM_BOT_TOKEN']
  CHAT_ID = ENV['CHAT_ID']

  def self.send_message(text)
    Telegram::Bot::Client.run(TOKEN) do |bot|
      bot.api.send_message(chat_id: CHAT_ID, text: text)
    end
  end
end

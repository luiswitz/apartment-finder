class TelegramBotAdapterFactory < ServiceFactory
  key 'api.adapters.telegram_bot_adapter' 
  share true

  def create_service(_dependencies)
    token = ENV['TELEGRAM_BOT_TOKEN'] 
    chat_id = ENV['CHAT_ID']

    Adapters::TelegramBotAdapter.new(
      token: token,
      chat_id: chat_id
    )
  end
end

module Services
  class TelegramSendMessageService
    def initialize(adapter:, storage:)
      @adapter = adapter
      @storage = storage
    end

    def send_message(message)
      @adapter.send_message(message) do
        @storage.save(message)
      end
    end
  end
end

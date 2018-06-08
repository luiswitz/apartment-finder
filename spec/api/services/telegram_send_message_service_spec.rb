require 'spec_helper'

RSpec.describe Services::TelegramSendMessageService do
  subject do
    described_class.new(adapter: adapter, storage: storage)
  end

  let(:message) { 'the-message' }
  let(:adapter) { double(:adapter) }
  let(:storage) { double(:storage) }

  describe '#send_message' do
    it 'delegates send message to the adapter' do
      allow(storage).to receive(:save)
        .with(message)
       
      expect(adapter).to receive(:send_message)
        .with(message).and_yield

      subject.send_message(message)
    end
    
    it 'saves the message' do
      allow(adapter).to receive(:send_message)
        .with(message).and_yield

      expect(storage).to receive(:save).with(message)

      subject.send_message(message)
    end
  end
end

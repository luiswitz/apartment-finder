require 'rails_helper'

RSpec.describe ScrapApartments, type: :job do
  include ActiveJob::TestHelper

  subject { described_class }

  let(:job) { subject.perform_later }

  describe '#perform' do
    it 'queues the job' do
      expect { job }.to have_enqueued_job(described_class)
    end

    it 'executes perform' do
      expect(subject).to receive(:perform)
      perform_enqueued_jobs { job }
    end
  end
end

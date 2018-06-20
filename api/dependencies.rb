# frozen_string_literal: true

require 'nurse'

class Dependencies < Nurse::DependencyContainer
  def initialize
    super
    add_factory(ApartmentScraperServiceFactory.new)
    add_factory(TelegramBotAdapterFactory.new)
  end
end

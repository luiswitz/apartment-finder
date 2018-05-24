# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ApartmentFinder
  class Application < Rails::Application
    config.active_job.queue_adapter = :sidekiq
    config.autoload_paths += %W[
      #{config.root}/lib
      #{config.root}/api/services
      #{config.root}/api/factories
      #{config.root}/api
    ]
  end
end

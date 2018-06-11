# frozen_string_literal: true

# load first
require 'api/factories/service_factory'

# adapters
require 'api/adapters/telegram_bot_adapter'

# services
require 'api/services/apartment_scraper_service'
require 'api/services/telegram_send_message_service'

# factories
require 'api/factories/apartment_scraper_service_factory'

require 'api/dependencies'

require_relative "boot"

require "rails/all"
require 'dotenv'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module UnicashBackoffice
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Time zone
    config.time_zone = 'Brasilia'
    config.active_record.default_timezone = :local

    # Load dotenv
    Dotenv.load
  end
end

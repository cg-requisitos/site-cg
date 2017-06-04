require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Cgsite
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.autoload_paths += %W(#{config.root}/lib)
    config.assets.enabled = true
    config.assets.version = '1.0'
    config.load_defaults 5.1
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.time_zone = 'Brasilia'
    config.beginning_of_week = :sunday
  end
end

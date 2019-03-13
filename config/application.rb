require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ApiGaruda
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
    config.time_zone = 'Tokyo'
    config.active_record.default_timezone = :local

    # eager load
    config.eager_load_paths.push("#{config.root}/app/apis")
    # config.eager_load_paths.push("#{config.root}/app/entities")
    # config.eager_load_paths.push("#{config.root}/app/errors")
    # config.eager_load_paths.push("#{config.root}/app/services")

  end
end

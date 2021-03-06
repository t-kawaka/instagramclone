require_relative 'boot'
require 'rails/all'

Bundler.require(*Rails.groups)

module Stamp
  class Application < Rails::Application
    config.load_defaults 5.1
    config.time_zone = 'Tokyo'
    config.active_record.default_timezone = :local
    I18n.config.available_locales = :ja
    I18n.default_locale = :ja
  end
end

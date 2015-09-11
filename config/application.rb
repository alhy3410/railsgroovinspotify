require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)
RSpotify::authenticate('de3133512e2340339060b63c1a0dd2b5', '5e8f1490211f43a68456d1ca01d5eb05')

module Railsgroovinspotify
  class Application < Rails::Application
    config.active_record.raise_in_transactional_callbacks = true
  end
end

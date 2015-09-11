require 'rspotify/oauth'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :spotify, 'de3133512e2340339060b63c1a0dd2b5', '5e8f1490211f43a68456d1ca01d5eb05', scope: 'user-read-email playlist-modify-public user-library-read user-library-modify'
end

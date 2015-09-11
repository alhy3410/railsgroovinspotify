class UsersController < ApplicationController
  def spotify
    spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
    hash = spotify_user.to_hash
    spotify_user = RSpotify::User.new(hash)
    cookies[:spotify_current_user] = { :value => spotify_user, :expires => 1.day.from_now }
  end
end

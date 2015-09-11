class UsersController < ApplicationController
  def spotify
    spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
    hash = spotify_user.to_hash
    user_hash = JSON.generate(hash)
    @playlists = spotify_user.playlists
    cookies[:spotify_current_user] = { :value => user_hash, :expires => 1.year.from_now }
  end
end

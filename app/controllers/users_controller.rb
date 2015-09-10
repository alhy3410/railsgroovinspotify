class UsersController < ApplicationController
  def spotify
    spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
    hash = spotify_user.to_hash
    playlist = spotify_user.create_playlist!('Groupin it up')
    binding.pry
  end
end

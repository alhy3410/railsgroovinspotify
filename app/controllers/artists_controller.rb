class ArtistsController < ApplicationController

 def index
   cookies[:spotify_current_user]
   spotify_user = RSpotify::User.new(hash)
   if !params[:artist_name].empty?
    @artists = RSpotify::Artist.search(params[:artist_name])
   else
    redirect_to root_path
   end
 end
 def show
  @artist = RSpotify::Artist.find(params[:id])
 end
end

Rails.application.routes.draw do
  root 'home#index'
  get '/search', to: 'artists#search'
  get '/artists', to: 'artists#index'
  get '/artists/:id', to:'artists#show', as: 'artist'
  get '/auth/spotify/callback', to: 'users#spotify'
  post '/playlists/addtrack', to: 'playlists#addtrack'
  resources :playlists
end

Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :songs
      resources :jukebox_lists
      resources :jukebox_list_songs
      resources :song_list_songs
      resources :song_lists
      resources :users
    end
  end
end

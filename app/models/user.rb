class User < ApplicationRecord
  has_secure_password
  
  has_many :song_lists
  has_many :jukebox_lists
  has_many :song_list_songs, through: :song_lists
  has_many :jukebox_list_songs, through: :jukebox_lists
end

class Song < ApplicationRecord
  has_many :song_list_songs
  has_many :jukebox_list_songs
  has_many :song_lists, through: :song_list_songs
  has_many :jukebox_lists, through: :jukebox_list_songs
end

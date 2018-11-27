class SongList < ApplicationRecord
  belongs_to :user
  has_many :song_list_songs
  has_many :songs, through: :song_list_songs
end

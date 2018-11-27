class JukeboxList < ApplicationRecord
  belongs_to :user
  has_many :jukebox_list_songs
  has_many :songs, through: :jukebox_list_songs
end

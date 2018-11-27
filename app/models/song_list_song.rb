class SongListSong < ApplicationRecord
  belongs_to :song_list
  belongs_to :song
end

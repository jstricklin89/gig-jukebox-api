class JukeboxListSong < ApplicationRecord
  belongs_to :jukebox_list
  belongs_to :song
end

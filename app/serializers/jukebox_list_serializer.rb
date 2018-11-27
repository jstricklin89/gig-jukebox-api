class JukeboxListSerializer < ActiveModel::Serializer
  attributes :id, :location, :user_id
  has_many :songs, through: :jukebox_list_songs
end

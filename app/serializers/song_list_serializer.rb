class SongListSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_id
  has_many :songs, through: :song_list_songs
end

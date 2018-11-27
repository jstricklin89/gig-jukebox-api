class SongSerializer < ActiveModel::Serializer
  attributes :id, :name, :genre, :artist
end

class CreateSongListSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :song_list_songs do |t|
      t.references :song_list, foreign_key: true
      t.references :song, foreign_key: true

      t.timestamps
    end
  end
end

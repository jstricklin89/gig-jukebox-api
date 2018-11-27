class CreateJukeboxListSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :jukebox_list_songs do |t|
      t.references :jukebox_list, foreign_key: true
      t.references :song, foreign_key: true

      t.timestamps
    end
  end
end

class CreateJukeboxLists < ActiveRecord::Migration[5.2]
  def change
    create_table :jukebox_lists do |t|
      t.string :location
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end

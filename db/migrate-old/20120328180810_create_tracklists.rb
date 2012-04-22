class CreateTracklists < ActiveRecord::Migration
  def change
    create_table :tracklists do |t|
      t.integer :album_id
      t.integer :track_id

      t.timestamps
    end
  end
end

class CreateTracks < ActiveRecord::Migration
  def up
    create_table :tracks do |t|
      t.string :title, :null => false, :limit => 255
      t.integer :album_id, :references => :albums
      t.integer :artist_id, :references => :artists
      t.integer :duration_in_seconds, :default => 0
      t.timestamps
    end
  end

  def down
    drop_table :tracks
  end
end

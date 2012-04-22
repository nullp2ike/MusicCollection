class CreateAlbums < ActiveRecord::Migration
  def up
    create_table :albums do |t|
      t.string :title, :null => false, :limit => 255
      t.integer :artist_id, :references => :artists
      t.integer :year, :limit => 4
      t.string :picture
      t.text :description  
      t.timestamps
    end
  end

  def down
    drop_table :albums
  end
end

class AddGenreToAlbums < ActiveRecord::Migration
  def up
    add_column :albums, :genre_id, :integer
  end
  def down
    remove_column :albums, :genre_id
  end
end

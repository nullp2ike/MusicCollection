class AddFormatToAlbums < ActiveRecord::Migration
  def up
    add_column :albums, :format_id, :integer
  end
  
  def down
    remove_column :albums, :format_id
  end
end

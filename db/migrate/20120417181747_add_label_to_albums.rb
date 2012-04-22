class AddLabelToAlbums < ActiveRecord::Migration
  def up
    add_column :albums, :label_id, :integer
  end
  def down
    remove_column :albums, :label_id
  end
end

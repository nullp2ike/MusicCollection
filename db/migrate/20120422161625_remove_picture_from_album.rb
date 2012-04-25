class RemovePictureFromAlbum < ActiveRecord::Migration
  def up
    remove_column :albums, :picture
      end

  def down
    add_column :albums, :picture, :string
  end
end

class AddPhotoRemoteUrlToAlbum < ActiveRecord::Migration
  def up
    add_column :albums, :photo_remote_url, :string

  end
  def down
    remove_column :albums, :photo_remote_url, :string

  end
end

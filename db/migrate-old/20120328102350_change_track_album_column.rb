class ChangeTrackAlbumColumn < ActiveRecord::Migration
  change_table :tracks do |t|
    t.rename :album, :album_id
  end
end

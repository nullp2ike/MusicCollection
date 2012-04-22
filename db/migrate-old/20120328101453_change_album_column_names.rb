class ChangeAlbumColumnNames < ActiveRecord::Migration
  change_table :albums do |t|
    t.rename :artist, :artist_id
    t.rename :label, :label_id
    t.rename :genre, :genre_id
    t.rename :format, :format_id
  end
end

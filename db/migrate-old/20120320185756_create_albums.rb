class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.integer :year
      t.string :picture
      t.string :description
      t.integer :artist
      t.integer :label
      t.integer :genre
      t.integer :format

      t.timestamps
    end
  end
end

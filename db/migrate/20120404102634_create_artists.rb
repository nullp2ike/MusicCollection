class CreateArtists < ActiveRecord::Migration
  def up
    create_table :artists do |t|
      t.string :name, :null => false, :limit => 255
      t.timestamps
    end
  end

  def down
    drop_table :artists
  end
end

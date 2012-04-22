class CreateGenres < ActiveRecord::Migration
  def up
    create_table :genres do |t|
      t.string :name, :null => false, :limit => 255
      t.timestamps
    end
  end
  def down
    drop_table :genres
  end
end

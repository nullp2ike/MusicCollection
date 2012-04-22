class CreateFormats < ActiveRecord::Migration
  def up
    create_table :formats do |t|
      t.string :name, :null => false, :limit => 255
      t.timestamps
    end
  end
  
  def down
    drop_table :formats
  end
end
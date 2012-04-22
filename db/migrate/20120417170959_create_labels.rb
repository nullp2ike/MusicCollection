class CreateLabels < ActiveRecord::Migration
  def up
    create_table :labels do |t|
      t.string :name, :null => false, :limit => 255
      t.timestamps
    end
  end
  
  def down
    drop_table :labels
  end
end

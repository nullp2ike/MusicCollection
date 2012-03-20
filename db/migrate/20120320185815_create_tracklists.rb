class CreateTracklists < ActiveRecord::Migration
  def change
    create_table :tracklists do |t|
      t.integer :album
      t.integer :tracknr
      t.string :trackname

      t.timestamps
    end
  end
end

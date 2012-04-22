class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.integer :album

      t.timestamps
    end
  end
end

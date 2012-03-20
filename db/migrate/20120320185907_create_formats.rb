class CreateFormats < ActiveRecord::Migration
  def change
    create_table :formats do |t|
      t.string :format

      t.timestamps
    end
  end
end

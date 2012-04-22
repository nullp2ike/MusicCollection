class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :username
      t.string :password
      t.string :email

      t.timestamps
    end
  end
end

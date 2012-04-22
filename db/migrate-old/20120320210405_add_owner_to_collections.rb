class AddOwnerToCollections < ActiveRecord::Migration
  def change
    add_column :collections, :owner, :integer

  end
end

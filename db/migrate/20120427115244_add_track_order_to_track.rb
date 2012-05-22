class AddTrackOrderToTrack < ActiveRecord::Migration
  def up
    add_column :tracks, :order_number, :integer
  end
  
  def down
    remove_column :tracks, :order_number, :integer
  end
end

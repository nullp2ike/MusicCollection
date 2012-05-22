class AddMinutesAndSecondsToTracks < ActiveRecord::Migration
  def up
    add_column :tracks, :minutes, :integer

    add_column :tracks, :seconds, :integer
  end
  
  def down
    remove_column :tracks, :minutes, :integer

    remove_column :tracks, :seconds, :integer
  end
end

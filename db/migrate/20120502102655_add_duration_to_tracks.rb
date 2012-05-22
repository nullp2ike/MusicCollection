class AddDurationToTracks < ActiveRecord::Migration
  def down
    remove_column :tracks, :duration, :datetime
      end

  def up
    add_column :tracks, :duration, :datetime
  end
end

class RemoveDurationInSecondsFromTracks < ActiveRecord::Migration
  def up
    remove_column :tracks, :duration_in_seconds, :integer
      end

  def down
    add_column :tracks, :duration_in_seconds, :integer
  end
end

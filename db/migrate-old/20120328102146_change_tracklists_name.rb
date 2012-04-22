class ChangeTracklistsName < ActiveRecord::Migration
  def change
          rename_table :tracklists, :tracks
  end
end

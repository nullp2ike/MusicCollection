class ChangeTrackNrColumn < ActiveRecord::Migration
  change_table :tracks do |t|
    t.rename :tracknr, :track_nr
    t.rename :trackname, :track_name
  end
end

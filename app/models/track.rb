class Track < ActiveRecord::Base
  belongs_to :artist
  belongs_to :album
  
  def default_artist
    album.artist
  end
end

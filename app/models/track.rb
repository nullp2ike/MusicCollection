class Track < ActiveRecord::Base
  validates :order_number,:title, :minutes, :seconds, presence: true
  belongs_to :artist
  belongs_to :album
    
  def artist_name
    artist ? artist.name : ''
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name) if name.present?
  end
end

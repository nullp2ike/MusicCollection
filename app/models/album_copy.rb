class Album < ActiveRecord::Base
  validates :title,:year,:picture,:description,:artist,:label,:genre,:format, presence: true
  has_many :genres
  has_many :formats 
  has_many :artists 
  has_many :labels
  has_many :tracklists
  
  belongs_to :artist
  
  def artist_list
    @artist_list ||= artists.collect{|a| a.name}.join(', ')
  end
  
  def artist_name
    artist ? artist.name : ''
  end
  <%= render :collection => @album.tracks.track_name %>
  #delegate :name, :age, :to => :artist, :prefix => 'artist', :allow_nil => true
end

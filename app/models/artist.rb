class Artist < ActiveRecord::Base
  has_many :albums
  has_many :tracks
  
  validates_presence_of :name
  validates_uniqueness_of :name
end

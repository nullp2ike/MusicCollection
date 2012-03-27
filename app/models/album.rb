class Album < ActiveRecord::Base
  validates :title,:year,:picture,:description,:artist,:label,:genre,:format, presence: true
  has_many :genres
  has_many :formats 
  has_many :artists 
  has_many :labels
  belongs_to :tracklists
end

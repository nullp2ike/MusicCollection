class Album < ActiveRecord::Base
  #validates :title,:year,:description,:artist_id,:label_id,:genre_id,:format_id, presence: true
  
  belongs_to :artist
  belongs_to :label
  belongs_to :genre
  belongs_to :format
  has_many :tracks

  accepts_nested_attributes_for :tracks, :reject_if => lambda { |a| a[:title].blank? }, :allow_destroy => true
  
  has_attached_file :photo,
  :url => "/assets/images/:id/:style/:basename.:extension",
  :path => ":rails_root/public/assets/images/:id/:style/:basename.:extension"
  
  validates_attachment_size :photo, :less_than => 1.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
  
  def artist_name
    artist ? artist.name : ''
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name) if name.present?
  end
  
  def label_name
    label ? label.name : ''
  end
  
  def label_name=(name)
    self.label = Label.find_or_create_by_name(name) if name.present?
  end
  
  def genre_name
    genre ? genre.name : ''
  end
  
  def genre_name=(name)
    self.genre = Genre.find_or_create_by_name(name) if name.present?
  end
  
  def format_name
    format ? format.name : ''
  end
  
  def format_name=(name)
    self.format = Format.find_or_create_by_name(name) if name.present?
  end
  
end

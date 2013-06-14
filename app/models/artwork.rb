class Artwork < ActiveRecord::Base
  attr_accessible :img_url, :length, :medium, :title, :width, :year, :category_id

  validates :title, :medium, :img_url, presence: true
  validates :length, :width, numericality: {greater_than_or_equal_to: 1}

  validates :img_url, allow_blank: false, format: { 
  	with: %r{\.(gif|jpg|png)$}i,
  	message: 'must be a URL for GIF, JPG or PNG image.'
  }

  mount_uploader :img_url, UpjerkUploader

  belongs_to :category
end

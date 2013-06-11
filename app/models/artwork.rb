class Artwork < ActiveRecord::Base
  attr_accessible :img_url, :length, :medium, :thumb_url, :title, :width, :year, :category_id

  belongs_to :category
end

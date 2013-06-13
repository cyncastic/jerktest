class Artwork < ActiveRecord::Base
  attr_accessible :img_url, :length, :medium, :title, :width, :year, :category_id

  mount_uploader :img_url, UpjerkUploader

  belongs_to :category
end

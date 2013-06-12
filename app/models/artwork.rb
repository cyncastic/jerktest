class Artwork < ActiveRecord::Base
  attr_accessible :img_url, :length, :medium, :thumb_url, :title, :width, :year, :category_id

  mount_uploader :img_url, UpjerkUploader
  mount_uploader :thumb_url, UpjerkUploader

  belongs_to :category
end

class Artwork < ActiveRecord::Base
  belongs_to :category
 
  attr_accessible :img_url, :length, :medium, :title, :width, :year, :category_id
  
  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h
  attr_accessible :crop_x, :crop_y, :crop_w, :crop_h
  after_update :crop_avatar

  validates :title, :medium, :img_url, :category_id, presence: true

  mount_uploader :img_url, UpjerkUploader

  def crop_avatar
    img_url.recreate_versions! if crop_x.present?
  end
end

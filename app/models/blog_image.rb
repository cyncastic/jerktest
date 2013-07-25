class BlogImage < ActiveRecord::Base
  attr_accessible :image

  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h
  attr_accessible :crop_x, :crop_y, :crop_w, :crop_h
  after_update :crop_avatar

  validates :image, presence: true

  mount_uploader :image, UpjerkUploader

  def crop_avatar
    img_url.recreate_versions! if crop_x.present?
  end
end
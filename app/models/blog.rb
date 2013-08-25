class Blog < ActiveRecord::Base
  attr_accessible :image, :post, :title, :posted

  validates :title, :post, :image, presence: true

  belongs_to :user

  mount_uploader :image, UpjerkblogUploader

end

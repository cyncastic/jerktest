class Blog < ActiveRecord::Base
  attr_accessible :image, :post, :title

  validates :title, :post, presence: true

  mount_uploader :image, JerkblogUploader

  belongs_to :user
end

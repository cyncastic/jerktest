class Blog < ActiveRecord::Base
  scope :descposted, order("blogs.posted DESC")


  attr_accessible :image, :post, :title, :posted

  validates :title, :post, :image, presence: true

  belongs_to :user

  mount_uploader :image, UpjerkblogUploader
  
  self.per_page = 5

end

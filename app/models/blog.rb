class Blog < ActiveRecord::Base
  attr_accessible :image, :post, :title, :posted

  validates :title, :post, presence: true

  belongs_to :user
end

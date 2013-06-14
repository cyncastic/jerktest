class Category < ActiveRecord::Base
  attr_accessible :colour, :hidden, :name

  validates :colour, :name, presence: true

  has_many :artworks
end

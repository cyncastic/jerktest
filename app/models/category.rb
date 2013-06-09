class Category < ActiveRecord::Base
  attr_accessible :colour, :hidden, :name

  has_many :artworks
end

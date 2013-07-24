class Category < ActiveRecord::Base
  attr_accessible :hidden, :name

  validates :name, presence: true

  has_many :artworks

  before_destroy :ensure_category_has_no_artwork

  private
  
  def ensure_category_has_no_artwork
  	if artworks.empty?
  		return true 
  	else
  		errors.add(:base, 'Line Items present')
  		return false
  	end
  end

end

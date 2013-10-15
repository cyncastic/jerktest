class PricelistController < ApplicationController
  skip_before_filter :authorize, only: [:index]
  def index
  	@artworks = Artwork.where(sold: [false, nil])
  end
end

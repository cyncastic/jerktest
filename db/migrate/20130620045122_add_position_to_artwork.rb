class AddPositionToArtwork < ActiveRecord::Migration
  def change
    add_column :artworks, :position, :integer
  end
end

class AddCategoryToArtwork < ActiveRecord::Migration
  def change
    add_column :artworks, :quantity, :integer
  end
end

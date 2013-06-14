class RemoveQuantityFromArtworks < ActiveRecord::Migration
  def change
  	remove_column :artworks, :quantity
  end
end

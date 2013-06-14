class RemoveThumbUrlFromArtworks < ActiveRecord::Migration
  def change
  	remove_column :artworks, :thumb_url
  end
end

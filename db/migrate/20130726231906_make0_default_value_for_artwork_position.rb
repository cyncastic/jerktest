class Make0DefaultValueForArtworkPosition < ActiveRecord::Migration
  def change
  	change_column :artworks, :position, :integer, default: 0
  end
end

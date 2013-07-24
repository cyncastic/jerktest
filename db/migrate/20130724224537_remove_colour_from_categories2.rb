class RemoveColourFromCategories2 < ActiveRecord::Migration
  def change
  	remove_column :categories, :colour
  end
end
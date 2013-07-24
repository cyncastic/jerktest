class RemoveColourFromCategories < ActiveRecord::Migration
  def create
  	remove_column :categories, :colour
  end
end
class ScrewyOneForHerokuSync < ActiveRecord::Migration
  def change
    remove_column :blogs, :image
    remove_column :blogs, :position
  end
end

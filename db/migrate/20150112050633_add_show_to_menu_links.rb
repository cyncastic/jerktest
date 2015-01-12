class AddShowToMenuLinks < ActiveRecord::Migration
  def change
    add_column :menu_links, :show, :boolean
  end
end

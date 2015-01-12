class CreateMenuLinks < ActiveRecord::Migration
  def change
    create_table :menu_links do |t|
      t.string :title
      t.string :url

      t.timestamps
    end
  end
end

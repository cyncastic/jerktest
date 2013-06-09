class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :colour
      t.boolean :hidden

      t.timestamps
    end
  end
end

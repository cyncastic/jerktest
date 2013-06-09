class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.string :title
      t.string :medium
      t.integer :length
      t.integer :width
      t.integer :year
      t.string :img_url
      t.string :thumb_url

      t.timestamps
    end
  end
end

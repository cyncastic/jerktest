class RenameUserToName < ActiveRecord::Migration
  def change
    create_table :user do |t|
      t.string :name
      t.text :password_digest

      t.timestamps
    end
  end
end

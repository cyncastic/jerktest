class CleanUpMyDatabse < ActiveRecord::Migration
  def change
    remove_column :blogs, :image
    remove_column :blogs, :position

    drop_table :jerkblogs
  end
end

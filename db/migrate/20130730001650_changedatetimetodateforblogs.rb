class Changedatetimetodateforblogs < ActiveRecord::Migration
  def change
    change_column :blogs, :posted, :date
  end
end

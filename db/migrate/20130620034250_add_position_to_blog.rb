class AddPositionToBlog < ActiveRecord::Migration
  def change
    add_column :blogs, :position, :integer
  end
end

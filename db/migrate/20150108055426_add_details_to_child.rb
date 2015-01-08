class AddDetailsToChild < ActiveRecord::Migration
  def change
    add_column :children, :center_id, :integer
  end
end

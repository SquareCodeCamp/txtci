class CreateCenters < ActiveRecord::Migration
  def change
    create_table :centers do |t|
      t.integer :center_id
      t.string :location

      t.timestamps null: false
    end
  end
end

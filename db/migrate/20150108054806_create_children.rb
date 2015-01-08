class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.integer :child_id
      t.string :name
      t.integer :sponsor_id

      t.timestamps null: false
    end
  end
end

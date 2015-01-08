class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.integer :sponsor_id
      t.string :name
      t.string :location
      t.integer :child_id

      t.timestamps null: false
    end
  end
end

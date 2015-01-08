class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :message_id
      t.string :type
      t.string :text
      t.integer :center_id
      t.integer :sponsor_id

      t.timestamps null: false
    end
  end
end

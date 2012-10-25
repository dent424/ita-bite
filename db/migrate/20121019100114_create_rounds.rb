class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.float :diameter
      t.float :length
      t.float :pieces
      t.integer :item_id
      t.date :order_date
      t.date :delivery_date
      t.string :material

      t.timestamps
    end
  end
end

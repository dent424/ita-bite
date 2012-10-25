class CreateSquares < ActiveRecord::Migration
  def change
    create_table :squares do |t|
      t.float :length
      t.float :width
      t.float :thickness
      t.integer :pieces
      t.integer :item_id
      t.date :order_date
      t.date :delivery_date
      t.string :material

      t.timestamps
    end
  end
end

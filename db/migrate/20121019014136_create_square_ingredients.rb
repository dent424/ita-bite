class CreateSquareIngredients < ActiveRecord::Migration
  def change
    create_table :square_ingredients do |t|
      t.integer :item_id
      t.float :length
      t.float :width
      t.float :thickness
      t.string :material
      t.integer :number
      t.date :order_date
      t.date :delivery_date

      t.timestamps
    end
  end
end

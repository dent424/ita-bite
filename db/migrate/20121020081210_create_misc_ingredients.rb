class CreateMiscIngredients < ActiveRecord::Migration
  def change
    create_table :misc_ingredients do |t|
      t.string :description
      t.date :order_date
      t.date :delivery_date
      t.string :material
      t.integer :item_id
      t.integer :pieces

      t.timestamps
    end
  end
end

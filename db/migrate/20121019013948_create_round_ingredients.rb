class CreateRoundIngredients < ActiveRecord::Migration
  def change
    create_table :round_ingredients do |t|
      t.integer :item_id
      t.float :length
      t.float :diameter
      t.string :material

      t.timestamps
    end
  end
end

class AddIngredientIdToChangees < ActiveRecord::Migration
  def change
  	add_column :changes, :ingredient_id, :integer
  	add_index :changes, :ingredient_id
  end
end

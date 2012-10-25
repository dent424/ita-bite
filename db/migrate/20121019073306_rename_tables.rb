class RenameTables < ActiveRecord::Migration
  def change
  	rename_table :round_ingredients, :roundIngredients
  	rename_table :square_ingredients, :squareIngredients
  end
end

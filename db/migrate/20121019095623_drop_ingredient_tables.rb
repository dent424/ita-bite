class DropIngredientTables < ActiveRecord::Migration
	def change
		drop_table :roundIngredients
		drop_table :squareIngredients
	end
end


class AddTotalToIngredient < ActiveRecord::Migration
  def change
  	add_column :ingredients, :total, :integer
  end
end

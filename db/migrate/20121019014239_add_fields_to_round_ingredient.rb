class AddFieldsToRoundIngredient < ActiveRecord::Migration
  def change
  	add_column :round_ingredients, :number, :integer
  	add_column :round_ingredients, :order_date, :date
  	add_column :round_ingredients, :delivery_date, :date
  end
end

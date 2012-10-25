class AddItemIdToOperations < ActiveRecord::Migration
  def change
  	add_column :operations, :item_id, :string
  end
end

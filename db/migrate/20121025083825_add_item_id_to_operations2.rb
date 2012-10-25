class AddItemIdToOperations2 < ActiveRecord::Migration
  def change
  	remove_column :operations, :item_id
    add_column :operations, :item_id, :integer
  end
end

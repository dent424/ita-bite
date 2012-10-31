class AddIdsToOperation < ActiveRecord::Migration
  def change
  	add_column :operations, :machine_id, :integer
  	add_column :operations, :employee_id, :integer
  end
end

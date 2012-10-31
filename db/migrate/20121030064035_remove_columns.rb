class RemoveColumns < ActiveRecord::Migration
	def change
		remove_column :operations, :name
		remove_column :operations, :worker
		add_column :operations, :approval_id, :integer
	end
end

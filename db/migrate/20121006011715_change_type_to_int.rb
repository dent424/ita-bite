class ChangeTypeToInt < ActiveRecord::Migration
	def down
		remove_column :changes, :type
	end
end

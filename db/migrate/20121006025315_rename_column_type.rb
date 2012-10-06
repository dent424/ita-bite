class RenameColumnType < ActiveRecord::Migration
	def change
		rename_column :changes, :type, :add_remove
	end
end

class ChangeTypeToInt2 < ActiveRecord::Migration
  def change
  		remove_column :changes, :type 
  end
end

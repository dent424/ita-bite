class AddBackTypeAsInt < ActiveRecord::Migration
  def change
  	add_column :changes, :type, :integer
  end
end

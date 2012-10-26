class AddTypeToMachine < ActiveRecord::Migration
  def change
  	add_column :machines, :machine_type, :string
  end
end

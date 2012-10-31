class DropEmployeeMachinesTable < ActiveRecord::Migration
  def change
  	drop_table :employee_machines
  end
end

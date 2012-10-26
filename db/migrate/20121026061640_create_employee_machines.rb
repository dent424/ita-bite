class CreateEmployeeMachines < ActiveRecord::Migration
  def change
    create_table :employee_machines do |t|
      t.integer :machine_id
      t.integer :employee_id

      t.timestamps
    end
  end
end

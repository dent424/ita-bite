class CreateApprovals < ActiveRecord::Migration
  def change
    create_table :approvals do |t|
      t.integer :employee_id
      t.integer :machine_id

      t.timestamps
    end
  end
end

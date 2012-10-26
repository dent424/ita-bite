class EmployeeMachine < ActiveRecord::Base
  belongs_to :machine
  belongs_to :employee
  attr_accessible :employee_id, :machine_id
end

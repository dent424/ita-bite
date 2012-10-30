class Machine < ActiveRecord::Base
  has_many :employee_machines
  has_many :employees, :through => :employee_machines
  attr_accessible :name, :notes, :machine_type, :employee_ids
end

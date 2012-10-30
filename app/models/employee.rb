class Employee < ActiveRecord::Base
  has_many :employee_machines
  has_many :machines, :through => :employee_machines
  attr_accessible :first_name, :last_name, :machine_ids
end

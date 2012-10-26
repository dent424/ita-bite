class Employee < ActiveRecord::Base
  has_many :employee_machines
  has_many :machines, :through => :employee_machine
  attr_accessible :first_name, :last_name
end

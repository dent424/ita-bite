class Machine < ActiveRecord::Base
  has_many :approvals, :dependent => :destroy
  has_many :employees, :through => :approvals
  attr_accessible :name, :notes, :machine_type, :employee_ids
end

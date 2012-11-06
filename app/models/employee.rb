class Employee < ActiveRecord::Base
  has_many :approvals, :dependent => :destroy
  has_many :machines, :through => :approvals
  attr_accessible :first_name, :last_name, :machine_ids
end

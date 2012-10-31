class Approval < ActiveRecord::Base
  belongs_to :machine
  belongs_to :employee
  has_many :operations
  has_many :items
  attr_accessible :employee_id, :machine_id
end

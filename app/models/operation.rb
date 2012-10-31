class Operation < ActiveRecord::Base
  attr_accessible :end, :notes, :start, :item_id, :machine_id, :employee_id, :approval_id
  belongs_to :item
  belongs_to :approval
end

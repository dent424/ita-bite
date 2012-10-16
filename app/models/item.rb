class Item < ActiveRecord::Base
  attr_accessible :blue_print_number, :completion, :job_id, :name, :pieces
  has_many :operations
  belongs_to :job
end

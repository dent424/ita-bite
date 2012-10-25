class Item < ActiveRecord::Base
  attr_accessible :blue_print_number, :completion, :job_id, :name, :pieces, :identification, :round_square
  has_many :operations
  has_many :rounds
  has_many :squares
  belongs_to :job
end

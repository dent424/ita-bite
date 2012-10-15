class Operation < ActiveRecord::Base
  attr_accessible :end, :name, :notes, :start, :worker
end

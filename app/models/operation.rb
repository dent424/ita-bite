class Operation < ActiveRecord::Base
  attr_accessible :end, :name, :notes, :start, :worker, :item_id
  belongs_to :item
end

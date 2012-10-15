class Change < ActiveRecord::Base
  belongs_to :ingredient
  attr_accessible :count, :total, :add_remove, :created_at

  after_initialize :init

  def init
  	self.add_remove ||=2
  end
end

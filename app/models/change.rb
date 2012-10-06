class Change < ActiveRecord::Base
  belongs_to :ingredient
  attr_accessible :count, :total, :add_remove, :created_at
end

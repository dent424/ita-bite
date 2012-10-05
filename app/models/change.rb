class Change < ActiveRecord::Base
  belongs_to :ingredient
  attr_accessible :count, :total, :type
end

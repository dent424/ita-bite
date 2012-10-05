class Ingredient < ActiveRecord::Base
  has_many :changes
  attr_accessible :measure1, :measure2, :measure3, :note
end

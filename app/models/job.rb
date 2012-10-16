class Job < ActiveRecord::Base
  attr_accessible :items_attributes, :actual, :billing, :client, :description, :in_date, :name, :target
  has_many :items
  accepts_nested_attributes_for :items, :allow_destroy => true
end

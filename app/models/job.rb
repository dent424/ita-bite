class Job < ActiveRecord::Base
  attr_accessible :actual, :billing, :client, :description, :in_date, :name, :target
  has_many :items
  accepts_nested_attributes_for :items
end

class Job < ActiveRecord::Base
  attr_accessible :actual, :billing, :client, :description, :in_date, :name, :target
end

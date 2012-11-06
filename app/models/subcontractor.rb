class Subcontractor < ActiveRecord::Base
  attr_accessible :name
  has_many :subcontracts, :dependent=>:destroy
  has_many :items, :through=>:subcontracts
end

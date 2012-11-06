class Subcontract < ActiveRecord::Base
  belongs_to :item
  belongs_to :subcontractor
  attr_accessible :estimated, :in, :item_id, :notes, :out, :subcontractor_id
end

class Round < ActiveRecord::Base
  attr_accessible :delivery_date, :diameter, :item_id, :length, :material, :order_date, :pieces
  belongs_to :item
end

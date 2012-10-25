class Square < ActiveRecord::Base
  attr_accessible :delivery_date, :item_id, :length, :material, :order_date, :pieces, :thickness, :width
  belongs_to :item
end

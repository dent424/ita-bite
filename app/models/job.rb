class Job < ActiveRecord::Base
  attr_accessible :items_attributes, :actual, :billing, :contact, :description, :in_date, :name, :target, :client_id
  belongs_to :client
  has_many :items
  accepts_nested_attributes_for :items, :allow_destroy => true

  UNRANSACKABLE_ATTRIBUTES = ["description", "created_at", "updated_at", "client_id", "client"]

  def self.ransackable_attributes auth_object = nil
    (column_names - UNRANSACKABLE_ATTRIBUTES) + _ransackers.keys
  end

end

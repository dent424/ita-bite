class Client < ActiveRecord::Base
  has_many :jobs
  attr_accessible :name

    UNRANSACKABLE_ATTRIBUTES = ["created_at", "updated_at", "id"]

  def self.ransackable_attributes auth_object = nil
    (column_names - UNRANSACKABLE_ATTRIBUTES) + _ransackers.keys
  end
end

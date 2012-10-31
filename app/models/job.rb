class Job < ActiveRecord::Base
  attr_accessible :items_attributes, :actual, :billing, :client, :description, :in_date, :name, :target, :client_id
  belongs_to :client
  has_many :items
  accepts_nested_attributes_for :items, :allow_destroy => true

  def self.search(search)
  	if search
  		where('name LIKE ?', "%#{search}%")
  	else
  		scoped
  	end
  end
end

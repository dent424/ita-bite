class AddIdentificationToItems < ActiveRecord::Migration
  def change
  	add_column :items, :identification, :integer
  end
end

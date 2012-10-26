class AddFirstAndLastNameToEmployee < ActiveRecord::Migration
  def change
  	remove_column :employees, :name
  	add_column :employees, :first_name, :string
  	add_column :employees, :last_name, :string
  end
end

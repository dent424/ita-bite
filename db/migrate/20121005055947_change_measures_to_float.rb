class ChangeMeasuresToFloat < ActiveRecord::Migration
  def up
  	change_column :ingredients, :measure1, :float
  	change_column :ingredients, :measure2, :float
  	change_column :ingredients, :measure3, :float 
  end

  def down
  	change_column :ingredients, :measure1, :integer 
  	change_column :ingredients, :measure2, :integer 
  	change_column :ingredients, :measure3, :integer 
  end
end

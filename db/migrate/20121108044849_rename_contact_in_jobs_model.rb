class RenameContactInJobsModel < ActiveRecord::Migration
  def change
  	remove_column :jobs, :client
  	add_column :jobs, :contact, :string
  end
end

class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :client
      t.string :billing
      t.text :description
      t.date :in_date
      t.date :target
      t.date :actual

      t.timestamps
    end
  end
end

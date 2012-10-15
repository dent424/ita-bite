class CreateOperations < ActiveRecord::Migration
  def change
    create_table :operations do |t|
      t.string :name
      t.string :worker
      t.text :notes
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end

class CreateChanges < ActiveRecord::Migration
  def change
    create_table :changes do |t|
      t.string :type
      t.integer :count
      t.integer :total

      t.timestamps
    end
  end
end

class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.integer :measure1
      t.integer :measure2
      t.integer :measure3
      t.text :note

      t.timestamps
    end
  end
end

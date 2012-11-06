class CreateSubcontracts < ActiveRecord::Migration
  def change
    create_table :subcontracts do |t|
      t.integer :subcontractor_id
      t.integer :item_id
      t.date :out
      t.date :in
      t.date :estimated
      t.text :notes

      t.timestamps
    end
  end
end

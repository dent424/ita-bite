class CreateMachines < ActiveRecord::Migration
  def change
    create_table :machines do |t|
      t.string :name
      t.text :notes

      t.timestamps
    end
  end
end

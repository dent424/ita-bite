class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.integer :pieces
      t.string :blue_print_number
      t.date :completion
      t.integer :job_id

      t.timestamps
    end
  end
end

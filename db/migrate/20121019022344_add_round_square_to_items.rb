class AddRoundSquareToItems < ActiveRecord::Migration
  def change
  	add_column :items, :round_square, :string
  end
end

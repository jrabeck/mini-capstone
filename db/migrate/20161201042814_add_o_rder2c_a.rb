class AddORder2cA < ActiveRecord::Migration[5.0]
  def change
  	add_column :carted_albums, :order_id, :integer
  end
end

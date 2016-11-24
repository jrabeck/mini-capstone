class AddId < ActiveRecord::Migration[5.0]
  def change
  	add_column :albums, :supplier_id, :integer
  end
end

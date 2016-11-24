class AddDescription < ActiveRecord::Migration[5.0]
  def change
  	add_column :albums, :description, :text
  end
end

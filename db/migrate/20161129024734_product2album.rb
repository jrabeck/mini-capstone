class Product2album < ActiveRecord::Migration[5.0]
  def change
  	rename_column :orders, :product_id, :album_id
  end
end

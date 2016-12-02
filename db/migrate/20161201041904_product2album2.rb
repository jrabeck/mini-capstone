class Product2album2 < ActiveRecord::Migration[5.0]
  def change
  	rename_column :carted_albums, :product_id, :album_id
  end
end

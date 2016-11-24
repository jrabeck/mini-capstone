class NewPriceDataType < ActiveRecord::Migration[5.0]
  def change
  	change_column :albums, :price, 'decimal USING CAST(price AS decimal)', precision: 4,scale: 2
  end
end

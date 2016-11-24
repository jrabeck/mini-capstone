class AddPriceToAlbums < ActiveRecord::Migration[5.0]
  def change
    add_column :albums, :price, :string
  end
end

class CreateCartedAlbums < ActiveRecord::Migration[5.0]
  def change
    create_table :carted_albums do |t|
      t.integer :product_id
      t.integer :user_id
      t.integer :quantity
      t.string :status

      t.timestamps
    end
  end
end

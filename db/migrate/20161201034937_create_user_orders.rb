class CreateUserOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :user_orders do |t|
      t.integer :order_id
      t.integer :user_id

      t.timestamps
    end
  end
end

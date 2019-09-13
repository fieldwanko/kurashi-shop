class CreateOrderDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :order_details do |t|
      t.integer :order_append_id
      t.integer :product_id
      t.integer :price
      t.integer :quantity

      t.timestamps
    end
  end
end

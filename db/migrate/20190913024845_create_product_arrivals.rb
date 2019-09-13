class CreateProductArrivals < ActiveRecord::Migration[5.2]
  def change
    create_table :product_arrivals do |t|
      t.integer :stock
      t.integer :product_id

      t.timestamps
    end
  end
end

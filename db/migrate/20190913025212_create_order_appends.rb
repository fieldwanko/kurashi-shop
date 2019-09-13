class CreateOrderAppends < ActiveRecord::Migration[5.2]
  def change
    create_table :order_appends do |t|
      t.string :name
      t.string :details_name
      t.string :postal_code
      t.text :address
      t.integer :total
      t.integer :pay
      t.string :status
      t.integer :user_id

      t.timestamps
    end
  end
end

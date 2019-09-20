class CreateUserRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :user_requests do |t|
      t.string :secret_key
      t.integer :quantity,default: 0
      t.integer :user_id
      t.integer :product_id

      t.timestamps
    end
  end
end

class CreatePresentAppends < ActiveRecord::Migration[5.2]
  def change
    create_table :present_appends do |t|
      t.string :name
      t.string :details_name
      t.string :postal_code
      t.text :address
      t.integer :total
      t.integer :pay
      t.integer :status
      t.integer :user_id
      t.integer :give_user_id
      t.integer :first_coupon
      t.integer :last_coupon

      t.timestamps
    end
  end
end

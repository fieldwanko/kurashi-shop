class CreateAddressMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :address_menus do |t|
      t.string :name
      t.string :details_name
      t.text :address
      t.string :postal_code
      t.integer :user_id

      t.timestamps
    end
  end
end

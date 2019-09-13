class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.integer :price
      t.text :content
      t.integer :sell_user_id
      t.integer :status,default: 1

      t.timestamps
    end
  end
end

class AddProductNumToPresentAppends < ActiveRecord::Migration[5.2]
  def change
    add_column :present_appends, :product_num, :integer
  end
end

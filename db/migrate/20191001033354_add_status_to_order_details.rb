class AddStatusToOrderDetails < ActiveRecord::Migration[5.2]
  def change
    add_column :order_details, :status, :integer
  end
end

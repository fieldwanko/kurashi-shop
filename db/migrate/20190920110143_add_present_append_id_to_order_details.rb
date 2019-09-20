class AddPresentAppendIdToOrderDetails < ActiveRecord::Migration[5.2]
  def change
    add_column :order_details, :present_append_id, :integer
  end
end

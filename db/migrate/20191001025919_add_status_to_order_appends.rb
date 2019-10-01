class AddStatusToOrderAppends < ActiveRecord::Migration[5.2]
  def change
    add_column :order_appends, :status, :integer
  end
end

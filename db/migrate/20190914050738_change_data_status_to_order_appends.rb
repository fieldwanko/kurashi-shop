class ChangeDataStatusToOrderAppends < ActiveRecord::Migration[5.2]
  def change
    change_column :order_appends, :status, :integer
  end
end

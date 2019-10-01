class RemoveStatusFromOrderAppends < ActiveRecord::Migration[5.2]
  def change
    remove_column :order_appends, :status, :integer
  end
end

class RemoveStatusFromPresentAppends < ActiveRecord::Migration[5.2]
  def change
    remove_column :present_appends, :status, :integer
  end
end

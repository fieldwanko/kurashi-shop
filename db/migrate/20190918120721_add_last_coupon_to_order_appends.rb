class AddLastCouponToOrderAppends < ActiveRecord::Migration[5.2]
  def change
    add_column :order_appends, :last_coupon, :integer
  end
end

class AddFirstCouponToOrderAppends < ActiveRecord::Migration[5.2]
  def change
    add_column :order_appends, :first_coupon, :integer
  end
end

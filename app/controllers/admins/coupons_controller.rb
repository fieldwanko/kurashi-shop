class Admins::CouponsController < ApplicationController

  def new
    @coupon = Coupon.new
    @users = User.all
    @coupon_users = @users.map(&:coupons)
    @coupons = Coupon.all.order(created_at: :desc)
  end

  def create
    details = OrderDetail.all
    appends = []
    details.each do |detail|
      if appends.push(detail.order_append).present?
        appends.push(detail.order_append)
      end
    end
    appends.compact!
    user = appends.pluck(:user_id).uniq
    coupon1 = Coupon.new
    coupon1.status = 0
    coupon1.user_id = user.sample
    coupon1.save

    coupon2 = Coupon.new
    coupon2.status = 1
    coupon2.user_id = user.sample
    coupon2.save

    coupon3 = Coupon.new
    coupon3.status = 2
    coupon3.user_id = user.sample
    coupon3.save
    flash[:notice] = "発行完了"

    redirect_to new_admins_coupon_path
  end


end

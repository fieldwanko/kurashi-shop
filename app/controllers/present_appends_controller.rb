class PresentAppendsController < ApplicationController
  before_action :authenticate_user!
  def show
    @present_append = PresentAppend.find(params[:id])
    @user = User.find(@present_append.user_id)
    @product = Product.find(@present_append.product_num)
    @request = UserRequest.where(product_id: @product.id,user_id: @user.id).first
    @coupons = current_user.coupons
  end

  def create
    present_append = PresentAppend.new(first_params)
    present_append.give_user_id = current_user.id
    present_append.save
    redirect_to present_append_path(present_append.id)
  end

  def update
    present_append = PresentAppend.find(params[:id])
    user = User.find(present_append.user_id)
    product = Product.find(present_append.product_num)
    request = UserRequest.where(product_id: product.id,user_id: user.id).first
    userName = user.first_name + user.last_name
    userDetail = user.details_first_name + user.details_last_name
    present_append.name = userName
    present_append.details_name = userDetail
    present_append.postal_code = user.postal_code
    present_append.address = user.address
    present_append.pay = params[:pay].to_i

    order_detail = present_append.order_details.build
    order_detail.product_id = product.id
    order_detail.price = product.price
    order_detail.quantity = request.quantity
    order_detail.status = 1
    order_detail.save

    present_append.update(coupon_params)
    coupon_codeA = present_append.first_coupon
    if coupon_codeA.nil?
    else
      present_append.update(total_params)
      couponA = Coupon.find(coupon_codeA)
      couponA.destroy
      if coupon_codeB = present_append.last_coupon
          coupon_codeB = present_append.last_coupon
          couponB = Coupon.find(coupon_codeB)
          couponB.destroy
      end
    end
    if present_append.save
       flash[:notice] = "購入完了"
       request.destroy
       redirect_to success_path
    else
      render :show
    end
  end

  private
    def total_params
      params.require(:present_append).permit(:total)
    end

    def first_params
      params.require(:present_append).permit(:total,:user_id,:product_num)
    end

    def coupon_params
      params.require(:present_append).permit(:first_coupon,:last_coupon)
    end



end

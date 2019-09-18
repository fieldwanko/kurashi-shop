class OrderAppendsController < ApplicationController

  def create
    order_append = OrderAppend.new(total_params)
    order_append.user_id = current_user.id
    order_append.save
    redirect_to order_append_path(order_append.id)
  end

  def show
    @order_append = OrderAppend.find(params[:id])
    @address_menus = current_user.address_menus
    @my_carts = current_user.carts
    @coupons = current_user.coupons
  end

  def update
    carts = Cart.where(user_id: current_user.id)
    order_append = OrderAppend.find(params[:id])
    if params[:address].to_i > 0
      order_append.name = AddressMenu.find(params[:address]).name
      order_append.details_name = AddressMenu.find(params[:address]).details_name
      order_append.postal_code = AddressMenu.find(params[:address]).postal_code
      order_append.address = AddressMenu.find(params[:address]).address
      order_append.status = 1
      order_append.user_id = AddressMenu.find(params[:address]).user_id
    else
      userName = current_user.first_name + current_user.last_name
      userDetail = current_user.details_first_name + current_user.details_last_name
      order_append.name = userName
      order_append.details_name = userDetail
      order_append.postal_code = current_user.postal_code
      order_append.address = current_user.address
      order_append.user_id = current_user.id
      order_append.status = 1
    end

    # if params[:coupon]
    #   coupon_codeA = params[:coupon].first
    #   coupon_codeB = prams[:coupon].last
    #   couponA = Coupon.find(coupon_codeA)
    #   couponB = Coupon.find(coupon_codeB)
    #   if couponA.status == "500円引き"
    #     order_append.price - 500
    #     couponA.destroy
    #   elsif couponB.status == "500円引き"
    #     order_append.price - 500
    #     couponB.destroy
    #   else
    #   end
    # end

    # if params[:coupon]
      



    carts.each do |cart|
      product = cart.product
      order_detail = order_append.order_details.build
      order_detail.product_id = cart.product.id
      order_detail.price = cart.product.price
      order_detail.quantity = cart.quantity
      order_detail.save
      product.product_arrival.stock -= order_detail.quantity.to_i
      product.save
      cart.destroy
    end
    order_append.pay = params[:pay].to_i
    order_append.save
    redirect_to success_path
  end

  private
    def total_params
      params.require(:order_append).permit(:total)
    end


end

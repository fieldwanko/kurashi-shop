class SellUsers::OrderDetailsController < ApplicationController
  def index
    @my_orders = OrderDetail.where(product_id: current_sell_user.products)
    @search = @my_orders.ransack(params[:q])
    @result = @search.result
    @order_append = OrderAppend.find(params[:id])
    @order_append = OrderAppend.update(params[:status])
  end


end

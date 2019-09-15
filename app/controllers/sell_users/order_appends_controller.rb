class SellUsers::OrderAppendsController < ApplicationController
  def index
    @my_orders = OrderDetail.where(product_id: current_sell_user.products)
    @search = @my_orders.ransack(params[:q])
    @result = @search.result
  end

  def update
    append = OrderAppend.find(params[:id])
    append.update(append_params)
    redirect_to sell_users_order_appends_path
  end

  private
    def append_params
     params.require(:order_append).permit(:status)
    end

end

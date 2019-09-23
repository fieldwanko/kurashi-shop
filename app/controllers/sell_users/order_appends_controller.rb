class SellUsers::OrderAppendsController < ApplicationController
  def index
    @products = Product.where(sell_user_id: current_sell_user.id)
    @details = []
    @products.each do |product|
      if product.order_details.where(present_append_id: nil).present?
        @details.push(product.order_details.where(present_append_id: nil))
      end
    end
    # @my_orders = @details.where(present_append_id: nil)
    # @my_orders = OrderDetail.where(product_id: current_sell_user.products)
    # @present_orders = OrderDetail.where(product_id: current_sell_user.products,present_append_id: true)
    # @search = @details.ransack(params[:q])
    # @result = @search.result
  end

  def update
    if append = OrderAppend.find(params[:id])
      append.update(append_params)
      flash[:notice] = "更新完了"
      redirect_to sell_users_order_appends_path
    else
      present = PresentAppend.find(params[:id])
      present.update(present_params)
      flash[:notice] = "更新完了"
      redirect_to sell_users_order_appends_path
    end
  end

  private
    def append_params
     params.require(:order_append).permit(:status)
    end

    def present_params
     params.require(:present_append).permit(:status)
    end

end

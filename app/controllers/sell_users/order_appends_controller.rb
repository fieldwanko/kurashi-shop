class SellUsers::OrderAppendsController < ApplicationController
  def index
    @products = Product.where(sell_user_id: current_sell_user.id)
    @details = []
    @products.each do |product|
      if product.order_details.where(present_append_id: nil).present?
        @details.push(product.order_details.where(present_append_id: nil))
      end
    end
  end

  def update
      append = OrderAppend.find(params[:id])
      append.update(append_params)
      flash[:notice] = "更新完了"
      redirect_to sell_users_order_appends_path
  end

  private
    def append_params
     params.require(:order_append).permit(:status)
    end

end

class SellUsers::PresentAppendsController < ApplicationController
  def index
    @products = Product.where(sell_user_id: current_sell_user.id)
    @details = []
    @products.each do |product|
      if product.order_details.where(order_append_id: nil).present?
        @details.push(product.order_details.where(order_append_id: nil))
      end
    end
  end

  def update
    append = PresentAppend.find(params[:id])
    append.update(present_params)
    flash[:notice] = "更新完了"
    redirect_to sell_users_present_appends_path
  end

  private
    def present_params
     params.require(:present_append).permit(:status)
    end

end

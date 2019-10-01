class SellUsers::OrderDetailsController < ApplicationController

  def update
    detail = OrderDetail.find(params[:id])
    detail.update(detail_params)
    flash[:notice] = "更新完了"
    redirect_to sell_users_order_appends_path
  end


  private
  def detail_params
    params.require(:order_detail).permit(:status)
  end




end

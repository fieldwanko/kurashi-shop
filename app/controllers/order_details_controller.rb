class OrderDetailsController < ApplicationController

  def index
    @order_appends = OrderAppend.where(user_id: current_user.id)
  end

end

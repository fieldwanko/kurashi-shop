class OrderDetailsController < ApplicationController
  before_action :authenticate_user!

  def index
    @order_appends = OrderAppend.where(user_id: current_user.id,pay: "代引き" || "銀行振込" || "クレジット決済").order(created_at: :desc)
    @receives = PresentAppend.where(user_id: current_user.id,pay: "銀行振込" || "クレジット決済").order(created_at: :desc)
    @gives = PresentAppend.where(give_user_id: current_user.id,pay: "銀行振込" || "クレジット決済").order(created_at: :desc)
  end

end

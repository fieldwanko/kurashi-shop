class OrderDetailsController < ApplicationController
  before_action :authenticate_user!

  def index
    @order_appends = OrderAppend.where(user_id: current_user.id,status: true).order(created_at: :desc)
    @receives = PresentAppend.where(user_id: current_user.id,status: true).order(created_at: :desc)
    @gives = PresentAppend.where(give_user_id: current_user.id,status: true).order(created_at: :desc)
  end

end

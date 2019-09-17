class Admins::SellUsersController < ApplicationController
  def index
    @sell_users = SellUser.all.order(created_at: :desc).page(params[:page]).per(20)
    @search = @sell_users.ransack(params[:q])
    @result = @search.result
  end

  def destroy
  end

  private
  def search_params
    params.require(:q).permit!
  end


end

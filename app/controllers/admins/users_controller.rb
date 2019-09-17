class Admins::UsersController < ApplicationController
  def index
    @users = User.all.order(created_at: :desc).page(params[:page]).per(20)
    @search = @users.ransack(params[:q])
    @result = @search.result
  end

  def destroy
  end

  private
  def search_params
    params.require(:q).permit!
  end
end

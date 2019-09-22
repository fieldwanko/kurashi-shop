class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_correct_user
  def show
    @user = User.find(params[:id])
    @user_appends = @user.order_appends
    @coupons = @user.coupons.pluck(:status)
  end

  def update
    user = User.find(params[:id])
    if user.update(user_params)
      flash[:notice] = "更新完了"
      redirect_to user_path(user.id)
    else
      @user = User.find(params[:id])
      @user_appends = @user.order_appends
      @coupons = @user.coupons.pluck(:status)
      render :show
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to root_path
  end

  def ensure_correct_user
    @user = User.find(params[:id])
    if @user.id != current_user.id
      redirect_to user_path(current_user.id)
    end
  end

  private
    def user_params
      params.require(:user).permit(:user_name,:postal_code,:address,:tel,:email)
    end
end

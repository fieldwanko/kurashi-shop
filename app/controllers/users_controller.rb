class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_appends = @user.order_appends
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to user_path(user.id)
  end

  def destroy
  end

  private
    def user_params
      params.require(:user).permit(:user_name,:postal_code,:address,:tel,:email)
    end
end

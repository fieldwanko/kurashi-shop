class UserRequestsController < ApplicationController
  before_action :authenticate_user!
  def index
    @user = User.find(params[:user_id])
    @requests = UserRequest.where(user_id: @user.id)
    @present_append = PresentAppend.new
  end

  def create
    @product = Product.find(params[:product_id])
    UserRequest.create(product_id: @product.id,user_id: current_user.id,quantity: 1)
    flash[:notice] = "欲しいものリスト追加完了"
    redirect_to user_user_requests_path(current_user.id, current_user.secret_key)
  end

  def destroy
    request = UserRequest.find(params[:id])
    request.destroy
    flash[:notice] = "削除完了"
    redirect_to user_path(current_user.id)

  end


end

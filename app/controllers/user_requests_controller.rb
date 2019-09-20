class UserRequestsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @requests = UserRequest.where(user_id: @user.id)
    @present_append = PresentAppend.new
  end

  def create
    @product = Product.find(params[:product_id])
    UserRequest.create(product_id: @product.id,user_id: current_user.id,quantity: 1)
    redirect_to user_user_requests_path(current_user.id, current_user.secret_key)
  end

  def destroy
  end


end

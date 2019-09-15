class CartsController < ApplicationController

  def show
    @my_carts = current_user.carts
    @order_append = OrderAppend.new
  end

  def create
    @product = Product.find(params[:product_id])
    @cart = current_cart(@product)
    @cart.product_id = @product.id
    @cart.user_id = current_user.id
    @cart.quantity += params[:cart][:quantity].to_i
    if @cart.quantity >= @product.product_arrival.stock
       @cart.quantity = @product.product_arrival.stock
    end
    @cart.save
    redirect_to user_path(current_user.id)
  end

  def update
    cart = Cart.find(params[:id])
    cart.update(cart_params)
    redirect_to user_carts_path(current_user.id)
  end

  def destroy
    cart = Cart.find_by(id: params[:id])
    cart.destroy
    redirect_to user_carts_path(current_user.id)
  end

  private
  def cart_params
    params.require(:cart).permit(:product_id,:quantity)
  end


end

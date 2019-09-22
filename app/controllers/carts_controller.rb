class CartsController < ApplicationController
  before_action :authenticate_user!

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
       flash[:notice] = "在庫の上限を超えたので、カート数量が上限数となります"
       @cart.save
       redirect_to products_path
    else
      @cart.save
      flash[:notice] = "カートに入れました"
      redirect_to products_path
    end
  end

  def update
    cart = Cart.find(params[:id])
    if cart.update(cart_params)
       flash[:notice] = "変更完了"
       redirect_to user_carts_path(current_user.id)
    else
      @my_carts = current_user.carts
      @order_append = OrderAppend.new
      render :show
    end
  end

  def destroy
    cart = Cart.find_by(id: params[:id])
    if cart.destroy
      flash[:notice] = "削除成功"
      redirect_to user_carts_path(current_user.id)
    else
      @my_carts = current_user.carts
      @order_append = OrderAppend.new
      render :show
    end
  end

  private
  def cart_params
    params.require(:cart).permit(:product_id,:quantity)
  end


end

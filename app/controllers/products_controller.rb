class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @sell_user = @product.sell_user
    @fee = 1.10
    @cart = Cart.new
    if @product.product_arrival.stock != 0
      @limit = []
      (1..@product.product_arrival.stock).each do |s|
        add_limit =[s,s]
        @limit.push(add_limit)
      end
    end
  end

end

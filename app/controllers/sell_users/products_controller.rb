class SellUsers::ProductsController < ApplicationController
  def index
    @products = Product.where(sell_user_id: current_sell_user.id)
  end

  def show
  end

  def new
    @product = Product.new
    @product.product_images.build
    @product.build_product_arrival
  end

  def create
    product = Product.new(product_params)
    product.sell_user_id = current_sell_user.id
    product.save
    redirect_to sell_users_products_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def product_params
      params.require(:product).permit(:title,:price,:content,product_images_product_images: [],product_arrival_attributes: [:stock])
    end
end

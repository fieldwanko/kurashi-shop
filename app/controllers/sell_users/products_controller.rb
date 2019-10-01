class SellUsers::ProductsController < ApplicationController
  before_action :ensure_correct_sell_user,only:[:edit]

  def index
    @my_products = Product.where(sell_user_id: current_sell_user.id)
    @products = @my_products.order(created_at: :desc).page(params[:page]).per(20)
    @search = @products.ransack(params[:q])
    @result = @search.result
  end

  def new
    @product = Product.new
    @product.product_images.build
    @product.build_product_arrival
  end

  def create
    @product = Product.new(product_params)
    @product.sell_user_id = current_sell_user.id
    if @product.save
      flash[:notice] = "商品を追加しました"
      redirect_to sell_users_products_path
    else
      # @product = Product.new
      # @product.product_images.build
      # @product.build_product_arrival
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = "更新完了"
      redirect_to sell_users_products_path
    else
      redirect_to edit_sell_users_product_path(@product.id)
    end
  end

  def destroy
  end

  def ensure_correct_sell_user
    @product = Product.find(params[:id])
    if @product.sell_user_id != current_sell_user.id
      flash[:notice] = "指定されたページは見つかりません"
      redirect_to sell_users_products_path
    end
  end

  private
    def product_params
      params.require(:product).permit(:title,:price,:content,product_images_product_images: [],product_arrival_attributes: [:stock])
    end

    def search_params
      params.require(:q).permit!
    end

end

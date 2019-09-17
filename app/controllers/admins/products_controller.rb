class Admins::ProductsController < ApplicationController
  def index
    @products = Product.all.order(created_at: :desc).page(params[:page]).per(20)
    @search = @products.ransack(params[:q])
    @result = @search.result
  end

  def destroy
  end

  private
  def search_params
    params.require(:q).permit!
  end

end

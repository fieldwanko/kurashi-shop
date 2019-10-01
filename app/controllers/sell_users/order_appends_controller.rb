class SellUsers::OrderAppendsController < ApplicationController
  def index
    @products = Product.where(sell_user_id: current_sell_user.id)
    @details = []
    @products.each do |product|
      if product.order_details.where(present_append_id: nil).present?
        @details.push(product.order_details.where(present_append_id: nil))
      end
    end
  end

end

class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters,if: :devise_controller?
  def after_sign_in_path_for(resource)
    case resource
      when User
        products_path
      when SellUser
        sell_users_products_path
      when Admin
        admins_users_path
    end
  end

  def after_sign_out_path_for(resource)
    case resource
      when :user
        products_path
      when :sell_user
        sell_item_path
      when :admin
        master_path
    end
  end

  def current_cart (product)
    if Cart.where(user_id: current_user.id).find_by(product_id: product.id)
      @cart = Cart.where(user_id: current_user.id).find_by(product_id: product.id)
    else
      @cart = Cart.create(user_id: current_user.id, product_id: product.id)
    end
  end





  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up,keys:[:shop_name,:user_name,:user_image_id,:first_name,:last_name,:details_first_name,:details_last_name,:postal_code,:address,:tel])
    end




end

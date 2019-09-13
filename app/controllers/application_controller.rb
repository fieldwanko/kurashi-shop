class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters,if: :devise_controller?
  def after_sign_in_path_for(resource)
    case resource
      when User
        products_path
      when SellUser
        sell_users_products_path
    end
  end

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up,keys:[:shop_name,:user_name,:user_image_id,:first_name,:last_name,:details_first_name,:details_last_name,:postal_code,:address,:tel])
    end




end

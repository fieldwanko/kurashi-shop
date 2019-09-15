class AddressMenusController < ApplicationController
  def new
    @user = User.find(current_user.id)
    @addresses = @user.address_menus
    @address = AddressMenu.new
  end

  def create
    user = User.find(current_user.id)
    address = AddressMenu.new(address_params)
    address.user_id = current_user.id
    address.save
    redirect_to new_user_address_menus_path(current_user.id)
  end

  def destroy
    address_menu = AddressMenu.find(params[:user_id])
    address_menu.destroy
    redirect_to new_user_address_menus_path(current_user.id)
  end

  private
    def address_params
      params.require(:address_menu).permit(:address,:postal_code,:name,:details_name)
    end

end

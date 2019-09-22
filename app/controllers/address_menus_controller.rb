class AddressMenusController < ApplicationController
  before_action :authenticate_user!
  def new
    @user = User.find(current_user.id)
    @addresses = @user.address_menus
    @address = AddressMenu.new
  end

  def create
    user = User.find(current_user.id)
    address = AddressMenu.new(address_params)
    address.user_id = current_user.id
    if address.save
      flash[:notice] = "作成成功"
      redirect_to new_user_address_menus_path(current_user.id)
    else
      @user = User.find(current_user.id)
      @addresses = @user.address_menus
      @address = AddressMenu.new
      render 'new'
    end
  end

  def destroy
    address_menu = AddressMenu.find(params[:user_id])
    if address_menu.destroy
      flash[:notice] = "削除しました"
      redirect_to new_user_address_menus_path(current_user.id)
    else
      @user = User.find(current_user.id)
      @addresses = @user.address_menus
      flash[:notice] = "正しい値を記載してください"
      render :new
    end
  end

  private
    def address_params
      params.require(:address_menu).permit(:address,:postal_code,:name,:details_name)
    end

end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :products,through: :carts
  has_many :carts,dependent: :destroy
  has_many :address_menus,dependent: :destroy
  has_many :order_appends, dependent: :destroy

  attachment :user_image


end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :products,through: :carts
  has_many :carts,dependent: :destroy
  has_many :address_menus,dependent: :destroy
  has_many :order_appends, dependent: :destroy
  has_many :coupons,dependent: :destroy
  has_many :user_requests,dependent: :destroy
  has_many :products,through: :user_requests

  attribute :secret_key, :string, default: SecureRandom.hex(10)

  validates :user_name,length:{ in:2..10 },presence: true,uniqueness: true
  validates :first_name,presence: true
  validates :last_name,presence: true
  validates :details_first_name,presence: true
  validates :details_last_name,presence: true
  validates :postal_code,length: { is:7 }
  validates :address,length: { in: 10..20 }
  validates :tel,length: {in: 10..15 }
  validates :email,presence: true,uniqueness: true



end

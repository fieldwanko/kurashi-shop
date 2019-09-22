class SellUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :products,dependent: :destroy


  validates :shop_name,presence: true
  validates :postal_code,length: { is:7 }
  validates :address,length: { in: 10..20 }
  validates :tel,length: {in: 10..15 }
  validates :email,presence:true,uniqueness: true


end

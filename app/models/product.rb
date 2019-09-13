class Product < ApplicationRecord

  has_many :carts,dependent: :destroy
  has_many :users,through: :carts
  has_many :order_details
  has_one :product_arrival,dependent: :destroy
  accepts_nested_attributes_for :product_arrival
  has_many :product_images,dependent: :destroy
  accepts_attachments_for :product_images,attachment: :product_image
  belongs_to :sell_user



end

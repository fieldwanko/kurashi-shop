class Product < ApplicationRecord

  has_many :carts,dependent: :destroy
  has_many :users,through: :carts
  has_many :order_details
  has_one :product_arrival,dependent: :destroy
  accepts_nested_attributes_for :product_arrival
  has_many :product_images,dependent: :destroy
  accepts_attachments_for :product_images,attachment: :product_image
  belongs_to :sell_user
  has_many :user_requests,dependent: :destroy
  has_many :users,through: :user_requests

  validates :title,presence: true
  validates :content,presence: true,length: { maximum:300 }
  validates :price,presence: true, numericality: { greater_than_or_equal_to: 0 }



end

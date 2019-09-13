class ProductImage < ApplicationRecord

  belongs_to :product
  attachment :product_image


end

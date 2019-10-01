class ProductArrival < ApplicationRecord

  belongs_to :product

  validates :stock,presence: true, numericality: { greater_than_or_equal_to: 1,less_than: 1000}


end

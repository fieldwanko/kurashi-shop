class OrderDetail < ApplicationRecord

  belongs_to :product
  belongs_to :order_append,optional: true
  belongs_to :present_append,optional: true


end

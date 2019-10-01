class OrderDetail < ApplicationRecord

  belongs_to :product
  belongs_to :order_append,optional: true
  belongs_to :present_append,optional: true


enum status: {
     配送準備中:1, 配送中:2, 配送済み:3, 問題が発生: 4
   }

end

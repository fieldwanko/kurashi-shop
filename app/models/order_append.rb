class OrderAppend < ApplicationRecord

  has_many :order_details
  belongs_to :user

  enum pay: {
    代引き:0, 銀行振込:1, クレジット決済: 2
  }



end

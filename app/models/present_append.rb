class PresentAppend < ApplicationRecord

  has_many :order_details
  belongs_to :user

  enum pay: {
    銀行振込:1, クレジット決済: 2
  }

  enum status: {
    配送準備中:1, 配送中:2, 配送済み:3, 問題が発生: 4
  }

end

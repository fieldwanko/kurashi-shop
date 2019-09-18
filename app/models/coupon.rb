class Coupon < ApplicationRecord

  belongs_to :user

  enum status: {
    "50%割引":0, "10%割引":1, "500円引き": 2
  }

end

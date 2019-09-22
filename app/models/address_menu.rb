class AddressMenu < ApplicationRecord

  belongs_to :user

  validates :name,presence: true
  validates :details_name,presence: true
  validates :postal_code,length: { is:7 }
  validates :address,length: { in: 10..20 }

end
